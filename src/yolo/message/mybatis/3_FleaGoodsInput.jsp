<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 추가 속성 CSS -->
<link href="/Yolo/css_yolo/cssView/comMarket/3_fleaInput.css" rel="stylesheet">


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
									<label>
										<input type="radio" name="radio1" checked="checked" value="fashion"><span class="fa fa-circle"></span>fashion 
									</label> 
									<label>
										<input type="radio" name="radio1" value="living"><span class="fa fa-circle"></span>living 
									</label> 
									<label>
										<input type="radio" name="radio1" value="food"> <span class="fa fa-circle"></span>food 
									</label> 
									<label>
										<input type="radio" name="radio1" value="cosmetics"><span class="fa fa-circle"></span>cosmetics 
									</label> 
									<label>
										<input type="radio" name="radio1" value="child"> <span class="fa fa-circle"></span>child 
									</label> 
									<label>
										<input type="radio" name="radio1" value="others"><span class="fa fa-circle"></span> others 
									</label>
								</div>
							</div>
						</div>

						<!-- 상품 명 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">상품 명</label>
							<div class="col-sm-3">
								<input type="text" name="g_title" class="form-control" id="autocomplete">
								<p class="help-block" />
							</div>
						</div>

						<!-- 상품 가격 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">상품 가격</label>
							<div class="col-sm-3">
								<input type="text" name="g_price" class="form-control" id="autocomplete">
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
								<a href="/Yolo/mypage/myReg/MarketMyList.myreg"
									class="col-md-2 btn btn-round btn-o btn-green app">신청하기</a>
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

<!-- 추가JS  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
