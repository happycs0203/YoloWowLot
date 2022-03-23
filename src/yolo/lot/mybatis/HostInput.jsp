<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">

<!---------------호스트 등록하기 ------------------------>
<div class="home-wrapper">

	<h4
		style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">HOST
		REGISTER</h4>
	<div class="panel-body">

		<form class="form-horizontal" method="post" role="form" action="/Yolo/host/HostInput_Ok.host" enctype="multipart/form-data">
		
			<!-- 호스트명  -->
			<div class="form-group">
				<label class="col-sm-2 control-label">호스트 명</label>
				<div class="col-sm-8">
					<input type="text" name="h_name" class="form-control" value="">
				</div>
			</div>
			<!-- 호스트명 끝-->

			<!-- 호스트 소개글 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">소개글</label>
				<div class="col-sm-8">
					<textarea name="h_content" class="form-control" rows="6" value=""></textarea>
				</div>
			</div>
			<!-- 호스트 소개글 끝-->

			<!-- 호스트 등록버튼-->
			<div style="text-align: center;">
				<div style="display: inline-block;">
					<button id="btn_register" type="submit"
						class="btn btn-o btn-green">호스트 등록하기</button>
				</div>
			</div>
			<!-- 호스트 등록버튼 끝 -->


		</form>
	</div>


</div>


<!---------------호스트 등록하기 끝 ------------------------>


<!-- content 끝 -->

<!-- 추가 js  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>


