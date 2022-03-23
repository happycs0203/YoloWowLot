<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>ClubInput.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/jquery.tagsinput.css" rel="stylesheet">

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Lecture/Lecture_inputstyle.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/clubInput.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/tagPlus.css" rel="stylesheet">

</head>

<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="content" class="max">
			<!--------------- 모임 정보입력 ------------------------>
			<div class="home-wrapper">
				<!-- 제목 -->
				<h4 style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">새 모임 등록하기</h4>
				<!-- 세미나/강연 정보 입력 -->
				<div class="panel-heading">모임 정보 입력</div>
				<form class="form-horizontal" role="form">
				<div class="panel-body">
					<!-- 입력 폼 -->
						<!-- 주제 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">주제</label>
							<div class="col-sm-8">
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 취미활동</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 문화/예술</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 전시</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 친목활동</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 스터디</span></label>
								</div>
	
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox"><span
										class="fa fa-check"> 이벤트/파티</span></label>
								</div>
								
							</div>
						</div>
						<!-- 제목 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">모임명</label>
							<div class="col-sm-8">
								<input type="text" name="uId" class="form-control">
							</div>
						</div>
						<!-- 해쉬태그 입력 -->
<!-- 						<div class="form-group"> -->
<!-- 							<label class="col-sm-2 control-label">해시태그</label> -->
<!-- 							<div class="col-sm-8"> -->
<!-- 								<input type="text" id="tags" -->
<!-- 									placeholder="#내용 으로 적어주세요"> -->
<!-- 							</div> -->
<!-- 						</div> -->

                        <div class="form-group">
                       		<label class="col-sm-2 control-label">Tags input</label>
	                       <div class="col-sm-8">
	                           <input type="text" class="form-control" id="tags" placeholder="Add a tag">
	                       </div>
                  		</div>

						<!-- 최대 인원 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">최대 인원</label>
							<div class="col-sm-8">
								<input type="text" name="uName" class="form-control" value="">
							</div>
						</div>
						<!-- 모집 기간 설정 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">모집기간</label>
							<div class="col-sm-3">
								<input type="date" name="uBirth" class="form-control" value="">
							</div>
							<label class="col-sm-1 align-center" style="padding-top:7px;">부터</label>
							<div class="col-sm-3">
								<input type="date" name="uBirth" class="form-control" value="">
							</div>							
						</div>
						<!-- 활동주기 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">활동주기</label>
							<div class="col-md-6 col-xs-10">
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="radio1"><span
										class="fa fa-circle"></span> 정기적</label>
								</div>
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="radio1"><span
										class="fa fa-circle"></span> 일회적</label>
								</div>
							</div><!-- 라디오버튼 -->				
						</div>
						<!-- 활동주기 끝 -->
						<!-- 시작 일시 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">시작 일시</label>
							<div class="col-sm-3">
								<input type="date" name="uBirth" class="form-control" value="">
							</div>
							<label class="col-sm-1 align-right" style="padding-top: 7px;">시각</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label">오전 12:00</span> <span
											class="caret"></span>
									</button>
									<!-- 시간 선택 -->
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
										<li class="active"><input type="radio" name="ds1" checked="checked"><a href="#">오전 12:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 12:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 01:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 01:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 02:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 02:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 03:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 03:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 04:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 04:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 05:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 05:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 06:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 06:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 07:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 07:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 08:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 08:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 09:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 09:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 10:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 10:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 11:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 11:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 12:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 12:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 01:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 01:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 02:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 02:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 03:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 03:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 04:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 04:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 05:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 05:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 06:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 06:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 07:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 07:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 08:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 08:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 09:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 09:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 10:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 10:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 11:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 11:30</a></li>										
									</ul>
								</div>
							</div>
						</div>
						<!-- 종료 일시 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">종료 일시</label>
							<div class="col-sm-3">
								<input type="date" name="uBirth" class="form-control" value="">
							</div>
							<label class="col-sm-1 align-right" style="padding-top: 7px;">시각</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label">오전 12:00</span> <span
											class="caret"></span>
									</button>
									<!-- 시간 선택 -->
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
										<li class="active"><input type="radio" name="ds1" checked="checked"><a href="#">오전 12:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 12:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 01:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 01:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 02:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 02:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 03:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 03:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 04:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 04:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 05:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 05:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 06:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 06:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 07:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 07:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 08:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 08:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 09:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 09:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 10:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 10:30</a></li><li><input type="radio" name="ds1"><a href="#">오전 11:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오전 11:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 12:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 12:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 01:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 01:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 02:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 02:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 03:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 03:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 04:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 04:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 05:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 05:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 06:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 06:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 07:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 07:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 08:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 08:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 09:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 09:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 10:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 10:30</a></li><li><input type="radio" name="ds1"><a href="#">오후 11:00</a></li>
										<li><input type="radio" name="ds1"><a href="#">오후 11:30</a></li>										
									</ul>
								</div>
							</div>
						</div>
						<!-- 썸네일 이미지 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">대표이미지</label>
							<div class="col-sm-8">
								<input type="file" class="file" multiple data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-o btn-default" data-browse-label="이미지 첨부하기">
								<p class="help-block">대표 이미지를 첨부해주세요.</p>
							</div>
						</div>
						<!-- 썸네일 이미지 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">설명란</label>
							<div class="col-sm-8">
								<textarea class="form-control" rows="4"></textarea>
							</div>
						</div>
						<!-- 수정 취소버튼 추가 -->
				
				</div><!-- 세미나/강연 정보 입력 끝 -->
				</form>
			</div>
			<!---------------세미나/강연 정보입력 끝 ------------------------>

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
	<script src="/Yolo/js/bootstrap-datepicker.js"></script>
	<script src="/Yolo/js/fileinput.min.js"></script>
	<script src="/Yolo/js/app.js"></script>
	<script src="/Yolo/js/calendar.js"></script>

	<!-- 추가 js  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
	<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>

</body>
</html>