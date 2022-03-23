<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="yolo.lot.dto.*"%>
<%@page import="java.util.*"%>

<%
PrivatelotVO privateVO;

privateVO = (PrivatelotVO)session.getAttribute("plotVO");

%>

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/lot/lotInputSecond.css"
	rel="stylesheet">

<!--------------- 공간등록 정보입력 ------------------------>
<div class="home-wrapper" id="home-wrapper">
	<!-- 제목 -->
	<h4
		style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">공
		간 등 록</h4>
	<!-- 사업자 등록 여부 입력 -->
	<div class="panel-heading">사업자 등록 여부</div>
	<form class="form-horizontal" method="post"
		enctype="multipart/form-data" >
		<div class="panel-body">
			<!-- 입력 폼 -->
			<!-- 사업자/비사업자 선택 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-3">
					<div class="radio custom-radio">
						<label><input type="radio" name="e_type" value="사업자" onclick="div_OnOff(this.value,'en');"><span
							class="fa fa-circle"></span> 사업자</label>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="radio custom-radio">
						<label><input type="radio" name="e_type" value="비사업자" onclick="div_OnOff(this.value,'en');"><span
							class="fa fa-circle"></span>비사업자</label>
					</div>
				</div>
			</div>
			<div id="en"  style="display:none">
			<!-- 상호명 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">상호명</label>
				<div class="col-sm-8">
					<input type="text" name="e_title" class="form-control" value="">
				</div>
			</div>
			<!-- 사업장 주소 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">사업장 주소</label>
				<div class="col-sm-8 col-md-8">
					<!-- 우편번호 검색 -->

					<div class="input-group addr">
						<input type="text" class="form-control" id="postcode"
							name="postcode" placeholder="우편번호"> <span
							class="input-group-btn"> <input type="button"
							class="btn btn-success form-control" onclick="DaumPostcode()"
							value="우편번호 찾기">
						</span>
					</div>

					<input type="text" class="form-control addr" id="main_address"
						name="main_address" placeholder="주소"> <input type="text"
						class="form-control addr" id="detail_address"
						name="detail_address" placeholder="상세주소">

				</div>
			</div>
			<!-- 사업자 등록번호 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">사업자 등록번호</label>
				<div class="col-sm-2">
					<input type="text" name="e_rnum1" class="form-control" value="">
				</div>
				<div class="col-sm-2">
					<input type="text" name="e_rnum2" class="form-control" value="">
				</div>
				<div class="col-sm-2">
					<input type="text" name="e_rnum3" class="form-control" value="">
				</div>
			</div>
			<!-- 사업자 등록증 첨부 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">사업자 등록증</label>
				<div class="col-sm-8">
					<input type="file" class="file" name="e_file" multiple
						data-show-upload="false" data-show-caption="false"
						data-show-remove="false" accept="*"
						data-browse-class="btn btn-o btn-default"
						data-browse-label="파일 첨부하기">
					<p class="help-block">사업자 등록증을 pdf 파일로 첨부해주세요</p>
				</div>
			</div>

		</div>
		</div>
		<!-- 사업자 등록 여부 입력 끝 -->
		<%
		String pri_info = privateVO.getPri_info();
		int pri_infos[] = {0,0,0};
		if(pri_info != null){
			switch(pri_info){
				case "바로결제": pri_infos[0] = 1; break;
				case "승인결제": pri_infos[1] = 1; break;
				case "승인예약": pri_infos[2] = 1; break;
			}
		}
		
		%>
		
		<!-- 예약 방법 등록 -->
		<div class="panel-heading">예약 방법</div>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-3">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_info" value="바로결제" <%if(pri_infos[0] == 1){ %> checked <%} %>>
						<span class="fa fa-circle"></span>바로결제</label>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_info" value="승인결제" <%if(pri_infos[1] == 1){ %> checked <%} %>>
						<span class="fa fa-circle"></span>승인결제</label>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_info" value="승인예약" <%if(pri_infos[2] == 1){ %> checked <%} %>>
						<span class="fa fa-circle"></span>승인예약</label>
					</div>
				</div>
			</div>
		</div>
		<!-- 예약 방법 등록 끝 -->
		<!-- 계좌 정보 등록 -->
		<%
			String pri_account = privateVO.getPri_account();
			String pri_accountbank = null;
			String pri_accountnum = null;
			String pri_accountname = null;
			int pri_accountbanks[] = {0,0,0,0,0,0,0};
			if(pri_account != null){
				StringTokenizer st = new StringTokenizer(pri_account,"/");
				pri_accountbank = st.nextToken();
				pri_accountnum = st.nextToken();
				pri_accountname = st.nextToken();
				
				switch (pri_accountbank){
					case "농협": pri_accountbanks[0] = 1; break;
					case "국민": pri_accountbanks[1] = 1; break;
					case "우리": pri_accountbanks[2] = 1; break;
					case "신한": pri_accountbanks[3] = 1; break;
					case "기업": pri_accountbanks[4] = 1; break;
				}
				
			}
		%>
		
		<div class="panel-heading">계좌 정보</div>
		<div class="panel-body">
			<!-- 계좌 입력 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-2">
					<select name="pri_accountbank" class="form-control">
						<option>은행선택</option>
						<option <%if(pri_accountbanks[0] == 1) {%> selected  <%} %>>농협</option>
						<option <%if(pri_accountbanks[1] == 1) {%> selected  <%} %>>국민</option>
						<option <%if(pri_accountbanks[2] == 1) {%> selected  <%} %>>우리</option>
						<option <%if(pri_accountbanks[3] == 1) {%> selected  <%} %>>신한</option>
						<option <%if(pri_accountbanks[4] == 1) {%> selected  <%} %>>기업</option>
					</select>
				</div>
				<div class="col-sm-3">
					<input type="text" name="pri_accountnum" class="form-control"
						<%if(pri_accountnum != null){ %> value="<%=pri_accountnum %>" <% } %> placeholder="계좌번호">
				</div>
				<div class="col-sm-2">
					<input type="text" name="pri_accountname" class="form-control"
						<%if(pri_accountname != null){ %> value="<%=pri_accountname %>" <% } %> placeholder="예금주명">
				</div>
			</div>
		</div>
		<!-- 계좌 정보 등록 끝 -->
		
		<%
		
		int pri_weekprice = privateVO.getPri_weekprice();
		int pri_weekendprice = privateVO.getPri_weekendprice();
		%>
		<!-- 가격 기준 등록 -->
		<div class="panel-heading">가격 기준</div>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-2 control-label">주중 기본</label>
				<div class="col-sm-3">
					<input type="text" name="pri_weekprice" class="form-control"
						<%if(pri_weekprice != 0){ %> value="<%=pri_weekprice%>"  <% } %> >
				</div>
				<label class="col-sm-2 control-label align-right">주말/휴일 기본</label>
				<div class="col-sm-3">
					<input type="text" name="pri_weekendprice" class="form-control"
						<%if(pri_weekendprice != 0){ %> value="<%=pri_weekendprice%>"  <% } %>>
				</div>
			</div>
		</div>
		<!-- 가격 기준 등록 끝 -->
		
		<%
			String pri_facility = privateVO.getPri_facility();
			int[] pri_facilities = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			if(pri_facility != null){
				StringTokenizer st = new StringTokenizer(pri_facility,",");
				while(st.hasMoreTokens()){
					String type = st.nextToken();
					switch (type){
						case "TV/프로젝터": pri_facilities[0] = 1 ; break;
						case "인터넷/WIFI": pri_facilities[1] = 1 ; break;
						case "복사/인쇄기": pri_facilities[2] = 1 ; break;
						case "화이트보드": pri_facilities[3] = 1 ; break;
						case "음향/마이크": pri_facilities[4] = 1 ; break;
						case "취사시설": pri_facilities[5] = 1 ; break;
						case "음식물반입가능": pri_facilities[6] = 1 ; break;
						case "주류반입가능": pri_facilities[7] = 1 ; break;
						case "주차": pri_facilities[8] = 1 ; break;
						case "금연": pri_facilities[9] = 1 ; break;
						case "PC/노트북": pri_facilities[10] = 1 ; break;
						case "의자/테이블": pri_facilities[11] = 1 ; break;
					}						   
				}
			}
		%>


		<!-- 세부 정보 등록 -->
		<div class="panel-heading">세부 정보</div>
		<div class="panel-body">
			<!-- 편의시설 선택1 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">편의시설</label>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[0] == 1){ %> checked <% } %>
							value="TV/프로젝터"><span class="fa fa-check"></span>TV/프로젝터</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[1] == 1){ %> checked <% } %>
							value="인터넷/WIFI"><span class="fa fa-check"></span>인터넷/WIFI</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[2] == 1){ %> checked <% } %>
							value="복사/인쇄기"><span class="fa fa-check"></span>복사/인쇄기</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[3] == 1){ %> checked <% } %>
							value="화이트보드"><span class="fa fa-check"></span>화이트보드</label>
					</div>
				</div>
			</div>
			<!-- 편의시설 선택2 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[4] == 1){ %> checked <% } %>
							value="음향/마이크"><span class="fa fa-check"></span>음향/마이크</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[5] == 1){ %> checked <% } %>
							value="취사시설"><span class="fa fa-check"></span>취사시설</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[6] == 1){ %> checked <% } %>
							value="음식물반입가능"><span class="fa fa-check"></span>음식물반입가능</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[7] == 1){ %> checked <% } %>
							value="주류반입가능"><span class="fa fa-check"></span>주류반입가능</label>
					</div>
				</div>
			</div>
			<!-- 편의시설 선택3 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[8] == 1){ %> checked <% } %>
							value="주차"><span class="fa fa-check"></span>주차</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[9] == 1){ %> checked <% } %>
							value="금연"><span class="fa fa-check"></span>금연</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[10] == 1){ %> checked <% } %>
							value="PC/노트북"><span class="fa fa-check"></span>PC/노트북</label>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="checkbox custom-checkbox">
						<label><input name="pri_facility" type="checkbox" <%if(pri_facilities[11] == 1){ %> checked <% } %>
							value="의자/테이블"><span class="fa fa-check"></span>의자/테이블</label>
					</div>
				</div>
				<label class="col-sm-10 control-label"></label>
			</div>
			<%int pri_minpeople  =privateVO.getPri_minpeople();
			  int pri_maxpeople  =privateVO.getPri_maxpeople();
			%>
			<!-- 예약 허용 -->
			<div class="panel-heading">허용인원</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-sm-2 control-label">*최소 인원</label>
						<div class="col-sm-3">
							<input type="text" name="pri_minpeople" class="form-control"
								<%if(pri_minpeople != 0) { %> value="<%=pri_minpeople%>"  <% } %>>
						</div>
						<label class="col-sm-2 control-label align-right">*최대 인원</label>
						<div class="col-sm-3">
							<input type="text" name="pri_maxpeople" class="form-control"
							 <%if(pri_maxpeople != 0){ %> value="<%=pri_maxpeople%>"  <% } %>>
						</div>
					</div>
					<label class="col-sm-10 control-label"></label>
				</div>
				<!-- 제출 버튼 -->
				<div>
					<div style="text-align: center;">
						
						<div style="display: inline-block;">
							<button id="btn_next" class="btn btn-o btn-green">다음으로</button>
						</div>
					</div>
				</div>

				<!-- 제출 버튼 끝 -->
			<!-- panel-body 끝 -->
		</div>
		<!-- 세부 정보 등록 끝 -->
	</form>
</div>
<!---------------공간등록 정보입력 끝 ------------------------>

<!-- 사업자/비사업자에  따른 hidden Div -->
	<script>
		function div_OnOff(v,id){
		 // 라디오 버튼 value 값 조건 비교
		 if(v == "사업자"){
		  document.getElementById(id).style.display = ""; 
		 }else{
		  document.getElementById(id).style.display = "none"; 
		 }
		}
	</script>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn_next").click(function(){
			$('form').attr('action','/Yolo/host/LotModifyLast.host');
			$(this).submit();
		});
	});
</script>


<!-- 추가 js  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
