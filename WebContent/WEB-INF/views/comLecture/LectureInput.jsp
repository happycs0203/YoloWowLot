<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Lecture/Lecture_inputstyle.css" rel="stylesheet">

			<!--------------- 세미나/강연 정보입력 ------------------------>
			<div class="home-wrapper" id="home-wrapper">
				<!-- 제목 -->
				<h4 style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">세미나/강연 등록하기</h4>
				<!-- 세미나/강연 정보 입력 -->
				<div class="panel-heading">세미나/강연 정보 입력</div>
				<form class="form-horizontal" role="form" method="get" action="LectureInputOk.lecture">
					<div class="panel-body">
						<!-- 입력 폼 -->
							<!-- 제목 입력 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">제목</label>
								<div class="col-sm-8">
									<input type="text" name="l_title" class="form-control" value="">
								</div>
							</div>
							<!-- 주제 입력 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">주제</label>
								<div class="col-sm-8">
									<input type="text" name="l_type" class="form-control" value="">
								</div>
							</div>
							<!-- 최대 인원 입력 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">최대 인원</label>
								<div class="col-sm-8">
									<input type="text" name="l_people" class="form-control" value="">
								</div>
							</div>
							<!-- 모집 기간 설정 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">모집기간</label>
								<div class="col-sm-3">
									<input type="date" class="form-control" value="">
								</div>
								<label class="col-sm-1 align-center" style="padding-top:7px;">부터</label>
								<div class="col-sm-3">
									<input type="date" class="form-control" value="">
								</div>							
							</div>
							<!-- 시작 일시 선택 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">시작 일시</label>
								<div class="col-sm-3">
									<input type="date" class="form-control" value="">
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
											<li class="active"><input type="radio" checked="checked" value="00:00"><a href="#">오전 12:00</a></li>
											<li><input type="radio" value="00:30"><a href="#">오전 12:30</a></li><li><input type="radio"   value="01:00"><a href="#">오전 01:00</a></li>
											<li><input type="radio" value="01:30"><a href="#">오전 01:30</a></li><li><input type="radio"   value="02:00"><a href="#">오전 02:00</a></li>
											<li><input type="radio" value="02:30"><a href="#">오전 02:30</a></li><li><input type="radio"   value="03:00"><a href="#">오전 03:00</a></li>
											<li><input type="radio"   value="03:30"><a href="#">오전 03:30</a></li><li><input type="radio"   value="04:00"><a href="#">오전 04:00</a></li>
											<li><input type="radio"   value="04:30"><a href="#">오전 04:30</a></li><li><input type="radio"   value="05:00"><a href="#">오전 05:00</a></li>
											<li><input type="radio"   value="05:30"><a href="#">오전 05:30</a></li><li><input type="radio"   value="06:00"><a href="#">오전 06:00</a></li>
											<li><input type="radio"   value="06:30"><a href="#">오전 06:30</a></li><li><input type="radio"   value="07:00"><a href="#">오전 07:00</a></li>
											<li><input type="radio"   value="07:30"><a href="#">오전 07:30</a></li><li><input type="radio"   value="08:00"><a href="#">오전 08:00</a></li>
											<li><input type="radio"   value="08:30"><a href="#">오전 08:30</a></li><li><input type="radio"   value="09:00"><a href="#">오전 09:00</a></li>
											<li><input type="radio"   value="09:30"><a href="#">오전 09:30</a></li><li><input type="radio"   value="10:00"><a href="#">오전 10:00</a></li>
											<li><input type="radio"   value="10:30"><a href="#">오전 10:30</a></li><li><input type="radio"   value="11:00"><a href="#">오전 11:00</a></li>
											<li><input type="radio"   value="11:30"><a href="#">오전 11:30</a></li><li><input type="radio"   value="12:00"><a href="#">오후 12:00</a></li>
											<li><input type="radio"   value="12:30"><a href="#">오후 12:30</a></li><li><input type="radio"   value="13:00"><a href="#">오후 01:00</a></li>
											<li><input type="radio"   value="13:30"><a href="#">오후 01:30</a></li><li><input type="radio"   value="14:00"><a href="#">오후 02:00</a></li>
											<li><input type="radio"   value="14:30"><a href="#">오후 02:30</a></li><li><input type="radio"   value="15:00"><a href="#">오후 03:00</a></li>
											<li><input type="radio"   value="15:30"><a href="#">오후 03:30</a></li><li><input type="radio"   value="16:00"><a href="#">오후 04:00</a></li>
											<li><input type="radio"   value="16:30"><a href="#">오후 04:30</a></li><li><input type="radio"   value="17:00"><a href="#">오후 05:00</a></li>
											<li><input type="radio"   value="17:30"><a href="#">오후 05:30</a></li><li><input type="radio"   value="18:00"><a href="#">오후 06:00</a></li>
											<li><input type="radio"   value="18:30"><a href="#">오후 06:30</a></li><li><input type="radio"   value="19:00"><a href="#">오후 07:00</a></li>
											<li><input type="radio"   value="19:30"><a href="#">오후 07:30</a></li><li><input type="radio"   value="20:00"><a href="#">오후 08:00</a></li>
											<li><input type="radio"   value="20:30"><a href="#">오후 08:30</a></li><li><input type="radio"   value="21:00"><a href="#">오후 09:00</a></li>
											<li><input type="radio"   value="21:30"><a href="#">오후 09:30</a></li><li><input type="radio"   value="22:00"><a href="#">오후 10:00</a></li>
											<li><input type="radio"   value="22:30"><a href="#">오후 10:30</a></li><li><input type="radio"   value="23:00"><a href="#">오후 11:00</a></li>
											<li><input type="radio"   value="23:30"><a href="#">오후 11:30</a></li>										
										</ul>
									</div>
								</div>
							</div>
							<!-- 종료 일시 선택 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">종료 일시</label>
								<div class="col-sm-3">
									<input type="date" class="form-control" value="">
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
											<li class="active"><input type="radio"   checked="checked" value="00:00"><a href="#">오전 12:00</a></li>
											<li><input type="radio"   value="00:30"><a href="#">오전 12:30</a></li><li><input type="radio"   value="01:00"><a href="#">오전 01:00</a></li>
											<li><input type="radio"   value="01:30"><a href="#">오전 01:30</a></li><li><input type="radio"   value="02:00"><a href="#">오전 02:00</a></li>
											<li><input type="radio"   value="02:30"><a href="#">오전 02:30</a></li><li><input type="radio"   value="03:00"><a href="#">오전 03:00</a></li>
											<li><input type="radio"   value="03:30"><a href="#">오전 03:30</a></li><li><input type="radio"   value="04:00"><a href="#">오전 04:00</a></li>
											<li><input type="radio"   value="04:30"><a href="#">오전 04:30</a></li><li><input type="radio"   value="05:00"><a href="#">오전 05:00</a></li>
											<li><input type="radio"   value="05:30"><a href="#">오전 05:30</a></li><li><input type="radio"   value="06:00"><a href="#">오전 06:00</a></li>
											<li><input type="radio"   value="06:30"><a href="#">오전 06:30</a></li><li><input type="radio"   value="07:00"><a href="#">오전 07:00</a></li>
											<li><input type="radio"   value="07:30"><a href="#">오전 07:30</a></li><li><input type="radio"   value="08:00"><a href="#">오전 08:00</a></li>
											<li><input type="radio"   value="08:30"><a href="#">오전 08:30</a></li><li><input type="radio"   value="09:00"><a href="#">오전 09:00</a></li>
											<li><input type="radio"   value="09:30"><a href="#">오전 09:30</a></li><li><input type="radio"   value="10:00"><a href="#">오전 10:00</a></li>
											<li><input type="radio"   value="10:30"><a href="#">오전 10:30</a></li><li><input type="radio"   value="11:00"><a href="#">오전 11:00</a></li>
											<li><input type="radio"   value="11:30"><a href="#">오전 11:30</a></li><li><input type="radio"   value="12:00"><a href="#">오후 12:00</a></li>
											<li><input type="radio"   value="12:30"><a href="#">오후 12:30</a></li><li><input type="radio"   value="13:00"><a href="#">오후 01:00</a></li>
											<li><input type="radio"   value="13:30"><a href="#">오후 01:30</a></li><li><input type="radio"   value="14:00"><a href="#">오후 02:00</a></li>
											<li><input type="radio"   value="14:30"><a href="#">오후 02:30</a></li><li><input type="radio"   value="15:00"><a href="#">오후 03:00</a></li>
											<li><input type="radio"   value="15:30"><a href="#">오후 03:30</a></li><li><input type="radio"   value="16:00"><a href="#">오후 04:00</a></li>
											<li><input type="radio"   value="16:30"><a href="#">오후 04:30</a></li><li><input type="radio"   value="17:00"><a href="#">오후 05:00</a></li>
											<li><input type="radio"   value="17:30"><a href="#">오후 05:30</a></li><li><input type="radio"   value="18:00"><a href="#">오후 06:00</a></li>
											<li><input type="radio"   value="18:30"><a href="#">오후 06:30</a></li><li><input type="radio"   value="19:00"><a href="#">오후 07:00</a></li>
											<li><input type="radio"   value="19:30"><a href="#">오후 07:30</a></li><li><input type="radio"   value="20:00"><a href="#">오후 08:00</a></li>
											<li><input type="radio"   value="20:30"><a href="#">오후 08:30</a></li><li><input type="radio"   value="21:00"><a href="#">오후 09:00</a></li>
											<li><input type="radio"   value="21:30"><a href="#">오후 09:30</a></li><li><input type="radio"   value="22:00"><a href="#">오후 10:00</a></li>
											<li><input type="radio"   value="22:30"><a href="#">오후 10:30</a></li><li><input type="radio"   value="23:00"><a href="#">오후 11:00</a></li>
											<li><input type="radio"   value="23:30"><a href="#">오후 11:30</a></li>											
										</ul>
									</div>
								</div>
							</div>
							<!-- 썸네일 이미지 선택 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">대표이미지</label>
								<div class="col-sm-8">
									<input type="file" name="thumImgFile" class="file" multiple data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-o btn-default" data-browse-label="이미지 첨부하기">
									<p class="help-block">대표 이미지를 첨부해주세요.</p>
								</div>
							</div>
							<!-- 설명란 입력 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">설명란</label>
								<div class="col-sm-8">
									<textarea class="form-control" rows="4" name="l_content"></textarea>
								</div>
							</div>
						
					</div><!-- 세미나/강연 정보 입력 끝 -->
					<!-- 서류 등록 -->
					<div class="panel-heading">서류 등록하기</div>
					<div class="panel-body">
							<!-- 썸네일 이미지 선택 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">증빙서류 제출</label>
								<div class="col-sm-8">
									<p class="help-block">예시) 경력증명서</p>
									<input type="file" class="file" multiple data-show-upload="false" data-show-caption="false" 
									data-show-remove="false" accept="*" data-browse-class="btn btn-o btn-default" data-browse-label="파일 첨부하기">
								</div>
							</div>					
							<!-- 썸네일 이미지 선택 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">제안서 제출</label>
								<div class="col-sm-8">
									<p class="help-block">양식 다운로드 : <a href="#">문서파일.hwp</a></p>
									<input type="file" class="file" multiple data-show-upload="false" data-show-caption="false" 
									data-show-remove="false" accept="*" data-browse-class="btn btn-o btn-default" data-browse-label="파일 첨부하기">
								</div>
							</div>				
						<!-- 제출 버튼 -->
						<div>
							<div style="text-align: center;">
								<div style="display: inline-block;">
									<button type="submit" id="btn_modify" class="btn btn-o btn-green">신청하기</button>
								</div>
							</div>					
						</div>				
					</div><!-- 서류 등록 끝 -->
				</form>
			</div>
			<!---------------세미나/강연 정보입력 끝 ------------------------>