<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/lot/lotInputSecond.css" rel="stylesheet">


<!--------------- 주문 정보입력 ------------------------>
<div class="home-wrapper">
	<!-- 제목 -->
	<h4
		style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">주문
		정보 입력</h4>
	<!-- 주문내역 테이블 -->
	<div class="panel-heading">주문 내역</div>
	<div class="panel-body">
		<div class="table-overflow">
			<table class="table">
				<thead>
					<tr>
						<th>상품명</th>
						<th>선택상품</th>
						<th>옵션</th>
						<th>수량</th>
						<th></th>
					</tr>
				</thead>
				<tbody class="table">
					<tr>
						<td><span class="userName">에코백</span></td>
						<td>컬러:화이트</td>
						<td>없음</td>
						<td>1개</td>
						<td>
							<div class="btn-group">
								<a class="btn btn-xs btn-round btn-warning"><span
									class="fa fa-pencil"></span>삭제</a>
							</div>
						</td>
					</tr>
					<tr>
						<td><span class="userName">에코백</span></td>
						<td>컬러:화이트</td>
						<td>없음</td>
						<td>1개</td>
						<td>
							<div class="btn-group">
								<a class="btn btn-xs btn-round btn-warning"><span
									class="fa fa-pencil"></span>삭제</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 수령인 정보 입력 -->
	<div class="panel-heading">수령인 정보</div>
	<form class="form-horizontal" role="form">
		<div class="panel-body">
			<!-- 입력 폼 -->
			<!-- 성명 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">성명</label>
				<div class="col-sm-3">
					<input type="text" name="uId" class="form-control" value="">
				</div>
			</div>
			<!-- 연락처 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-3">
					<input type="text" name="uId" class="form-control" value="">
				</div>
			</div>
			<!-- 배송지 주소 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">배송지 주소</label>
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
			<!-- 요청사항 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">요청사항</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="4"></textarea>
				</div>
			</div>

			<!-- 제출 버튼 -->
			<div>
				<div style="text-align: center;">
					<div style="display: inline-block;">
						<a id="#" class="btn btn-o btn-green">주문하기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 수령인 정보 입력 끝 -->
	</form>
</div>
<!---------------주문 정보입력 끝 ------------------------>

<!-- 추가 js  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>


