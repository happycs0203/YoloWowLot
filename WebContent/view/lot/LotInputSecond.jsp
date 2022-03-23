<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>MypageInput.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/jquery.tagsinput.css" rel="stylesheet">

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/lot/lotInputSecond.css" rel="stylesheet">

</head>

<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="content" class="max">
			<!--------------- 공간등록 정보입력 ------------------------>
			<div class="home-wrapper">
				<!-- 제목 -->
				<h4 style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">공 간 등 록</h4>
				<!-- 사업자 등록 여부 입력 -->
				<div class="panel-heading">사업자 등록 여부</div>
				<form class="form-horizontal" role="form">
				<div class="panel-body">
					<!-- 입력 폼 -->
						<!-- 사업자/비사업자 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-3">
								<div class="radio custom-radio">
									<label><input type="radio" name="radio1"><span
										class="fa fa-circle"></span> 사업자</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="radio custom-radio">
									<label><input type="radio" name="radio1"><span
										class="fa fa-circle"></span>비사업자</label>
								</div>
							</div>
						</div>
						<!-- 상호명 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">상호명</label>
							<div class="col-sm-8">
								<input type="text" name="uId" class="form-control" value="">
							</div>
						</div>
						<!-- 사업장 주소 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">사업장 주소</label>
							<div class="col-sm-8">
								<div class="col-xs-5 col-md-3 addr">
									<input type="text" name="uAddr" class="form-control" value="">
								</div>
								<div class="col-xs-3 col-md-3" style="margin-bottom: 5px;">
									<button id="btn_addr" class="btn btn-o btn-green">우편번호 검색</button>
								</div>
								
								<input type="text" name="uAddr" class="form-control" value="">
							</div>
						</div>						
						<!-- 사업자 등록번호 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">사업자 등록번호</label>
							<div class="col-sm-2">
								<input type="text" name="uId" class="form-control" value="">
							</div>
							<div class="col-sm-2">
								<input type="text" name="uId" class="form-control" value="">
							</div>
							<div class="col-sm-2">
								<input type="text" name="uId" class="form-control" value="">
							</div>														
						</div>
						<!-- 사업자 등록증 첨부 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">사업자 등록증</label>
							<div class="col-sm-8">
								<input type="file" class="file" multiple data-show-upload="false" data-show-caption="false" 
								data-show-remove="false" accept="*" data-browse-class="btn btn-o btn-default" data-browse-label="파일 첨부하기">
								<p class="help-block">사업자 등록증을 pdf 파일로 첨부해주세요</p>
							</div>
						</div>							
					
				</div><!-- 사업자 등록 여부 입력 끝 -->
				<!-- 예약 방법 등록 -->
				<div class="panel-heading">예약 방법</div>
				<div class="panel-body">
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-3">
								<div class="radio custom-radio">
									<label><input type="radio" name="radio2"><span
										class="fa fa-circle"></span>바로결제</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="radio custom-radio">
									<label><input type="radio" name="radio2"><span
										class="fa fa-circle"></span>승인결제</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="radio custom-radio">
									<label><input type="radio" name="radio2"><span
										class="fa fa-circle"></span>승인예약</label>
								</div>
							</div>							
						</div>					
				</div><!-- 예약 방법 등록 끝 -->				
				<!-- 계좌 정보 등록 -->
				<div class="panel-heading">계좌 정보</div>
				<div class="panel-body">
						<!-- 계좌 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-2">
								<select class="form-control">
									<option>은행선택</option>
									<option>농협</option>
									<option>국민</option>
									<option>우리</option>
									<option>신한</option>
									<option>기업</option>
								</select>
							</div>
							<div class="col-sm-3">
								<input type="text" name="uId" class="form-control" value="" placeholder="계좌번호">
							</div>
							<div class="col-sm-2">
								<input type="text" name="uId" class="form-control" value="" placeholder="예금주명">
							</div>																			
						</div>					
				</div><!-- 계좌 정보 등록 끝 -->				
				<!-- 가격 기준 등록 -->
				<div class="panel-heading">가격 기준</div>
				<div class="panel-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">주중 기본</label>
							<div class="col-sm-3">
								<input type="text" name="uId" class="form-control" value="">
							</div>
							<label class="col-sm-2 control-label align-right">주말/휴일 기본</label>
							<div class="col-sm-3">
								<input type="text" name="uId" class="form-control" value="">
							</div>														
						</div>				
				</div><!-- 가격 기준 등록 끝 -->	

				
				<!-- 세부 정보 등록 -->
				<div class="panel-heading">세부 정보</div>
					<div class="panel-body">
						<!-- 편의시설 선택1 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">편의시설</label>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>TV/프로젝터</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>인터넷/WIFI</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>복사/인쇄기</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>화이트보드</label>
								</div>
							</div>																				
						</div>
						<!-- 편의시설 선택2 -->
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>음향/마이크</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>취사시설</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>음식물반입가능</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>주류반입가능</label>
								</div>
							</div>																				
						</div>
						<!-- 편의시설 선택3 -->
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>주차</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>금연</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>PC/노트북</label>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="checkbox custom-checkbox">
									<label><input type="checkbox"><span class="fa fa-check"></span>의자/테이블</label>
								</div>
							</div>
							<label class="col-sm-10 control-label"></label>																				
						</div>									
						<!-- 예약 허용 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">예약허용</label>
							<div class="form-group">
								<label class="col-sm-1 control-label">*최소 인원</label>
								<div class="col-sm-2">
									<input type="text" name="uId" class="form-control" value="">
								</div>
								<label class="col-sm-1 control-label align-right">*최대 인원</label>
								<div class="col-sm-2">
									<input type="text" name="uId" class="form-control" value="">
								</div>														
							</div>
							<label class="col-sm-10 control-label"></label>								
						</div>
						<!-- 제출 버튼 -->
						<div>
							<div style="text-align: center;">
								<div style="display: inline-block;">
									<button id="btn_modify" class="btn btn-o btn-green">이전으로</button>
								</div>
								<div style="display: inline-block;">
									<button id="btn_modify" class="btn btn-o btn-green">등록하기</button>
								</div>								
							</div>
						</div>
					</div>
					<!-- 세부 정보 등록 끝 -->
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