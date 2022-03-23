<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="yolo.lot.dto.*"%>

<%
	String jsonlot = (String)request.getAttribute("jsonlot");
	System.out.println(jsonlot);
%>
<!-- 추가css -->
<link rel="stylesheet" type="text/css"
	href="/Yolo/css_yolo/cssPlugin/bootstrap-datetimepicker.css" />
<link rel="stylesheet" type="text/css"
	href="/Yolo/css_yolo/cssView/Club/tagPlus.css" />
<link rel="stylesheet" type="text/css"
	href="/Yolo/css_yolo/cssView/lot/lotDetail.css" />

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

$(function(){
	 	var temp = '<%=jsonlot%>' ;
		var prop = jQuery.parseJSON(temp);
// 		alert(temp);

		// Custom options for map
		var options = {
			zoom : 30,
			mapTypeId : 'Styled',
			disableDefaultUI : true,
			mapTypeControlOptions : {
				mapTypeIds : [ 'Styled' ]
			}
		};
		var styles = [ {
			stylers : [ {
				hue : "#cccccc"
			}, {
				saturation : -100
			} ]
		}, {
			featureType : "road",
			elementType : "geometry",
			stylers : [ {
				lightness : 100
			}, {
				visibility : "simplified"
			} ]
		}, {
			featureType : "road",
			elementType : "labels",
			stylers : [ {
				visibility : "on"
			} ]
		}, {
			featureType : "poi",
			stylers : [ {
				visibility : "off"
			} ]
		} ];

		var newMarker = null;
		var markers = [];

		// custom infowindow object
		var infobox = new InfoBox({
			disableAutoPan : false,
			maxWidth : 202,
			pixelOffset : new google.maps.Size(-101, -285),
			zIndex : null,
			boxStyle : {
				background : "url('/Yolo/images/infobox-bg.png') no-repeat",
				opacity : 1,
				width : "202px",
				height : "245px"
			},
			closeBoxMargin : "28px 26px 0px 0px",
			closeBoxURL : "",
			infoBoxClearance : new google.maps.Size(1, 1),
			pane : "floatPane",
			enableEventPropagation : false
		});

		// function that adds the markers on map
		var addMarkers = function(prop, map) {
								var latlng = new google.maps.LatLng(
										prop.prop.position.lat, prop.prop.position.lng);
								var marker = new google.maps.Marker({
									position : latlng,
									map : map,
									icon : new google.maps.MarkerImage(
											'/Yolo/images/' + prop.prop.markerIcon,
											null, null, null,
											new google.maps.Size(36, 36)),
									draggable : false,
									animation : google.maps.Animation.DROP,
								});
								var infoboxContent = '<div class="infoW">'
										+ '<div class="propImg">'
										+ '<img src="/Yolo/upload/lot/' + prop.prop.image + '">'
										+ '<div class="propBg">'
										+ '<div class="propPrice">'
										+ prop.prop.price
										+ '</div>'
										+ '<div class="propType">'
										+ prop.prop.type
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '<div class="paWrapper">'
										+ '<div class="propTitle">'
										+ prop.prop.title
										+ '</div>'
										+ '<div class="propAddress">'
										+ prop.prop.address
										+ '</div>'
										+ '</div>'
										+ '<div class="clearfix"></div>'
										+ '<div class="infoButtons">'
										+ '<a class="btn btn-sm btn-round btn-gray btn-o closeInfo">Close</a>'										
										+ '</div>' + '</div>';

								google.maps.event.addListener(marker,'click', (function(marker) {
													return function() {
														infobox.setContent(infoboxContent);
														infobox.open(map,marker);
													}
												})(marker));

								$(document).on('click', '.closeInfo',
										function() {
											infobox.open(null, null);
										});

								markers.push(marker);
		}

		var map;
		var windowHeight;
		var windowWidth;
		var contentHeight;
		var contentWidth;
		var isDevice = true;

		// calculations for elements that changes size on window resize
		var windowResizeHandler = function() {
			windowHeight = window.innerHeight;
			windowWidth = $(window).width();
			contentHeight = windowHeight - $('#header').height();
			contentWidth = $('#content').width();

			$('#leftSide').height(contentHeight);
			$('.closeLeftSide').height(contentHeight);
			$('#wrapper').height(contentHeight);
			$('#mapView').height(contentHeight);
			$('#content').height(contentHeight);
			setTimeout(function() {
				$('.commentsFormWrapper').width(contentWidth);
			}, 300);

			if (map) {
				google.maps.event.trigger(map, 'resize');
			}

			// Add custom scrollbar for left side navigation
			if (windowWidth > 767) {
				$('.bigNav').slimScroll({
					height : contentHeight - $('.leftUserWraper').height()
				});
			} else {
				$('.bigNav').slimScroll({
					height : contentHeight
				});
			}
			if ($('.bigNav').parent('.slimScrollDiv').size() > 0) {
				$('.bigNav').parent().replaceWith($('.bigNav'));
				if (windowWidth > 767) {
					$('.bigNav').slimScroll({
						height : contentHeight - $('.leftUserWraper').height()
					});
				} else {
					$('.bigNav').slimScroll({
						height : contentHeight
					});
				}
			}

			// reposition of prices and area reange sliders tooltip
			var priceSliderRangeLeft = parseInt($(
					'.priceSlider .ui-slider-range').css('left'));
			var priceSliderRangeWidth = $('.priceSlider .ui-slider-range')
					.width();
			var priceSliderLeft = priceSliderRangeLeft
					+ (priceSliderRangeWidth / 2)
					- ($('.priceSlider .sliderTooltip').width() / 2);
			$('.priceSlider .sliderTooltip').css('left', priceSliderLeft);

			var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range')
					.css('left'));
			var areaSliderRangeWidth = $('.areaSlider .ui-slider-range')
					.width();
			var areaSliderLeft = areaSliderRangeLeft
					+ (areaSliderRangeWidth / 2)
					- ($('.areaSlider .sliderTooltip').width() / 2);
			$('.areaSlider .sliderTooltip').css('left', areaSliderLeft);
		}

		var repositionTooltip = function(e, ui) {
			var div = $(ui.handle).data("bs.tooltip").$tip[0];
			var pos = $.extend({}, $(ui.handle).offset(), {
				width : $(ui.handle).get(0).offsetWidth,
				height : $(ui.handle).get(0).offsetHeight
			});
			var actualWidth = div.offsetWidth;

			var tp = {
				left : pos.left + pos.width / 2 - actualWidth / 2
			}
			$(div).offset(tp);

			$(div).find(".tooltip-inner").text(ui.value);
		}

		windowResizeHandler();
		$(window).resize(function() {
			windowResizeHandler();
		});

		setTimeout(function() {
			$('body').removeClass('notransition');

			map = new google.maps.Map(document.getElementById('mapView'),
					options);
			var styledMapType = new google.maps.StyledMapType(styles, {
				name : 'Styled'
			});

			map.mapTypes.set('Styled', styledMapType);
			map.setCenter(new google.maps.LatLng(prop.prop.position.lat, prop.prop.position.lng));
			map.setZoom(18);

			if ($('#address').length > 0) {
				newMarker = new google.maps.Marker({
					position : new google.maps.LatLng(prop.prop.position.lat, prop.prop.position.lng),
					map : map,
					icon : new google.maps.MarkerImage(
							'/Yolo/images/marker-new.png', null, null,
							// new google.maps.Point(0,0),
							null, new google.maps.Size(36, 36)),
					draggable : true,
					animation : google.maps.Animation.DROP,
				});

				google.maps.event.addListener(newMarker, "mouseup", function(
						event) {
					var latitude = this.position.lat();
					var longitude = this.position.lng();
					$('#latitude').text(this.position.lat());
					$('#longitude').text(this.position.lng());
				});
			}

			addMarkers(prop, map);
		}, 300);

		if (!(('ontouchstart' in window) || window.DocumentTouch
				&& document instanceof DocumentTouch)) {
			$('body').addClass('no-touch');
			isDevice = false;
		}

		// Header search icon transition
		$('.search input').focus(function() {
			$('.searchIcon').addClass('active');
		});
		$('.search input').blur(function() {
			$('.searchIcon').removeClass('active');
		});

		// Notifications list items pulsate animation
		$('.notifyList a').hover(function() {
			$(this).children('.pulse').addClass('pulsate');
		}, function() {
			$(this).children('.pulse').removeClass('pulsate');
		});

		// Exapnd left side navigation
		var navExpanded = false;
		$('.navHandler, .closeLeftSide').click(function() {
			if (!navExpanded) {
				$('.logo').addClass('expanded');
				$('#leftSide').addClass('expanded');
				if (windowWidth < 768) {
					$('.closeLeftSide').show();
				}
				$('.hasSub').addClass('hasSubActive');
				$('.leftNav').addClass('bigNav');
				if (windowWidth > 767) {
					$('.full').addClass('m-full');
				}
				windowResizeHandler();
				navExpanded = true;
			} else {
				$('.logo').removeClass('expanded');
				$('#leftSide').removeClass('expanded');
				$('.closeLeftSide').hide();
				$('.hasSub').removeClass('hasSubActive');
				$('.bigNav').slimScroll({
					destroy : true
				});
				$('.leftNav').removeClass('bigNav');
				$('.leftNav').css('overflow', 'visible');
				$('.full').removeClass('m-full');
				navExpanded = false;
			}
		});

		// functionality for map manipulation icon on mobile devices
		$('.mapHandler')
				.click(
						function() {
							if ($('#mapView').hasClass('mob-min')
									|| $('#mapView').hasClass('mob-max')
									|| $('#content').hasClass('mob-min')
									|| $('#content').hasClass('mob-max')) {
								$('#mapView').toggleClass('mob-max');
								$('#content').toggleClass('mob-min');
							} else {
								$('#mapView').toggleClass('min');
								$('#content').toggleClass('max');
							}

							setTimeout(
									function() {
										var priceSliderRangeLeft = parseInt($(
												'.priceSlider .ui-slider-range')
												.css('left'));
										var priceSliderRangeWidth = $(
												'.priceSlider .ui-slider-range')
												.width();
										var priceSliderLeft = priceSliderRangeLeft
												+ (priceSliderRangeWidth / 2)
												- ($(
														'.priceSlider .sliderTooltip')
														.width() / 2);
										$('.priceSlider .sliderTooltip').css(
												'left', priceSliderLeft);

										var areaSliderRangeLeft = parseInt($(
												'.areaSlider .ui-slider-range')
												.css('left'));
										var areaSliderRangeWidth = $(
												'.areaSlider .ui-slider-range')
												.width();
										var areaSliderLeft = areaSliderRangeLeft
												+ (areaSliderRangeWidth / 2)
												- ($(
														'.areaSlider .sliderTooltip')
														.width() / 2);
										$('.areaSlider .sliderTooltip').css(
												'left', areaSliderLeft);

										if (map) {
											google.maps.event.trigger(map,
													'resize');
										}

										$('.commentsFormWrapper').width(
												$('#content').width());
									}, 300);

						});

		// Expand left side sub navigation menus
		$(document).on(
				"click",
				'.hasSubActive',
				function() {
					$(this).toggleClass('active');
					$(this).children('ul').toggleClass('bigList');
					$(this).children('a').children('.arrowRight').toggleClass(
							'fa-angle-down');
				});

		if (isDevice) {
			$('.hasSub').click(function() {
				$('.leftNav ul li').not(this).removeClass('onTap');
				$(this).toggleClass('onTap');
			});
		}

		// functionality for custom dropdown select list
		$('.dropdown-select li a').click(
				function() {
					if (!($(this).parent().hasClass('disabled'))) {
						$(this).prev().prop("checked", true);
						$(this).parent().siblings().removeClass('active');
						$(this).parent().addClass('active');
						$(this).parent().parent().siblings('.dropdown-toggle')
								.children('.dropdown-label').html(
										$(this).text());
					}
				});

		$('.priceSlider')
				.slider(
						{
							range : true,
							min : 0,
							max : 2000000,
							values : [ 500000, 1500000 ],
							step : 10000,
							slide : function(event, ui) {
								$('.priceSlider .sliderTooltip .stLabel')
										.html(
												'$'
														+ ui.values[0]
																.toString()
																.replace(
																		/(\d)(?=(\d\d\d)+(?!\d))/g,
																		"$1,")
														+ ' <span class="fa fa-arrows-h"></span> '
														+ '$'
														+ ui.values[1]
																.toString()
																.replace(
																		/(\d)(?=(\d\d\d)+(?!\d))/g,
																		"$1,"));
								var priceSliderRangeLeft = parseInt($(
										'.priceSlider .ui-slider-range').css(
										'left'));
								var priceSliderRangeWidth = $(
										'.priceSlider .ui-slider-range')
										.width();
								var priceSliderLeft = priceSliderRangeLeft
										+ (priceSliderRangeWidth / 2)
										- ($('.priceSlider .sliderTooltip')
												.width() / 2);
								$('.priceSlider .sliderTooltip').css('left',
										priceSliderLeft);
							}
						});
		$('.priceSlider .sliderTooltip .stLabel').html(
				'$'
						+ $('.priceSlider').slider('values', 0).toString()
								.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")
						+ ' <span class="fa fa-arrows-h"></span> '
						+ '$'
						+ $('.priceSlider').slider('values', 1).toString()
								.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
		var priceSliderRangeLeft = parseInt($('.priceSlider .ui-slider-range')
				.css('left'));
		var priceSliderRangeWidth = $('.priceSlider .ui-slider-range').width();
		var priceSliderLeft = priceSliderRangeLeft
				+ (priceSliderRangeWidth / 2)
				- ($('.priceSlider .sliderTooltip').width() / 2);
		$('.priceSlider .sliderTooltip').css('left', priceSliderLeft);

		$('.areaSlider')
				.slider(
						{
							range : true,
							min : 0,
							max : 20000,
							values : [ 5000, 10000 ],
							step : 10,
							slide : function(event, ui) {
								$('.areaSlider .sliderTooltip .stLabel')
										.html(
												ui.values[0]
														.toString()
														.replace(
																/(\d)(?=(\d\d\d)+(?!\d))/g,
																"$1,")
														+ ' Sq Ft'
														+ ' <span class="fa fa-arrows-h"></span> '
														+ ui.values[1]
																.toString()
																.replace(
																		/(\d)(?=(\d\d\d)+(?!\d))/g,
																		"$1,")
														+ ' Sq Ft');
								var areaSliderRangeLeft = parseInt($(
										'.areaSlider .ui-slider-range').css(
										'left'));
								var areaSliderRangeWidth = $(
										'.areaSlider .ui-slider-range').width();
								var areaSliderLeft = areaSliderRangeLeft
										+ (areaSliderRangeWidth / 2)
										- ($('.areaSlider .sliderTooltip')
												.width() / 2);
								$('.areaSlider .sliderTooltip').css('left',
										areaSliderLeft);
							}
						});
		$('.areaSlider .sliderTooltip .stLabel').html(
				$('.areaSlider').slider('values', 0).toString().replace(
						/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")
						+ ' Sq Ft'
						+ ' <span class="fa fa-arrows-h"></span> '
						+ $('.areaSlider').slider('values', 1).toString()
								.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")
						+ ' Sq Ft');
		var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range')
				.css('left'));
		var areaSliderRangeWidth = $('.areaSlider .ui-slider-range').width();
		var areaSliderLeft = areaSliderRangeLeft + (areaSliderRangeWidth / 2)
				- ($('.areaSlider .sliderTooltip').width() / 2);
		$('.areaSlider .sliderTooltip').css('left', areaSliderLeft);

		

		$('.handleFilter').click(function() {
			$('.filterForm').slideToggle(200);
		});

		//Enable swiping
		$(".carousel-inner").swipe(
				{
					swipeLeft : function(event, direction, distance, duration,
							fingerCount) {
						$(this).parent().carousel('next');
					},
					swipeRight : function() {
						$(this).parent().carousel('prev');
					}
				});

		$(".carousel-inner .card").click(function() {
			window.open($(this).attr('data-linkto'), '_self');
		});

		$('#content').scroll(function() {
			if ($('.comments').length > 0) {
				var visible = $('.comments').visible(true);
				if (visible) {
					$('.commentsFormWrapper').addClass('active');
				} else {
					$('.commentsFormWrapper').removeClass('active');
				}
			}
		});

		$('.btn').click(
				function() {
					if ($(this).is('[data-toggle-class]')) {
						$(this).toggleClass(
								'active ' + $(this).attr('data-toggle-class'));
					}
				});

		$('.tabsWidget .tab-scroll').slimScroll({
			height : '235px',
			size : '5px',
			position : 'right',
			color : '#939393',
			alwaysVisible : false,
			distance : '5px',
			railVisible : false,
			railColor : '#222',
			railOpacity : 0.3,
			wheelStep : 10,
			allowPageScroll : true,
			disableFadeOut : false
		});

		$('.progress-bar[data-toggle="tooltip"]').tooltip();
		$('.tooltipsContainer .btn').tooltip();

		$("#slider1").slider({
			range : "min",
			value : 50,
			min : 1,
			max : 100,
			slide : repositionTooltip,
			stop : repositionTooltip
		});
		$("#slider1 .ui-slider-handle:first").tooltip({
			title : $("#slider1").slider("value"),
			trigger : "manual"
		}).tooltip("show");

		$("#slider2").slider({
			range : "max",
			value : 70,
			min : 1,
			max : 100,
			slide : repositionTooltip,
			stop : repositionTooltip
		});
		$("#slider2 .ui-slider-handle:first").tooltip({
			title : $("#slider2").slider("value"),
			trigger : "manual"
		}).tooltip("show");

		$("#slider3").slider({
			range : true,
			min : 0,
			max : 500,
			values : [ 190, 350 ],
			slide : repositionTooltip,
			stop : repositionTooltip
		});
		$("#slider3 .ui-slider-handle:first").tooltip({
			title : $("#slider3").slider("values", 0),
			trigger : "manual"
		}).tooltip("show");
		$("#slider3 .ui-slider-handle:last").tooltip({
			title : $("#slider3").slider("values", 1),
			trigger : "manual"
		}).tooltip("show");

		$('#autocomplete').autocomplete(
				{
					source : [ "ActionScript", "AppleScript", "Asp", "BASIC",
							"C", "C++", "Clojure", "COBOL", "ColdFusion",
							"Erlang", "Fortran", "Groovy", "Haskell", "Java",
							"JavaScript", "Lisp", "Perl", "PHP", "Python",
							"Ruby", "Scala", "Scheme" ],
					focus : function(event, ui) {
						var label = ui.item.label;
						var value = ui.item.value;
						var me = $(this);
						setTimeout(function() {
							me.val(value);
						}, 1);
					}
				});

		$('#tags').tagsInput({
			'height' : 'auto',
			'width' : '100%',
			'defaultText' : 'Add a tag',
		});

		$('#datepicker').datepicker();

		// functionality for autocomplete address field
		if ($('#address').length > 0) {
			var address = document.getElementById('address');
			var addressAuto = new google.maps.places.Autocomplete(address);

			google.maps.event.addListener(addressAuto, 'place_changed',
					function() {
						var place = addressAuto.getPlace();

						if (!place.geometry) {
							return;
						}
						if (place.geometry.viewport) {
							map.fitBounds(place.geometry.viewport);
						} else {
							map.setCenter(place.geometry.location);
						}
						newMarker.setPosition(place.geometry.location);
						newMarker.setVisible(true);
						$('#latitude').text(newMarker.getPosition().lat());
						$('#longitude').text(newMarker.getPosition().lng());

						return false;
					});
		}

		$('input, textarea').placeholder();
	

		
		$('#lotsearch').click(function(){
			if( $('#datepicker').val() == null || $('#datepicker').val() == "") 
			{
			   alert("날짜를 선택하세요.");
		    }else if( $('#gugun option:selected').val() == null ||  $('#gugun option:selected').val() == ""){
		    	alert("구/군을 선택하세요.");
		    }else{
		    	$('#frm').submit();
		    }
			
		});
	    
	});//end of function

