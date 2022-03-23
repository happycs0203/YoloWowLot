<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>상품 정보 입력</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">

<!-- 추가 속성 CSS -->
<link href="/Yolo/css_yolo/cssView/comMarket/3_fleaInput.css" rel="stylesheet"> 


</head>
<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<div id="wrapper" class="full">
		<div id="mapView" class="min">
			<div class="mapPlaceholder">
				<span class="fa fa-spin fa-spinner"></span> Loading map...
			</div>
		</div>
		<div id="content" class="max">
			<!-- ------------------------------------------------------- -->
			<div class="tables">
				<div class="row">
					<div class="col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<h4>플리마켓 정보 입력</h4>
								<hr>
								<br />
								<form class="form-horizontal" role="form">

									<!-- 상품 종류(체크리스트) -->
									<div class="form-group">
										<label class="col-sm-2 control-label">Category 선택</label>
										<div class="col-sm-10">
											<div class="radio custom-radio">
												<label><input type="radio" name="radio1"
													checked="checked"> <span class="fa fa-circle"></span>
													fashion </label> <label><input type="radio" name="radio1">
													<span class="fa fa-circle"></span> living </label> <label><input
													type="radio" name="radio1"> <span
													class="fa fa-circle"></span> food </label> </label> <label><input
													type="radio" name="radio1"> <span
													class="fa fa-circle"></span> cosmetics </label> </label> <label><input
													type="radio" name="radio1"> <span
													class="fa fa-circle"></span> child </label> </label> <label><input
													type="radio" name="radio1"> <span
													class="fa fa-circle"></span> others </label>
											</div>
										</div>
									</div>

									<!-- 상품 명 -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 명</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="autocomplete">
											<p class="help-block" />
										</div>
									</div>

									<!-- 상품 가격 -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 가격</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="autocomplete">
											<p class="help-block" />
										</div>
									</div>

									<!-- 상품 옵션 -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 옵션</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" id="autocomplete"
												placeholder="옵션 명">
											<p class="help-block" />
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="autocomplete"
												placeholder="옵션 가격">
											<p class="help-block" />
										</div>
									<div class="col-sm-2">
										<button type="button" class="btn btn-green">+</button>
										</div>
									</div>

									<!-- 상품 이미지 첨부 (썸네일) -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 이미지 첨부(썸네일)</label>
										<div class="col-sm-9">
											<input type="file" class="file" multiple
												data-show-upload="false" data-show-caption="false"
												data-show-remove="false" accept="image/jpeg,image/png"
												data-browse-class="btn btn-o btn-default"
												data-browse-label="Browse Images">
										</div>
									</div>

									<!-- 상품 상세 이미지 첨부 -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 상세 이미지 첨부</label>
										<div class="col-sm-9">
											<input type="file" class="file" multiple
												data-show-upload="false" data-show-caption="false"
												data-show-remove="false" accept="image/jpeg,image/png"
												data-browse-class="btn btn-o btn-default"
												data-browse-label="Browse Images">
										</div>
									</div>

									<!-- 상품설명 -->
									<div class="form-group">
										<label class="col-sm-2 control-label">상품 설명</label>
										<div class="col-sm-9">
											<textarea class="form-control" rows="15"></textarea>
										</div>
									</div>

									<!-- 추가/ 신청하기 버튼 -->
									<div id="sumbtn" class="col-md-12">
										<div class="col-md-6">
											<button class="col-md-2 btn btn-round btn-o btn-green add">추가하기</button>
										</div>
										<div class="col-md-6">
											<button class="col-md-2 btn btn-round btn-o btn-green app">신청하기</button>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- / tables -->


			<!-- ------------------------------------------------------- -->
			<!-- Footer -->
			<%@include file="/view/common/footer.jsp"%>

		</div>
		<!-- / content -->
		<div class="clearfix"></div>
	</div>
	<!-- / wrapper -->

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