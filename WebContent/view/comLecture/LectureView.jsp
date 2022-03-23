<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>reales | real estate web application</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 CSS -->
<link href="/Yolo/css_yolo/cssView/Lecture/Lecture_viewstyle.css" rel="stylesheet">

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

		<div id="content" class="max">
			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">
						<!-- 글전체 -->
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<!-- 세미나/강연 제목부분 -->
							<div class="post-top" id="post-top">
								<div class="post-author">
									<h2 id="lec_title">제목: 재미있는어쩌구</h2>
									<div class="pa-user" id="pa-user">
										<div class="pa-name">John Smith on Sep 4, 2014</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div><!-- 세미나/강연 제목부분 끝 -->
							<!-- 글 메인 -->
							<div class="post-content">
								<!-- 상단 부분 -->
								<div class="row">
									<!-- 등록 이미지 삽입 -->
									<div id="image_div" class="image-block col-md-6 col-xs-12 col-sm-12">
										<img src="/Yolo/images/blog-3.jpg" alt="blog image">
										<div  id="btn_lecjoin" class="col-md-12 col-xs-12">
											<a href="" class="btn btn-round btn-green align-center" style="width:80%;">세미나/강연 신청하기</a>
										</div>
									</div>
									<!-- 등록 이미지 삽입 끝 -->
									<!-- 내용 -->
									<div class="singleTop col-md-6 col-xs-12 col-sm-12">
										<div>
											<blockquote>주제</blockquote>
											<p class="align-left">주제:쉽게 풀어 설명하는 다양한 철학</p>
											<blockquote>모집인원</blockquote>
											<p class="align-left">인원:00명</p>
											<blockquote>모집기간</blockquote>
											<p class="align-left">2017-06-13 ~ 2017-06-24</p>
											<blockquote>일시</blockquote>
											<p class="align-left">2017-07-30</p>
										</div>
									</div>
								</div>
								<!-- 상단 부분 끝 -->
								<div class="clearfix"></div>
								<!-- 하단 부분 -->
								<h2 class="osLight">[강연 순서]</h2>
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
								<p>Many desktop publishing packages and web page editors now
									use Lorem Ipsum as their default model text, and a search for
									'lorem ipsum' will uncover many web sites still in their
									infancy. Various versions have evolved over the years,
									sometimes by accident, sometimes on purpose (injected humour
									and the like).</p>									
								<!-- 하단 부분 끝 -->
							</div><!-- 글 메인 끝-->
							<!-- 이전글 & 다음글 -->
							<div class="f-pn-articles">
								<a href="#" class="f-p-article">
									<div class="fpna-title">이전 글</div> <span
									class="fpna-header">Why Green Architecture Is The
										Perfect Investment for Your Home</span> <span
									class="fa fa-angle-left pull-left pn-icon"></span>
								</a> <a href="#" class="f-n-article">
									<div class="fpna-title">다음 글</div> <span
									class="fpna-header">Practical Lighting Size & Placement
										Guide for Every Corner of the House</span> <span
									class="fa fa-angle-right pull-right pn-icon"></span>
								</a>
								<div class="clearfix"></div>
							</div><!-- 이전글 & 다음글 끝 -->
						</div><!-- 글 전체 끝 -->
					</div>
				</div>
			</div>
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
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/clndr.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/fileinput.min.js"></script>
        <script src="/Yolo/js/app.js"></script>
        <script src="/Yolo/js/calendar.js"></script>
</body>
</html>