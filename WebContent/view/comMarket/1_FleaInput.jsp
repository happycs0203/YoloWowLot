<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>플리마켓 등록 페이지 1</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">

<!-- 추가 CSS -->
<link href="/Yolo/css_yolo/cssView/comMarket/inputStarRating.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/comMarket/fileUpload.css" rel="stylesheet"> 
<link href="/Yolo/css_yolo/cssView/comMarket/1_fleaInput.css" rel="stylesheet"> 

<style>
.home-content{
    min-height: 561px;
}

</style>      

</head>
<body class="notransition no-hidden">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<div id="wrapper" class="full">
		<div id="mapView" class="min">
			<div class="mapPlaceholder">
				<span class="fa fa-spin fa-spinner"></span> Loading map...
			</div>
		</div>
		<div id="content" class="max">

			<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
			<div class="home-content">
				<div class="home-wrapper">
					<div class="panel-group" id="accordion">

						<!-- 처음 등록이 아닌 사람 -->
						<div class="panel panel-default dd">
							<a href="#ddPanel-2"
								class="btn btn-o btn-default btn-block btn-lg align-left"
								data-toggle="collapse" data-parent="#accordion"> 모임 상품 등록이
								처음이 아니신가요?<span class="fa fa-angle-down pull-right" />
							</a>

							<!-- 처음이 아닌 사람 본문 -->
							<div id="ddPanel-2" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="panel panel-default">
										<div class="panel-heading">모임 선택하기</div>
										<div class="table-overflow">
											<table class="table" id="inboxTable">
												<tbody class="table">
													<tr>
														<td><input type="checkbox"></td>
														<td>금천구 가죽공방 모임</td>
														<td>2017-06-12 오후 3시</td>
														<td>후기 X</td>
													</tr>
													<tr>
														<td><input type="checkbox"></td>
														<td>ㅇㅇㅇㅇ</td>
														<td>ㅇㅇㅇ</td>
														<td>ㅇㅇ</td>
													</tr>
													<tr>
														<td><input type="checkbox"></td>
														<td>ㅇㅇㅇ</td>
														<td>ㅇㅇㅇㅇㅇ</td>
														<td>ㅇㅇㅇㅇㅇㅇ</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="epilogue">
										<h5>후기 작성하기</h5>
										<div id="hearts" class="starrr"></div>
										<hr>
									</div>
									<div class="checktable">
										<input class="form-control" type="text"
											placeholder="Readonly input here…" readonly>
									</div>
									<textarea class="form-control" rows="10"></textarea>
									<div class="form-group">
										<label class="col-sm-2 control-label">File upload</label>
										<div class="col-sm-10">
											<input type="file" class="file" multiple
												data-show-upload="false" data-show-caption="false"
												data-show-remove="false" accept="image/jpeg,image/png"
												data-browse-class="btn btn-o btn-default"
												data-browse-label="Browse Images">
										</div>
									</div>
									<!-- 다음버튼 -->
									<div id="nextbtn" class="col-md-12">
										<div class="col-md-5"></div>
										<button class="col-md-2 btn btn-round btn-o btn-green">다음</button>
										<div class="col-md-5"></div>
									</div>
								</div>
							</div>
							<!-- / 처음이 아닌 사람 본문 -->
						</div>
						<!-- / 처음 등록이 아닌 사람 -->

						<!-- 처음 등록하는 사람 -->
						<div class="panel panel-default dd">
							<a href="#ddPanel-3"
								class="btn btn-o btn-default btn-block btn-lg align-left"
								data-toggle="collapse" data-parent="#accordion"> 모임 상품 등록이
								처음이신가요?<span class="fa fa-angle-down pull-right" />
							</a>

							<!-- 처음 등록하는 사람 본문 -->
							<div id="ddPanel-3" class="panel-collapse collapse">
								<div class="panel-body">
									<!-- 처음인 사람 -->
									<div class="txtupload">
										<h5>후기 작성하기</h5>
										<h6>플리마켓 참여에 필요한 정보를 양식에 맞게 작성하여 첨부해주시기 바랍니다.</h6>
										<hr>
										<br />
										<br />
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">File upload</label> <a>양식
											다운로드 : </a><a href="">문서파일</a><br />
										<br />
										<div class="col-sm-10">
											<input type="file" class="file" multiple
												data-show-upload="false" data-show-caption="false"
												data-show-remove="false" accept="*"
												data-browse-class="btn btn-o btn-default"
												data-browse-label="Browse File">
										</div>
									</div>
									<!-- 다음 버튼 -->
									<div id="nextbtn" class="col-md-12">
										<div class="col-md-5"></div>
										<button class="col-md-2 btn btn-round btn-o btn-green">다
											음</button>
										<div class="col-md-5"></div>
									</div>
								</div>
							</div>
							<!-- / 처음 등록하는 사람 본문-->
						</div>
						<!-- / 처음 등록하는 사람 -->

					</div>
					<!-- / panel-group -->
				</div>
				<!-- / home-wrapper -->
			</div>
			<!-- / blog-content -->
			
			<!-- ------------------------------------------------------- -->
			<!-- Footer -->
										<%@include file="/view/common/footer.jsp"%>

		</div>
		<!-- /content -->
		<div class="clearfix"></div>
	</div>
	<!-- / wrapper -->


	<script src="/Yolo/js/jquery-2.1.1.min.js"></script>
	<script src="/Yolo/js/jquery-ui.min.js"></script>
	<script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
	<script src="/Yolo/js/jquery.placeholder.js"></script>
	<script src="/Yolo/js/bootstrap.js"></script>
	<script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
	<script src="/Yolo/js/jquery.visible.js"></script>
	<script src="/Yolo/js/jquery.slimscroll.min.js"></script>
	<script
		src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places"
		type="text/javascript"></script>
	<script src="/Yolo/js/jquery.mjs.nestedSortable.js"></script>
	<script src="/Yolo/js/infobox.js"></script>
	<script src="/Yolo/js/jquery.tagsinput.min.js"></script>
	<script src="/Yolo/js/bootstrap-datepicker.js"></script>
	<script src="/Yolo/js/app.js" type="text/javascript"></script>
	<script src="/Yolo/js/sortable.js"></script>
	<script src="/Yolo/js/blog.js" type="text/javascript"></script>
	<script src="/Yolo/js/json2.js"></script>
	<script src="/Yolo/js/underscore.js"></script>
	<script src="/Yolo/js/moment-2.5.1.js"></script>
	<script src="/Yolo/js/clndr.js"></script>
	<script src="/Yolo/js/fileinput.min.js"></script>
	<script src="/Yolo/js/calendar.js"></script>

	<!-- 추가 JS -->
	<script src="/Yolo/js_yolo/comMarket/inputStarRating.js"></script>

</body>
</html>