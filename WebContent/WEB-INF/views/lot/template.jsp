<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>reales | real estate web application</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <style type="text/css">

.tags .tag {
	margin: 6px 6px 6px 0;
	padding: 0 11px;
	height: 30px;
	font-size: 13px;
	border-radius: 28px;
	background-color: white;
	border: 1px solid silver;
}

#commentsForm{
 padding-bottom: 10px;
}


</style>
    <body class="notransition">
    
		<!-- Header -->
		<%@include file="/view/common/header.jsp"%>

        <!-- Content -->
        <div id="wrapper" class="full">
            <div id="mapView" class="min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="max">
		        <!-- -----------------ì¬ê¸°ì ì»¨íì¸  divë£ì¼ì¸ì----------------- -->
		        <!-- ì´ ì¬ì´ì! -->
		        	<div id="wrapper">
		<div id="content" class="mob-max">
			<div class="singleTop">
				<div id="carouselFull" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselFull" data-slide-to="0" class="active"></li>
						<li data-target="#carouselFull" data-slide-to="1"></li>
						<li data-target="#carouselFull" data-slide-to="2"></li>
						<li data-target="#carouselFull" data-slide-to="3"></li>
					</ol>

					<!-- slider 상세사진보기 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="/Yolo/images_yolo/lot/2.PNG" alt="First slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-1.PNG" alt="Second slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-2.PNG" alt="Third slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-3.PNG" alt="Fourth slide">
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


				<div class="summary">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
							<div class="summaryItem">
								<h1 class="pageTitle">왕십리 아지트스튜디오</h1>
								<div class="address">
									<span class="icon-pointer"></span>왕십리
								</div>
								<div class="tags">
									<span class="tag" style="cursor: pointer;">#왕십리</span> <span
										class="tag" style="cursor: pointer;">#파티</span> <span
										class="tag" style="cursor: pointer;">#아지트스튜디오</span> <span
										class="tag" style="cursor: pointer;">#왕십리스튜디오</span>
								</div>
								
								<ul class="features">
									<li><span class="fa fa-moon-o"></span>
									<div>2 Bedrooms</div></li>
									<li><span class="icon-drop"></span>
									<div>2 Bathrooms</div></li>
									<li><span class="icon-frame"></span>
									<div>2750 Sq Ft</div></li>
								</ul>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<div class="agentAvatar summaryItem">
								<div class="clearfix"></div>
								<img class="avatar agentAvatarImg"
									src="/Yolo/images/avatar-2.png" alt="avatar">
								<div class="agentName">Jane Smith</div>
								<a data-toggle="modal" href="#contactAgent"
									class="btn btn-lg btn-round btn-green contactBtn">Contact
									Agent</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="description">
				<h3>상세정보</h3>
				<p>
				너와 나 사이 마음을 잇는 공간<br /> 어느사이 우리가 만날 시간이 되었군요 :)<br /> 
				인생샷을 위한 조명이 비치되어 있습니다. HVR-600S / 60w 신촌에 위치한 어느사이는 여러분의 파티/모임과 함께 합니다.<br />
				3M의 키친과 BAR, 16명까지 수용가능한 넓은 공간까지~!
				</p>
			</div>
			
			<div class="amenities">
				<h3>편의시설</h3>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-car"></span> Garage
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-tint"></span> Outdoor Pool
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-leaf"></span> Garden
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-shield"></span> Security System
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-wifi"></span> Internet
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-phone"></span> Telephone
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-asterisk"></span> Air Conditioning
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-sun-o"></span> Heating
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-fire"></span> Fireplace
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-arrows-v"></span> Balcony
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-desktop"></span> TV Cable
					</div>
				</div>
			</div>

			<!-- 후기 작성하기 -->
			<div class="comments">
				<h3>
				후기작성
				</h3>
				
				<div class="comment">
					<div class="commentAvatar">
						
						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>
					<div class="commentContent">
					<div class="cardRating">
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
						<div class="commentName">ilju123456</div>
						<div class="commentBody">하루종일 빌려서 친구들과 신나게 놀았습니다! 다음에 또 이용할껍니다</div>
					</div>
				</div>
				
				<div class="comment">
					<div class="commentAvatar">
						
						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>
					
					<div class="commentContent">
					<div class="cardRating">
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
						<div class="commentName">happycs</div>
						<div class="commentBody">이게 아지트? 다신 안빌려ㅗ</div>
					</div>
				</div>


				<div class="comment">
					<div class="commentAvatar">
						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>
					<div class="commentContent">
					<div class="cardRating">
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
						<div class="commentName">chacha</div>
						<div class="commentBody">넓고 좋더라고요~! 잠자기 딱좋음</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="commentsFormWrapper">
			<form id="commentsForm" class="commentsForm">
				<div class="input-group">
				<div class="cardRating">
                                    <span class="fa fa-star-o"></span>
                                    <span class="fa fa-star-o"></span>
                                    <span class="fa fa-star-o"></span>
                                    <span class="fa fa-star-o"></span>
                                    <span class="fa fa-star-o"></span>
                                </div>
					<input type="text" class="form-control"
						placeholder="Write a comment..."> <span
						class="input-group-btn"><a class="btn btn-green">Post</a></span>
				</div>
			</form>
		</div>
		
	</div>
		        <!-- ------------------------------------------------------- -->
		        <!-- Footer -->
<%-- 		        <%@include file="/view/common/footer.jsp"%>    --%>
		        
            </div>
            <div class="clearfix"></div>
        </div>

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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdr4Ul6T6VHRn7H9wlqH63xNmKWuUbMy4&callback=initMap" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/clndr.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/fileinput.min.js"></script>
        <script src="/Yolo/js/app.js"></script>
        <script src="/Yolo/js/calendar.js"></script>
        
        <!-- ì¶ê°  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		
		
		
		
		
		
		
    </body>
</html>