</script>


<div class="singleTop">
	<div id="carouselFull" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselFull" data-slide-to="0" class="active"></li>
			<li data-target="#carouselFull" data-slide-to="1"></li>
			<li data-target="#carouselFull" data-slide-to="2"></li>
			<li data-target="#carouselFull" data-slide-to="3"></li>
		</ol>

		<!------------- 슬라이더로 사진, 상세사진 보여주기 --------------------->
		<div class="carousel-inner">
			<div  class="item active">
				<img id="sliderimage" src="/Yolo/upload/lot/${list.priimg_name}" alt="First slide">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div  class="item">
				<img id="sliderimage" src="/Yolo/images_yolo/lot/2-1.PNG" alt="Second slide">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div  class="item">
				<img id="sliderimage" src="/Yolo/images_yolo/lot/2-2.PNG" alt="Third slide">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div  class="item">
				<img id="sliderimage" src="/Yolo/images_yolo/lot/2-3.PNG" alt="Fourth slide">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#carouselFull" role="button"
			data-slide="prev"><span class="fa fa-chevron-left"></span></a> <a
			class="right carousel-control" href="#carouselFull" role="button"
			data-slide="next"><span class="fa fa-chevron-right"></span></a>
	</div>

	<!------------- 상세정보, 해시태그 --------------------->
	<div class="summary">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-8">
				<div class="summaryItem">
					<h1 class="pageTitle" id="lot_title">
						${list.pri_title}&nbsp;
						<%
							int bmcheck = (int)request.getAttribute("bmcheck");
							if(bmcheck==0){%>
								<span id="bookmark" class="fa fa-heart-o"></span>
							<%}else{%>
								<span id="bookmark" class="fa fa-heart"></span>
							<%}%>
					</h1>
					<strong style="margin-top: 0px; font-size: 25px;">${list.pri_weekprice}</strong>
					<span class="booktype">/${list.pri_booktype}</span>
					<div class="address">
						<span class="icon-pointer"></span>${list.pri_addr}
					</div>
					<!-- 해시태그  부분-->
					<%
								LotListVO lotlistVO = (LotListVO)request.getAttribute("list");
								String str = lotlistVO.getPri_tag();
								StringTokenizer st = new StringTokenizer(str,",");
								while(st.hasMoreTokens() ) 
								{   %>

					<ul class="tags">
						<li><span style="cursor: pointer;"><%= st.nextToken() %></span></li>
					</ul>


					<% 	} %>

					<!-- 해시태그 부분 끝 -->

				</div>
			</div>

			<div id="reservation">

				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">



					<div class="mainFunction summaryItem">
						<div class="clearfix"></div>
						<a data-toggle="modal" href="#contactAgent"
							class="btn btn-lg btn-round btn-green contactBtn chat_in">문의하기</a> <a
							href="/Yolo/lot/LotReserve.lot?pri_num=${list.pri_num}"
							class="btn btn-lg btn-round btn-green applyBtn">예약하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<div class="description">
	<h3>공간소개</h3>
	<div style="font-size: 15px;">${list.pri_content}</div>
