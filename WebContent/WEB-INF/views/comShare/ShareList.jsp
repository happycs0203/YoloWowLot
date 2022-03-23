
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 추가CSS -->
<link href="/Yolo/css_yolo/cssView/comShare/ShareList.css" rel="stylesheet">
<script src="/Yolo/js/json2.js"></script>
	<script src="/Yolo/js/jquery-2.1.1.min.js"></script>
	<script src="/Yolo/js/underscore.js"></script>
	<script src="/Yolo/js/moment-2.5.1.js"></script>
	<script src="/Yolo/js/jquery-ui.min.js"></script>
	<script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
	<script src="/Yolo/js/jquery.placeholder.js"></script>
	<script src="/Yolo/js/bootstrap.js"></script>
    	
	<script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
	<script src="/Yolo/js/jquery.slimscroll.min.js"></script>
	<script src="/Yolo/js/jquery.visible.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places"
		type="text/javascript"></script>
	<script src="/Yolo/js/infobox.js"></script>
<%
String smlist = (String)request.getAttribute("smlist");

%>
<script>
(function($) {
	var temp = '<%=smlist%>';
	var props = jQuery.parseJSON(temp);
	
	
    var options = {
            zoom : 14,
            mapTypeId : 'Styled',
            disableDefaultUI: true,
            mapTypeControlOptions : {
                mapTypeIds : [ 'Styled' ]
            },
            scrollwheel: false
        };
    var styles = [{
        stylers : [ {
            hue : "#cccccc"
        }, {
            saturation : -100
        }]
    }, {
        featureType : "road",
        elementType : "geometry",
        stylers : [ {
            lightness : 100
        }, {
            visibility : "simplified"
        }]
    }, {
        featureType : "road",
        elementType : "labels",
        stylers : [ {
            visibility : "on"
        }]
    }, {
        featureType: "poi",
        stylers: [ {
            visibility: "off"
        }]
    }];

    var markers = [];
//     var props = ;s
    var infobox = new InfoBox({
        disableAutoPan: false,
        maxWidth: 202,
        pixelOffset: new google.maps.Size(-101, -285),
        zIndex: null,
        boxStyle: {
            background: "url('images/infobox-bg.png') no-repeat",
            opacity: 1,
            width: "202px",
            height: "245px"
        },
        closeBoxMargin: "28px 26px 0px 0px",
        closeBoxURL: "",
        infoBoxClearance: new google.maps.Size(1, 1),
        pane: "floatPane",
        enableEventPropagation: false
    });

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

    setTimeout(function() {
        $('body').removeClass('notransition');

        if ($('#home-map').length > 0) {
            map = new google.maps.Map(document.getElementById('home-map'), options);
            var styledMapType = new google.maps.StyledMapType(styles, {
                name : 'Styled'
            });

            map.mapTypes.set('Styled', styledMapType);
            map.setCenter(new google.maps.LatLng(37.479479, 126.884181));
            map.setZoom(14);

            addMarkers(props, map);
        }
    }, 300);

    if(!(('ontouchstart' in window) || window.DocumentTouch && document instanceof DocumentTouch)) {
        $('body').addClass('no-touch');
    }

     $('.dropdown-select li a').click(function() {
        if (!($(this).parent().hasClass('disabled'))) {
            $(this).prev().prop("checked", true);
            $(this).parent().siblings().removeClass('active');
            $(this).parent().addClass('active');
            $(this).parent().parent().siblings('.dropdown-toggle').children('.dropdown-label').html($(this).text());
        }
    });

    var cityOptions = {
        types : [ '(cities)' ]
    };
    var city = document.getElementById('city');
    var cityAuto = new google.maps.places.Autocomplete(city, cityOptions);

    $('#advanced').click(function() {
        $('.adv').toggleClass('hidden-xs');
    });

    $('.home-navHandler').click(function() {
        $('.home-nav').toggleClass('active');
        $(this).toggleClass('active');
    });

    //Enable swiping
    $(".carousel-inner").swipe( {
        swipeLeft:function(event, direction, distance, duration, fingerCount) {
            $(this).parent().carousel('next'); 
        },
        swipeRight: function() {
            $(this).parent().carousel('prev');
        }
    });

    $('.modal-su').click(function() {
        $('#signin').modal('hide');
        $('#signup').modal('show');
    });

    $('.modal-si').click(function() {
        $('#signup').modal('hide');
        $('#signin').modal('show');
    });

    $('input, textarea').placeholder();

})(jQuery);

