<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>HostInput.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">

</head>

<body class="notransition">

	<!-- HostHeader -->
	<%@include file="/view/host/HostHeader.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="content" class="max">

			<!---------------호스트 등록하기 ------------------------>
			<div class="home-wrapper">

				<h4 style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">HOST REGISTER</h4>
				<div class="panel-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label"> 호스트 이미지 </label>
							<div class="col-sm-2">
								<input type="file" name="imageUpload" id="imageUpload"
									style="display: none;" /> <img src="" id="imagePreview"
									alt="" class="ratio img-responsive img-circle" /><br />
									
								<div style="text-align: center;">
									<div style="display: inline-block;">
										<label for="imageUpload" id="btn_profile" class="btn btn-o btn-green">프로필 등록</label>
									</div>
								</div><!-------호스트 사진 등록버튼 가운데정렬 -->
							</div>
						</div>
					</form>

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">호스트 명</label>
							<div class="col-sm-8">
								<input type="text" name="hname" class="form-control" value="일주짱">
							</div>
						</div>
					</form>

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">소개글</label>
							<div class="col-sm-8">
								<textarea name="hintroduce" class="form-control" rows="6"></textarea>
							</div>
						</div>
					</form>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<button id="btn_register" class="btn btn-o btn-green">호스트
								등록하기</button>
						</div>
					</div>

				</div>
			</div>
			<!---------------호스트 등록하기 끝 ------------------------>


		</div>
		<!-- content 끝 -->

		<!-- Footer -->
		<%@include file="/view/common/footer.jsp"%>




	</div>
	<div class="clearfix"></div>









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

	<!-- 추가 js  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
	<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>






</body>
</html>