</div>

<!------------- 편의시설 항목들 --------------------->
<div class="amenities">
	<h3>편의시설</h3>
	<div class="row">
		<%
								
								String f = lotlistVO.getPri_facility();
								StringTokenizer st2 = new StringTokenizer(f,",");
						        String icon = null;
						        String fac[]={"TV/프로젝터", "인터넷/WIFI","복사/인쇄기","화이트보드","음향/마이크","취사시설","음식물반입가능","주류반입가능",
						        		"주차", "금연","PC/노트북","의자/테이블"};
						        String confirm = st2.nextToken();
						        for( int i=0; i<fac.length; i++ ){
									switch(fac[i]){
									  case "TV/프로젝터" : icon="fa-film"; break;
									  case "인터넷/WIFI" : icon="fa-wifi"; break;
									  case "복사/인쇄기" : icon="fa-print"; break;
									  case "화이트보드" : icon="fa-square-o"; break;
									  case "음향/마이크" : icon="fa-microphone"; break;
									  case "취사시설" : icon="fa-cutlery"; break;
									  case "음식물반입가능" : icon="fa-shopping-cart"; break;
									  case "주류반입가능" : icon="fa-beer"; break;
									  case "주차" : icon="fa-automobile"; break;
									  case "금연" : icon="fa-arrows-v"; break;
									  case "PC/노트북" : icon="fa-laptop"; break;
									  case "의자/테이블" : icon="fa-users"; break;		  
									} //End of switch
									
									if(fac[i].equals(confirm)){%>
		<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
			<span class="fa <%=icon%>"></span><%= fac[i] %>
		</div>
		<%
										if(st2.hasMoreTokens()){
											confirm = st2.nextToken();
										} //End of if
									
									}else {%>

		<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
			<span class="fa <%=icon%>"></span><%= fac[i] %>
		</div>

		<%	}//End of else
						        	
								}//End of for %>
	</div>