</script>
<!-- ------------------------------------------------------- -->
			<!-------- 상단 map --------->
		    <div id="hero-container-map">
		        <div id="home-map"></div>
		    </div>
		    
			<!-- 타이틀 부분 -->
			<div class="row bounds padding" >			
				<div class="col-md-12 col-xs-12">
					<div id="Share_Title" >
						<h1 class="tab center bounds padding active">공간 쉐어링</h1>
						<h4 class="tab center bounds padding active">공간을 나누면 두배의 행복이 <br/><br/>홀로 쓰기엔 버거운 공간을 공유해보세요.</h4>	
					</div>	
				</div>
			</div>
		    
		    <!-- 검색 부분 -->
		    <div class="row bounds padding" >
		    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    	<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control">
									<span class="input-group-btn">
										<a href="#" class="btn btn-green">검색</a>
									</span>
							</div>
						</div>
					</div>
		    
		    <!-- 글 등록 부분 -->
		    <% String u_id = ""; 
		     // 세션에 있는 id값 가져오기
		     u_id = (String)session.getAttribute("u_id");
		     
		     //로그인해야하는 경우
		     if( u_id==null || u_id==""){}else{ 
		     // 로그인 된 경우
		     %> 
		     
		    <div class="write_btn" >
				<div class="col-md-12 col-xs-12" >
					<a href="ShareInput.share" class="btn btn-round btn-green ">쉐어링 글쓰기</a>
					
				</div>				
			</div>
			<%} %> 
			
			
			
			
			</div>
			<hr id="Share_title_hr" class="bounds padding"/>	
			
			
			<!-- 리스트 목록 -->
	<div class="bounds padding">
	<c:choose>
		<c:when test="${fn:length(list) eq 0 }">
			<h1 class="tab center bounds padding active">검색된 쉐어링이 없습니다.</h1>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="list">
				<a href="/Yolo/comShare/ShareDetail.share?sl_num=${list.sl_num}" class="item zoom active">
					<div class="column">
						<div class="image">
							<img class="cover accelerate"
								src="/Yolo/upload/lot/${list.priimg_name}" alt="" />
							<div class="link-abs">
								<p class="link-col-text">자세히 보기</p>
							</div>
						</div>
					</div>
					<div class="column">
						<div class="text">
							<h2>${list.sl_title}</h2>
							<hr />
							<p>
								<span class="text-smaller">${list.pri_addr}</span>
							</p>
							<p>${list.u_id}</p>
						</div>
					</div>
				</a>
			</c:forEach>
		</c:otherwise>
</c:choose>
<!-- 페이징 부분 -->
				<div class="row bounds padding" style="text-align:center;">
					<div class="col-md-4"></div>
					<div class="col-md-4 col-xs-12" style="display:inline-block;">
						<ul class="pagination pagination-round">
							<li><a href="ShareList.share?shareNowPage=${shareNowPage -1 }"><span
									class="fa fa-angle-left"></span></a></li>
										
									
									<c:forEach var="paging" begin='${startPage}'  end='${endPage}' step ="1">
										<c:choose>
											<c:when test='${paging == shareNowPage }'>
												<li class="active"><a href="#">${paging }</a></li>
											</c:when>
											<c:otherwise>	
												<li><a href="ShareList.share?shareNowPage=${paging }">${paging }</a></li>	
											</c:otherwise>								
										</c:choose>
									</c:forEach>
							

							<li><a href="ShareList.share?shareNowPage=${shareNowPage +1}"><span class="fa fa-angle-right"></span></a></li>
						</ul>				
					</div>
					<div class="col-md-4"></div>
				</div><!-- 페이징 부분 끝 -->
			</div><!-- 리스트 목록 끝 -->

<!-- ------------------------------------------------------- -->


<!-- 추가JS  -->