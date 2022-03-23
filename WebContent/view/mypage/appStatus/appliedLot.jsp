<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>appliedLot</title>

<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyClub/portfolio-item.css"
	rel="stylesh`et">
<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 Css -->

<link href="/Yolo/css_yolo/cssView/appStatus/appliedClub.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/appStatus/appliedLot.css" rel="stylesheet">


</style>
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="mapView" class="min">
			<div class="mapPlaceholder">
				<span class="fa fa-spin fa-spinner"></span> Loading map...
			</div>
		</div>
		<div id="content" class="max">
			<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
			<!-- 이 사이에! -->
			<!-- Portfolio Item Heading -->
			<!-- Content -->

			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<h2 class="osLight align-left">예약한 공간</h2><br/>
							<div class="row pb20">
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="article bg-w">
										<a href="/Yolo/view/club/ClubDetail.jsp" class="image"><img
											src="/Yolo/images_yolo/appliedClub/space4.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">결제진행중</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">왕십리 아지트스튜디오</a>
										</h4>
										<div class="footer">
											<a href="#" class="fa fa-check-circle"> 예약번호 : 120600</a>
											<a href="#" class="fa  fa-calendar"> 예약일시 : 2017년 06월 22일(목)</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="article bg-w">
										<a href="/Yolo/view/club/ClubDetail.jsp" class="image"><img
											src="/Yolo/images_yolo/appliedClub/space4.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">결제완료</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">윙스터디 강남역점</a>
										</h4>
										<div class="footer">
											<a href="#" class="fa fa-check-circle"> 예약번호 : 120527</a>
											<a href="#" class="fa  fa-calendar"> 예약일시 : 2017년 07월 20일(금)</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="article bg-w">
										<a href="/Yolo/view/club/ClubDetail.jsp" class="image"><img
											src="/Yolo/images_yolo/appliedClub/space4.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">결제완료</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">공상온도</a>
										</h4>
										<div class="footer">
											<a href="#" class="fa fa-check-circle"> 예약번호 : 120987</a>
											<a href="#" class="fa  fa-calendar"> 예약일시 : 2017년 07월 6일(목)</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="article bg-w">
										<a href="/Yolo/view/club/ClubDetail.jsp" class="image"><img
											src="/Yolo/images_yolo/appliedClub/space4.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">결제완료</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">공상온도</a>
										</h4>
										<div class="footer">
											<a href="#" class="fa fa-check-circle"> 예약번호 : 120987</a>
											<a href="#" class="fa  fa-calendar"> 예약일시 : 2017년 07월 6일(목)</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="article bg-w">
										<a href="/Yolo/view/club/ClubDetail.jsp" class="image"><img
											src="/Yolo/images_yolo/appliedClub/space4.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">결제완료</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">공상온도</a>
										</h4>
										<div class="footer">
											<a href="#" class="fa fa-check-circle"> 예약번호 : 120987</a>
											<a href="#" class="fa  fa-calendar"> 예약일시 : 2017년 07월 6일(목)</a>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- ------------------------------------------------------- -->
			<!-- Footer -->
			<%@include file="/view/common/footer.jsp"%>

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
	<script
		src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places"
		type="text/javascript"></script>
	<script src="/Yolo/js/infobox.js"></script>
	<script src="/Yolo/js/clndr.js"></script>
	<script src="/Yolo/js/jquery.tagsinput.min.js"></script>
	<script src="/Yolo/js/bootstrap-datepicker.js"></script>
	<script src="/Yolo/js/fileinput.min.js"></script>
	<script src="/Yolo/js/app.js"></script>
	<script src="/Yolo/js/calendar.js"></script>

	<!-- 추가  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
</body>
</html>