</div>
<!------------- 편의시설 항목들 끝--------------------->

<!------------- 후기 작성하기 --------------------->
<div id="comments" class="comments">
	<h3>후기작성</h3>

	<div class="comment" style="height: 700px;">

		<!-- 후기list -->
		<div id="ReviewList" class="col-md-11">
			<% List<PostscriptVO> review = (List<PostscriptVO>)request.getAttribute("review");
		   for(PostscriptVO pvo : review)	{				
		%>

			<div class="row commentContent"
				style="margin-bottom: 7px; padding: 10px;">
    
                   	<!-- 아이디 -->
                   <div style="font-size: 15px;" class="commentTitle"><%=pvo.getU_id() %></div>
				<div class="commentBody col-md-12">
					<!-- 후기글 -->
					<div id="writereview" class="col-md-9"><%=pvo.getPs_content() %></div>
					<div  class="col-md-3">
						<!-- 별점 -->
						<div class="stars">
							<%for(int i = 1; i <= 5; i++) {
							  if( i <= pvo.getPs_star() ){ 
						  %>
							<span class="fa fa-star text-yellow"></span>
							<% } else { %>
							<span class="fa fa-star-o text-yellow"></span>
							<% }
						  	 }
						  %>
						</div>
					</div>
					
				</div>
				<div class="regdate"><%= pvo.getPs_regdate() %></div>



			</div>
			<% } %>
		</div>
		<!-- 후기list 끝 -->
	</div>



