<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>내 세미나 등록 리스트</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<link href="/Yolo/css_yolo/cssView/MyLecture/LectureMyList.css" rel="stylesheet">


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
			<!-- ------------------------------------------------------- -->
			<!-- 본문내용 -->
			<div class="home-wrapper">
			<div class="row">
				<div class="col-lg-12 responsive">
					<h1>
						내 세미나/강연 <small>세미나 강연 리스트</small>
					</h1>

				</div>
			</div>
<!-- 				<div class="home-content"> -->
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
							<a href="ClubDetail.jsp" class="card">
								<div class="figure">
									<img src="/Yolo/images/prop/1-1.png" alt="image">
									<div class="figView">
										<span class="icon-eye"></span>
									</div>
								</div>
								<h2>재미있는 철학이야기</h2>
								<h3>쉽게 듣는 철학 강연</h3>
								<div class="userWidget-2">
								<div class="info">
										<div class="name"><span class="icon-user">&nbsp;Rust Cohle</div>
								</div>
								</div>
								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="button" class="btn btn-o btn-blue">수정</button>
									</div>

									<div class="btn-group">
										<button type="button" class="btn btn-o btn-red">삭제</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</a>

						</div>
						<!-- 내용 end -->

					</div>
					<!-- row end -->
<!-- 				</div> -->
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

	<!-- 추가JS  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>


</body>
</html>