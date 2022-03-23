<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>내정보 수정</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/MyPage/mypage.css" rel="stylesheet">

</head>

<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="content" class="max">

			<!-------- -------개인정보 수정하기 ------------------------>
			<div class="home-wrapper">

				<h4
					style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">MY
					PROFILE</h4>
				<div class="panel-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label"> 프로필 </label>
							<div class="col-sm-2">
								<input type="file" name="imageUpload" id="imageUpload"
									style="display: none;" /> <img src="" id="imagePreview" alt=""
									class="ratio img-responsive img-circle" /><br />

								<div style="text-align: center;">
									<div style="display: inline-block;">
										<label for="imageUpload" id="btn_profile"
											class="btn btn-o btn-green">사진 등록</label>
									</div>
								</div>
								<!-------사진 등록버튼 가운데정렬 -->
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">아이디</label>
							<div class="col-sm-8">
								<input type="text" name="uId" class="form-control" value="">
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-8">
								<input type="text" name="uPass" class="form-control" value="">
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이 름</label>
							<div class="col-sm-8">
								<input type="text" name="uName" class="form-control" value="">
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">휴대전화</label>
							<div class="col-sm-8">
								<input type="text" name="uPhone" class="form-control" value="">
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-8">
								<input type="text" name="uEmail" class="form-control" value="">
							</div>
						</div>
			
						<div class="form-group">
							<label class="col-sm-2 control-label">생 일</label>
							<div class="col-sm-8">
								<input type="text" name="uBirth" class="form-control" id="datepicker">
								
							</div>
						</div>
					
						<div class="form-group">
							<label class="col-sm-2 control-label">주 소 </label>
							<div class="col-sm-8">

								<div class="col-xs-5 col-md-3 addr">
									<input type="text" name="uAddr" class="form-control" value="">
								</div>
								<div class="col-xs-3 col-md-3">
									<button id="btn_addr" class="btn btn-o btn-green">우편번호 검색</button>
								</div>
								
								<input type="text" name="uAddr" class="form-control" value="">
							</div>
						</div>
					</form>

					<div style="text-align: center;">
						<div style="display: inline-block;">
							<button id="btn_modify" class="btn btn-o btn-green">수정</button>
						</div>
					</div>

				</div>
			</div>
			<!---------------개인정보  수정하기 끝 ------------------------>


		</div>
		<!-- content 끝 -->

		<!-- Footer -->




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
<!-- 	<script src="/Yolo/js/bootstrap-datepicker.js"></script> -->
	<script src="/Yolo/js/fileinput.min.js"></script>
	<script src="/Yolo/js/app.js"></script>
	<script src="/Yolo/js/calendar.js"></script>

	<!-- 추가 js  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
	<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
	<script type="text/javascript">
	$(function(){
		$("#datepicker").datepicker();
	});
	
	$.datepicker.setDefaults({
	    dateFormat: 'yy/mm/dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
	
	</script>





</body>
</html>