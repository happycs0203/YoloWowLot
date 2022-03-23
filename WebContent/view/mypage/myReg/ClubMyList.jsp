<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>내 모임 등록 리스트</title>


<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyClub/portfolio-item.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/MyClub/ClubMyList.css"
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
			<!-- 이 사이에! -->
			<!-- Portfolio Item Heading -->
			<!-- Content -->

			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">
						<div class="col-lg-12 responsive">
							<h1>
								내 모임 <small>내 모임 정보</small>
							</h1>

						</div>
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">

							<div class="post-content">
								<div class="image-block">
									<img src="/Yolo/images/blog-3.jpg" alt="blog image">
									<div class="ib-title"></div>
								</div>
								<h2 class="osLight">모임 제목</h2>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. The point of using Lorem Ipsum is that it has a
									more-or-less normal distribution of letters, as opposed to
									using 'Content here, content here', making it look like
									readable English.</p>
								<p>Many desktop publishing packages and web page editors now
									use Lorem Ipsum as their default model text, and a search for
									'lorem ipsum' will uncover many web sites still in their
									infancy. Various versions have evolved over the years,
									sometimes by accident, sometimes on purpose (injected humour
									and the like).</p>
							</div>
							<div class="f-pn-articles">
								<a href="#" class="f-p-article"> <span class="fpna-header">이전
										모임</span> <span class="fa fa-angle-left pull-left pn-icon"></span>
								</a> <a href="#" class="f-n-article"> <span class="fpna-header">다음
										모임</span> <span class="fa fa-angle-right pull-right pn-icon"></span>
								</a>
								<div class="clearfix"></div>
							</div>
						</div>
						<!-- 회원리스트 보기 -->
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
									<!-- filter Form -->
									<div class="filter">
										<h1 class="osLight">회원리스트 보기</h1>
										<a href="#" class="handleFilter"><span class="fa fa-bars"></span></a>
										<div class="clearfix"></div>
										<form class="filterForm">
											<h2 class="osLight h-r align-center">회원 리스트</h2>
											<ul class="blog-r-nav align-center">
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>

												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>
												<li>
													<div class="userWidget-2">
														<div class="avatar">
															<img src="/Yolo/images/avatar-3.png" alt="avatar">
														</div>
														<div class="info">
															<div class="name">Rust Cohle</div>
															<div class="title">Administrator</div>
															<div class="address">Los Angeles, CA, USA</div>
														</div>
														<div class="ops">
															<a href="#"
																class="btn btn-icon btn-round btn-o btn-magenta btn-sm"><span
																class="fa fa-envelope-o"></span> </a>
														</div>
														<div class="clearfix"></div>
													</div>
												</li>

											</ul>
										</form>
									</div>
									<!-- filter Form end -->
								</div>
							</div>
						</div>
						<!-- 회원리스트 보기 end -->

						<br /> <br />

						<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">

							<h2 class="osLight align-left">Related Articles</h2>
							<div class="row pb20">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-5.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Stylish Modern Ranch Exuding a
												Welcoming Feel</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-6.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Private Contemporary Home
												Balancing Openness</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 2, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article bg-w">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images/post-1.jpg" alt="blog image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
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