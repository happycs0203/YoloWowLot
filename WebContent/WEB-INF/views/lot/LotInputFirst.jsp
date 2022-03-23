<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="yolo.lot.dto.*"%>
<%@page import="java.util.*"%>


<%
PrivatelotVO privateVO;

	if(session.getAttribute("privateVO") == null){
		privateVO = new PrivatelotVO();
	}else{
		privateVO = (PrivatelotVO)session.getAttribute("privateVO");
	}

%>
	
	
	
<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/lot/lotInputSecond.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/clubInput.css" rel="stylesheet">



<!--------------- 공간등록 정보입력 ------------------------>
<div class="home-wrapper" id="home-wrapper">

	<!-- 제목 -->
	<h4
		style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">공간
		등록하기</h4>

	<!------- 공간 유형 선택 ----------->
	<div class="panel-heading">공간 유형</div>
	<form class="form-horizontal" method="post" enctype="multipart/form-data" action="/Yolo/lot/LotInputSecond.lot">
	<div class="panel-body">
		<div class="form-group">
		
			<% String pri_type=null;
			   int[] pri_types= {0,0,0,0,0,0,0,0,0,0,0,0};

			   pri_type = privateVO.getPri_type();

			   
			   
			   if(pri_type != null){
				   StringTokenizer st = new StringTokenizer(pri_type,",");
				   while(st.hasMoreTokens()){
					   String type = st.nextToken();
					   switch (type){
					  
					   case "회의실": pri_types[0] = 1 ; break;
					   case "세미나실": pri_types[1] = 1 ; break;
					   case "작업실": pri_types[2] = 1 ; break;
					   case "레저시설": pri_types[3] = 1 ; break;
					   case "파티룸": pri_types[4] = 1 ; break;
					   case "스터디룸": pri_types[5] = 1 ; break;
					   case "공연장": pri_types[6] = 1 ; break;
					   case "연습실": pri_types[7] = 1 ; break;
					   case "다목적실": pri_types[8] = 1 ; break;
					   case "스토어": pri_types[9] = 1 ; break;
					   case "농장": pri_types[10] = 1 ; break;
					   case "루프탑": pri_types[11] = 1 ; break;

					   }
					   
				   }
			   }
				
			%>
			<!-- 공간유형 선택 -->
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox center-block">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[0] == 1){ %> checked <%} %> value="회의실"><span>회의실</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox center-block">
							<label><input name="pri_type" type="checkbox"  <% if(pri_types[1] == 1){ %> checked <%} %> value="세미나실"><span>세미나실</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox center-block">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[2] == 1){ %> checked <%} %> value="작업실"><span>작업실</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[3] == 1){ %> checked <%} %> value="레저시설"><span>레저시설</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[4] == 1){ %> checked <%} %> value="파티룸"><span>파티룸</span></label>
						</div>

						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox"  <% if(pri_types[5] == 1){ %> checked <%} %> value="스터디룸"><span>스터디룸</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[6] == 1){ %> checked <%} %> value="공연장"><span>공연장</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[7] == 1){ %> checked <%} %> value="연습실"><span>연습실</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[8] == 1){ %> checked <%} %> value="다목적실"><span>다목적실</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[9] == 1){ %> checked <% } %> value="스토어"><span>스토어</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[10] == 1){ %> checked <%} %> value="농장"><span>농장</span></label>
						</div>
						<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
							<label><input name="pri_type" type="checkbox" <% if(pri_types[11] == 1){ %> checked <%} %> value="루프탑"><span>루프탑</span></label>
						</div>
			</div>
			<!-- 공간유형 선택 끝 -->
		</div>
		<!-- panel body 끝 -->
			<!------- 예약 유형 선택 ----------->
		<div class="panel-heading">예약 유형</div>
		<div class="panel-body">
			<!-- 공간유형 선택 -->
			<%
			int[] pri_charges = {0,0};
			int[] pri_booktypes = {0,0};
			if(privateVO != null){
				System.out.println("들어감");
			
			  String pri_charge = privateVO.getPri_charge();
			  String pri_booktype = privateVO.getPri_booktype();
			  
				if(pri_charge != null){
					switch (pri_charge){
						case "유료": pri_charges[0] = 1;
						case "무료": pri_charges[1] = 1;
					}
				}
				
				if(pri_booktype != null){
					switch (pri_booktype){
						case "일단위": pri_booktypes[0] = 1;
						case "시간단위": pri_booktypes[1] = 1;
					}
				}
			}
			
			%>
			<div class="form-group">

				<div class="col-xs-6 col-sm-6">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_charge" <% if(pri_charges[0] == 1){ %> checked <%} %> value="유료"><span
							class="fa fa-circle"></span> 유료</label>
					</div>
				</div>
				<div class="col-xs-6 col-sm-6">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_charge" <% if(pri_charges[1] == 1){ %> checked <%} %> value="무료"><span
							class="fa fa-circle"></span> 무료</label>
					</div>
				</div>
				<div class="col-xs-6 col-sm-6">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_booktype" <% if(pri_booktypes[0] == 1){ %> checked <%} %> value="시간단위"><span
							class="fa fa-circle"></span> 시간단위</label>
					</div>
				</div>
				<div class="col-xs-6 col-sm-6">
					<div class="radio custom-radio">
						<label><input type="radio" name="pri_booktype" <% if(pri_booktypes[1] == 1){ %> checked <%} %> value="일단위"><span
							class="fa fa-circle"></span> 일단위</label>
					</div>
				</div>

			</div>
			<!-- 예약유형 선택 끝 -->
		</div>
		<!-- panel body 끝 -->
			<!-- 공간 정보 입력 -->

		<div class="panel-heading">공간정보 입력하기</div>
		<div class="panel-body">
			<!-- 입력 폼 -->
			<% String pri_title = privateVO.getPri_title();
			   String pri_addr = privateVO.getPri_addr();
			   String pri_tag = privateVO.getPri_tag();
			   String pri_content= privateVO.getPri_content();
			   String lot_postcode =null;
			   String lot_main_address =null;
			   String lot_detail_address =null;
			   if(pri_addr != null){
				   StringTokenizer st = new StringTokenizer(pri_addr,"/");
				   lot_postcode = st.nextToken();
				   lot_main_address = st.nextToken();
				   lot_detail_address = st.nextToken();
			   }
			   
			%>
			
			<!-- 공간명 입력 -->
			<div class="form-group">
			<label class="col-sm-2 control-label">공간명</label>
			<div class="col-sm-8">
				<input type="text" name="pri_title" class="form-control" <% if(pri_title != null) {%> value="<%=pri_title%>" <%}%> >
			</div>
			</div>
			<!-- 주 소 입력 -->
			<div class="form-group">
			<label class="col-sm-2 control-label">주 소</label>
			<div class="col-sm-8 col-md-8">
					<!-- 우편번호 검색 -->

					<div class="input-group addr">
						<input type="text" class="form-control" id="postcode"
							name="lot_postcode" placeholder="우편번호" <% if(lot_postcode != null) {%> value="<%=lot_postcode%>" <%}%> > <span
							class="input-group-btn"> <input type="button"
							class="btn btn-success form-control" onclick="DaumPostcode()"
							value="우편번호 찾기">
						</span>
					</div>

					<input type="text" class="form-control addr" id="main_address"
						name="lot_main_address" placeholder="주소" <% if(lot_main_address != null) {%> value="<%=lot_main_address%>" <%}%>  >

					<input type="text" class="form-control addr" id="detail_address"
						name="lot_detail_address" placeholder="상세주소" <% if(lot_detail_address != null) {%> value="<%=lot_detail_address%>" <%}%> >

			</div>
			</div>
			<!-- 태그 입력 -->
			<div class="form-group">
			<label class="col-sm-2 control-label">해시 태그</label>
			<div class="col-sm-8">
				<input type="text" <% if(pri_tag != null) {%> value="<%=pri_tag%>" <%}%> class="form-control" name="pri_tag" id="tags"
					placeholder="#내용 으로 적어주세요" style="display: none;">

			</div>
			</div>
			<!-- 공간 설정 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">공간 소개</label>
				<div class="col-sm-8">
					<textarea class="form-control"  name="pri_content" rows="5"><% if(pri_content != null) {%> <%=pri_content%> <%}%></textarea>
				</div>
			</div>

			<!-- 공간 이미지 선택 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">이미지</label>
				<div class="col-sm-8">
					<input type="file" name="file" class="file" multiple
						data-show-upload="false" data-show-caption="false"
						data-show-remove="false" accept="image/jpeg,image/png"
						data-browse-class="btn btn-o btn-default"
						data-browse-label="이미지 첨부하기">
					<p class="help-block">등록할 공간의 이미지를 첨부해주세요.</p>
				</div>
			</div>


			<!-- 제출버튼 -->
			<div>
				<div style="text-align: center;">
					<div style="display: inline-block;">
						<button type="submit" id="btn_next" class="btn btn-o btn-green">다음으로</button>
					</div>
				</div>
			</div>
			<!-- 제출버튼 끝 -->
		</form>

	</div>
	<!-- panel body 끝 -->

</div>
<!-- home wrapper 끝 -->



<!-- 추가 js  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>

