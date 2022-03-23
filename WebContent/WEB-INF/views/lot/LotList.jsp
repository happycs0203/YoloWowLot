<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/Yolo/css_yolo/cssView/lot/lotDetail.css" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.*"%>
<%@ page import="yolo.lot.dto.*"%>

<%
	String jsonList = (String) request.getAttribute("jsonList");
	System.out.println(jsonList);
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
$(function(){
	var temp = '<%=jsonList%>' ;
	
		var props = jQuery.parseJSON(temp);

		// Custom options for map
		var options = {
			zoom : 14,
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
		var addMarkers = function(props, map) {
			$.each(props.props,function(i, prop) {
								var latlng = new google.maps.LatLng(
										prop.position.lat, prop.position.lng);
								var marker = new google.maps.Marker({
									position : latlng,
									map : map,
									icon : new google.maps.MarkerImage(
											'/Yolo/images/' + prop.markerIcon,
											null, null, null,
											new google.maps.Size(36, 36)),
									draggable : false,
									animation : google.maps.Animation.DROP,
								});
								var infoboxContent = '<div class="infoW">'
										+ '<div class="propImg">'
										+ '<img src="/Yolo/upload/lot/' + prop.image + '">'
										+ '<div class="propBg">'
										+ '<div class="propPrice">'
										+ prop.price
										+ '</div>'
										+ '<div class="propType">'
										+ prop.type
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '<div class="paWrapper">'
										+ '<div class="propTitle">'
										+ prop.title
										+ '</div>'
										+ '<div class="propAddress">'
										+ prop.address
										+ '</div>'
										+ '</div>'
										+ '<div class="clearfix"></div>'
										+ '<div class="infoButtons">'
										+ '<a class="btn btn-sm btn-round btn-gray btn-o closeInfo">Close</a>'
										+ '<a href="/Yolo/lot/LotView.lot?pri_num='+ prop.number +'&pri_kind="'+ prop.kind +' class="btn btn-sm btn-round btn-green viewInfo">View</a>'
										+ '</div>' + '</div>';

								google.maps.event
										.addListener(
												marker,
												'click',
												(function(marker, i) {
													return function() {
														infobox
																.setContent(infoboxContent);
														infobox.open(map,
																marker);
													}
												})(marker, i));

								$(document).on('click', '.closeInfo',
										function() {
											infobox.open(null, null);
										});

								markers.push(marker);
							});
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
			map.setCenter(new google.maps.LatLng(37.479479, 126.884181));
			map.setZoom(14);

			if ($('#address').length > 0) {
				newMarker = new google.maps.Marker({
					position : new google.maps.LatLng(37.479479, 126.884181),
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

			addMarkers(props, map);
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

<!-- Content -->

<!-------------- 필터 --------------------->
<div class="filter">
	<h1 class="osLight">공간찾기</h1>
	<a href="#" class="handleFilter"><span class="icon-equalizer"></span></a>
	<div class="clearfix"></div>
	<form id="frm" class="filterForm" method="post" action="/Yolo/lot/Lotsearch.lot">

		<div class="row">
			<div id="search" class="col-xs-12 col-sm-6 col-md-12  formItem">
				<div class="col-md-3 col-xs-6">
					<label>시</label> 
					 <select id="sido" name="sido" class="btn btn-default">
					 <c:forEach items="${zlist}" var="b">
					   <option value="${b.sido}">${b.sido}</option>
					 </c:forEach>
					 </select>
				</div>

				<div class="col-md-4 col-xs-6">
					<label>군·구</label> 
					 <select id="gugun" name="gugun" class="btn btn-default">
                       
					 </select>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-3 formItem">
				<label>예약날짜</label> <input type="text" name="rdate"
					class="form-control col-md-12" id="datepicker" />
			</div>

			<div class="col-xs-12 col-sm-6 col-md-4  formItem">
				<div class="formField">
					<label>인원</label>
					<div class="volume">
						<a href="#" class="btn btn-gray btn-round-left"><span
							class="fa fa-angle-left"></span></a> <input type="text"
							class="form-control" id="rcount" name="rcount" value="1"> <a href="#"
							class="btn btn-gray btn-round-right"><span
							class="fa fa-angle-right"></span></a>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-4 formItem">
				<a id="lotsearch" style="margin-top: 20px;" class="btn btn-yellow col-md-7 col-xs-12">검색</a>
				<div class="clearfix"></div>
			</div>

		</div>
	</form>
</div>
<div class="resultsList">
		<!------------- 공간 검색 결과 리스트 보여주기 --------------------->
		<% 
		ArrayList list = (ArrayList)request.getAttribute("list");
		if(list.size()==0){%>
			<p>등록된 게시물이 없습니다.</p>
		<%}//end of if%>
		<%
		//row열 판단 변수
		int pagenum = 0;
		//index값 저장 변수
		int index = 0;
		
		if(list.size()%2 == 0){
			pagenum = list.size()/2;
		}else{
			pagenum = list.size()/2 + 1;
		}

		for(int i=0; i<pagenum; i++){%>
			<div class="row">
			<%
			for(int j=0; j<2; j++){
				LotListVO vo = (LotListVO)list.get(index);
				index++; %>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<a href="/Yolo/lot/LotView.lot?pri_num=<%= vo.getPri_num() %>&pri_kind=<%= vo.getPri_kind() %>" class="card">
						<div class="figure">
							<img id="lotimage" src="/Yolo/upload/lot/<%= vo.getPriimg_name() %>" alt="image">
							<div class="figCaption">
								<div><%= vo.getPri_weekprice() %></div>
									<span class="icon-eye"><%= vo.getPri_hits()%></span>  
									<span class="icon-heart">
									54</span> 
							</div>
							<div class="figView">
								<span class="icon-eye"></span>
							</div>
	
						</div>
						<h2><%= vo.getPri_title() %></h2>
						<div class="cardAddress">
							<span class="icon-pointer"></span><%= vo.getPri_addr() %>
						</div>
						<div class="cardRating">
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star-o"></span> (146)
						</div>
						<div class="clearfix"></div>
					</a>
				</div>						
			<%	//index 위치 확인
				if(index==list.size()){
					//끝에 도달했다면 반복문 종료
					break;
				}//end of if	
			}//end of for	%>
			</div>
		<%}//end of for	%>

			<!-- 페이징 넘기기 -->
				<!-- 페이징 부분 -->
					<div class="row bounds padding" style="text-align:center;">
						<div class="col-md-4"></div>
						<div class="col-md-4 col-xs-12" style="display:inline-block;">
							<ul class="pagination pagination-round">
								<li><a href="LotList.lot?LotNowPage=${LotNowPage -1}"><span
										class="fa fa-angle-left"></span></a></li>
											
										
										<c:forEach var="paging" begin='${startPage}'  end='${endPage}' step ="1">
											<c:choose>
												<c:when test='${paging == LotNowPage}'>
													<li class="active"><a href="#">${paging}</a></li>
												</c:when>
												<c:otherwise>	
													<li><a href="LotList.lot?LotNowPage=${paging}">${paging}</a></li>	
												</c:otherwise>								
											</c:choose>
										</c:forEach>
									
	
								<li><a href="LotList.lot?LotNowPage=${LotNowPage +1}"><span class="fa fa-angle-right"></span></a></li>
							</ul>				
						</div>
						<div class="col-md-4"></div>
					</div><!-- 페이징 부분 끝 -->
</div>
		<!------------- 공간 검색 결과 리스트 보여주기 --------------------->

<!---- 필터 끝 ----->

<!-- 추가js -->
<script src="/Yolo/js_yolo/lot/lotlist.js"></script>