</div>





<!-- 후기작성 modal -->

<div id="commentsFormWrapper" class="commentsFormWrapper"
	style='width: 400px;'>
	<form id="commentsForm" class="commentsForm">

		<!-- 별점 -->
		<div class="row rating">
			<div class="stars">
				<input class="star star-5" id="star-5" type="radio" name="ps_star"
					value="5" /> <label class="star star-5" for="star-5"></label> <input
					class="star star-4" id="star-4" type="radio" name="ps_star"
					value="4" /> <label class="star star-4" for="star-4"></label> <input
					class="star star-3" id="star-3" type="radio" name="ps_star"
					value="3" /> <label class="star star-3" for="star-3"></label> <input
					class="star star-2" id="star-2" type="radio" name="ps_star"
					value="2" /> <label class="star star-2" for="star-2"></label> <input
					class="star star-1" id="star-1" type="radio" name="ps_star"
					value="1" /> <label class="star star-1" for="star-1"></label>
			</div>
		</div>

		<!-- 후기 작성란 -->
		<div id="input-group" class="col-md-12 input-group">

			<div class="col-md-8">
				<input type="text" id="ps_content" name="ps_content"
					class="form-control" placeholder="한 줄 후기 작성하기">
			</div>

			<input type="hidden" id="Repri_num" value="${list.pri_num}" />
			<div class="col-md-2">
				<a id="Reviewbtn" class="form-control btn btn-green">작성하기</a>
			</div>

		</div>
	</form>
</div>

<!------------- 후기 작성하기 끝 --------------------->




<!-- 추가 js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/Yolo/js_yolo/lot/lotreview.js"></script>
<script src="/Yolo/css_yolo/cssPlugin/bootstrap-datetimepicker.min.js"></script>


