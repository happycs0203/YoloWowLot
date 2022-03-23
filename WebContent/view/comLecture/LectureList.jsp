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
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 CSS -->
<link href="/Yolo/css_yolo/cssView/Lecture/Lecture_liststyle.css" rel="stylesheet">

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
			<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
			<!-- 이 사이에! -->
			<!-- 등록버튼 -->
			<div class="row bounds padding" >
				<div class="col-md-12 col-xs-12" style="text-align:right;">
					<div style="display:inline-block;">
					<a href="/Yolo/view/comLecture/LectureInput.jsp" class="btn btn-round btn-green ">세미나/강연 등록하기</a>
					</div>
				</div>				
			</div>
			<!-- 타이틀 부분 -->
			<div class="row bounds padding" >			
				<div class="col-md-12 col-xs-12">
					<h1 id="lec_title" class="tab center bounds padding active">세미나/강연</h1>	
				</div>
						
			</div>
			<hr id="lec_title_hr" class="bounds padding"/>	
			<!-- 리스트 목록 -->
			<div class="bounds padding">
				<!-- 리스트 -->
				<a href="/Yolo/view/comLecture/LectureView.jsp" class="item zoom active">
					<div class="column">
						<div class="image">
							<img id="ctl00_body_rptProducts_ctl00_imgProduct"
								class="cover accelerate"
								src="https://bufiles.blob.core.windows.net/co3657/products/bvh_products1.jpg"
								alt="antimicrobial alphasan additive prevents odors" />
							<div class="link-abs">
								<p class="link-col-text">View More...</p>
							</div>
						</div>
					</div>
					<div class="column">
						<div class="text">
							<h2>재미있는 철학이야기</h2>
							<hr/>
							<p>
								<span class="text-smaller">쉽게 듣는 철학 강연</span>
							</p>
							<p>by LeeYJ</p>
							<p style="float:right;">10000원</p>
						</div>
					</div>
				</a><!-- 리스트의 끝 -->
				<!-- 리스트 -->
				<a href="/Yolo/view/comLecture/LectureView.jsp" class="item zoom active">
					<div class="column">
						<div class="image">
							<img id="ctl00_body_rptProducts_ctl00_imgProduct"
								class="cover accelerate"
								src="https://bufiles.blob.core.windows.net/co3657/products/bvh_products1.jpg"
								alt="antimicrobial alphasan additive prevents odors" />
							<div class="link-abs">
								<p class="link-col-text">View More...</p>
							</div>
						</div>
					</div>
					<div class="column">
						<div class="text">
							<h2>재미있는 철학이야기</h2>
							<hr/>
							<p>
								<span class="text-smaller">쉽게 듣는 철학 강연</span>
							</p>
							<p>by LeeYJ</p>
							<p style="float:right;">10000원</p>
						</div>
					</div>
				</a><!-- 리스트의 끝 -->
				<!-- 리스트 -->
				<a href="/Yolo/view/comLecture/LectureView.jsp" class="item zoom active">
					<div class="column">
						<div class="image">
							<img id="ctl00_body_rptProducts_ctl00_imgProduct"
								class="cover accelerate"
								src="https://bufiles.blob.core.windows.net/co3657/products/bvh_products1.jpg"
								alt="antimicrobial alphasan additive prevents odors" />
							<div class="link-abs">
								<p class="link-col-text">View More...</p>
							</div>
						</div>
					</div>
					<div class="column">
						<div class="text">
							<h2>재미있는 철학이야기</h2>
							<hr/>
							<p>
								<span class="text-smaller">쉽게 듣는 철학 강연</span>
							</p>
							<p>by LeeYJ</p>
							<p style="float:right;">10000원</p>
						</div>
					</div>
				</a><!-- 리스트의 끝 -->
				<!-- 리스트 -->
				<a href="/Yolo/view/comLecture/LectureView.jsp" class="item zoom active">
					<div class="column">
						<div class="image">
							<img id="ctl00_body_rptProducts_ctl00_imgProduct"
								class="cover accelerate"
								src="https://bufiles.blob.core.windows.net/co3657/products/bvh_products1.jpg"
								alt="antimicrobial alphasan additive prevents odors" />
							<div class="link-abs">
								<p class="link-col-text">View More...</p>
							</div>
						</div>
					</div>
					<div class="column">
						<div class="text">
							<h2>재미있는 철학이야기</h2>
							<hr/>
							<p>
								<span class="text-smaller">쉽게 듣는 철학 강연</span>
							</p>
							<p>by LeeYJ</p>
							<p style="float:right;">10000원</p>
						</div>
					</div>
				</a><!-- 리스트의 끝 -->
				<!-- 페이징 부분 -->
				<div class="row bounds padding" style="text-align:center;">
					<div class="col-md-4"></div>
					<div class="col-md-4 col-xs-12" style="display:inline-block;">
						<ul class="pagination pagination-round">
							<li class="disabled"><a href="#"><span
									class="fa fa-angle-left"></span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span class="fa fa-angle-right"></span></a></li>
						</ul>				
					</div>
					<div class="col-md-4"></div>
				</div><!-- 페이징 부분 끝 -->
			</div><!-- 리스트 목록 끝 -->
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