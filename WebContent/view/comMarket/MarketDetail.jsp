<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Portfolio Item - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<!--     <link href="/Yolo/css_yolo/cssView/MyMarket/bootstrap.css" rel="stylesheet"> -->

<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyMarket/portfolio-item.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/MyMarket/GoodsMyList.css"
	rel="stylesheet">
<!-- Common CSS -->
<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<style type="text/css">
.chang{
	padding-right: 0;
    padding-left: 0;
}
</style>

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
			<!-- Page Content -->
			<!-- Portfolio Item Heading -->
			
		<div class="home-wrapper">
			<div class="home-content">
			<div class="row">
				<div class="col-lg-12 responsive">
					<h1>
						내 플리마켓 <small>상품 정보</small>
					</h1>

				</div>
			</div>
			<!-- /.row -->

			<!-- Portfolio Item Row -->
			<div class="row">

				<div class="col-md-6 responsive chang">

					<img class="img-responsive" src="/Yolo/images/prop/2-1.png" alt="">
					<br /> 
				</div>
				<br /> <br />

				<div class="col-md-5 responsive chang">
					<h3>플리마켓 설명</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
						viverra euismod odio, gravida pellentesque urna varius vitae. Sed
						dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris
						ultricies, justo eu convallis placerat, felis enim.</p>
					<h3>플리마켓리스트</h3>
					<ul>
						<li>Lorem Ipsum</li>
						<li>Dolor Sit Amet</li>
						<li>Consectetur</li>
						<li>Adipiscing Elit</li>
					</ul>
				</div>

			</div>
			<!-- /.row -->

			<!-- Related Projects Row -->
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Stylish Modern Ranch Exuding a
										Welcoming Feel</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Private Contemporary Home
										Balancing Openness</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Modern Two-Level Pool House in Los
										Angeles</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Stylish Modern Ranch Exuding a
										Welcoming Feel</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Private Contemporary Home
										Balancing Openness</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<div class="article">
								<a href="blog-post.html" class="image"><img
									src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
								<div class="article-category">
									<a href="#" class="text-green">Architecture</a>
								</div>
								<h4 class="osLight">
									<a href="blog-post.html">Modern Two-Level Pool House in Los
										Angeles</a>
								</h4>
								<div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- row end -->
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