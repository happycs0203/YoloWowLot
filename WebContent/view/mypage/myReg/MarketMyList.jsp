<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>내 플리마켓 등록 리스트</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<link href="/Yolo/css_yolo/cssView/MyMarket/MarketMyList.css"
	rel="stylesheet">
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
			<!-- 이 사이에!  -->
			<div class="home-wrapper">
				<div class="home-content">
					<div class="row">
						<div class="col-lg-12 responsive">
							<h1 class="page-header">
								내 플리마켓 <small>상품 정보</small>
							</h1>

						</div>
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>
							</a> <a href="#"
								class="btn btn-round  btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round  btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>
							</a> <a href="#"
								class="btn btn-round  btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round  btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>
							</a> <a href="#"
								class="btn btn-round  btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round  btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>
							</a> <a href="#"
								class="btn btn-round  btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round  btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>
							</a> <a href="#"
								class="btn btn-round  btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round  btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 fleamarket">
							<a href="#" class="propWidget-2">
								<div class="fig">
									<img src="/Yolo/images/prop/2-1.png" alt="image"> <img
										class="blur" src="/Yolo/images/prop/2-1.png" alt="image">
									<div class="opac"></div>
									<div class="priceCap osLight">
										<span>$1,750,000</span>
									</div>
									<div class="figType">FOR RENT</div>
									<h3 class="osLight">Hauntingly Beautiful Estate</h3>
									<div class="address">39 Remsen St, Brooklyn, NY 11201,
										USA</div>
									<ul class="rating">
										<li><span class="fa fa-star star-1"></span></li>
										<li><span class="fa fa-star star-2"></span></li>
										<li><span class="fa fa-star star-3"></span></li>
										<li><span class="fa fa-star star-4"></span></li>
										<li><span class="fa fa-star-o star-5"></span></li>
									</ul>
								</div>

							</a> <a href="#"
								class="btn btn-round btn-o btn-red btn-sm col-xs-4 col-md-4 btn-modify">삭제</a>
							<a href="#"
								class="btn btn-round btn-o btn-blue btn-sm col-xs-4 col-md-4 btn-modify">수정</a>
						</div>
						<!-- list end col-sm-6 col-md-4 -->
					</div>
					<!-- /.row -->
					<br />
				</div>
				<!-- home-content end -->
			</div>
			<!-- home-wrapper end -->


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