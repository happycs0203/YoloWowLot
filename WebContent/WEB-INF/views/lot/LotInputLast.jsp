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

<!--------------- 공간등록 정보입력 ------------------------>
<div class="home-wrapper" id="home-wrapper">
	<!-- 제목 -->
	<h4
		style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">공
		간 등 록</h4>
	
	
	<form class="form-horizontal" method="post" enctype="multipart/form-data" >
		
		<div class="panel-body">
			<!-- 주중 운영시간 선택  -->
			            <div class="panel-heading">주중 운영시간</div>	
						<div class="panel-body">
						<div class="form-group">
							<!-- 시작시간 선택 끝 -->
							<label class="col-sm-2 align-right" style="padding-top: 7px;">시작시간</label>
							<div class="col-sm-4">
							
							<%
									String pri_weekdayo = privateVO.getPri_weekdayo();
									String pri_weekdaye = privateVO.getPri_weekdaye();
									String pri_weekendo = privateVO.getPri_weekendo();
									String pri_weekende = privateVO.getPri_weekende();
									String weekday = null;
									int pri_weekdayos[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
									int pri_weekdayes[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
									int pri_weekendos[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
									int pri_weekendes[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
									if(pri_weekdayo != null){
									switch (pri_weekdayo){
									   case "08:00": pri_weekdayos[0] = 1; weekday="오전 08:00"; break;
									   case "09:00": pri_weekdayos[1] = 1 ; weekday="오전 09:00"; break;
									   case "10:00": pri_weekdayos[2] = 1 ; weekday="오전 10:00"; break;
									   case "11:00": pri_weekdayos[3] = 1 ; weekday="오전 11:00"; break;
									   case "12:00": pri_weekdayos[4] = 1 ; weekday="오전 12:00"; break;
									   case "13:00": pri_weekdayos[5] = 1 ; weekday="오후 01:00"; break;
									   case "14:00": pri_weekdayos[6] = 1 ; weekday="오후 02:00"; break;
									   case "15:00": pri_weekdayos[7] = 1 ; weekday="오후 03:00"; break;
									   case "16:00": pri_weekdayos[8] = 1 ; weekday="오후 04:00"; break;
									   case "17:00": pri_weekdayos[9] = 1 ; weekday="오후 05:00"; break;
									   case "18:00": pri_weekdayos[10] = 1 ; weekday="오후 06:00"; break;
									   case "19:00": pri_weekdayos[11] = 1 ; weekday="오후 07:00"; break;
									   case "20:00": pri_weekdayos[12] = 1 ; weekday="오후 08:00"; break;
									   case "21:00": pri_weekdayos[13] = 1 ; weekday="오후 09:00"; break;
									   case "22:00": pri_weekdayos[14] = 1 ; weekday="오후 10:00"; break;
									   case "23:00": pri_weekdayos[15] = 1 ; weekday="오후 11:00"; break;
									   case "24:00": pri_weekdayos[16] = 1 ; weekday="오후 12:00"; break;
									   }
								    }
									if(pri_weekdaye != null){
										switch (pri_weekdaye){
										   case "08:00": pri_weekdayes[0] = 1; weekday="오전 08:00"; break;
										   case "09:00": pri_weekdayes[1] = 1 ; weekday="오전 09:00"; break;
										   case "10:00": pri_weekdayes[2] = 1 ; weekday="오전 10:00"; break;
										   case "11:00": pri_weekdayes[3] = 1 ; weekday="오전 11:00"; break;
										   case "12:00": pri_weekdayes[4] = 1 ; weekday="오전 12:00"; break;
										   case "13:00": pri_weekdayes[5] = 1 ; weekday="오후 01:00"; break;
										   case "14:00": pri_weekdayes[6] = 1 ; weekday="오후 02:00"; break;
										   case "15:00": pri_weekdayes[7] = 1 ; weekday="오후 03:00"; break;
										   case "16:00": pri_weekdayes[8] = 1 ; weekday="오후 04:00"; break;
										   case "17:00": pri_weekdayes[9] = 1 ; weekday="오후 05:00"; break;
										   case "18:00": pri_weekendes[10] = 1 ; weekday="오후 06:00"; break;
										   case "19:00": pri_weekendes[11] = 1 ; weekday="오후 07:00"; break;
										   case "20:00": pri_weekendes[12] = 1 ; weekday="오후 08:00"; break;
										   case "21:00": pri_weekendes[13] = 1 ; weekday="오후 09:00"; break;
										   case "22:00": pri_weekendes[14] = 1 ; weekday="오후 10:00"; break;
										   case "23:00": pri_weekendes[15] = 1 ; weekday="오후 11:00"; break;
										   case "24:00": pri_weekendes[16] = 1 ; weekday="오후 12:00"; break;
										   }
									    }
									if(pri_weekendo != null){
										switch (pri_weekendo){
										   case "08:00": pri_weekendos[0] = 1; weekday="오전 08:00"; break;
										   case "09:00": pri_weekendos[1] = 1 ; weekday="오전 09:00"; break;
										   case "10:00": pri_weekendos[2] = 1 ; weekday="오전 10:00"; break;
										   case "11:00": pri_weekendos[3] = 1 ; weekday="오전 11:00"; break;
										   case "12:00": pri_weekendos[4] = 1 ; weekday="오전 12:00"; break;
										   case "13:00": pri_weekendos[5] = 1 ; weekday="오후 01:00"; break;
										   case "14:00": pri_weekendos[6] = 1 ; weekday="오후 02:00"; break;
										   case "15:00": pri_weekendos[7] = 1 ; weekday="오후 03:00"; break;
										   case "16:00": pri_weekendos[8] = 1 ; weekday="오후 04:00"; break;
										   case "17:00": pri_weekendos[9] = 1 ; weekday="오후 05:00"; break;
										   case "18:00": pri_weekendos[10] = 1 ; weekday="오후 06:00"; break;
										   case "19:00": pri_weekendos[11] = 1 ; weekday="오후 07:00"; break;
										   case "20:00": pri_weekendos[12] = 1 ; weekday="오후 08:00"; break;
										   case "21:00": pri_weekendos[13] = 1 ; weekday="오후 09:00"; break;
										   case "22:00": pri_weekendos[14] = 1 ; weekday="오후 10:00"; break;
										   case "23:00": pri_weekendos[15] = 1 ; weekday="오후 11:00"; break;
										   case "24:00": pri_weekendos[16] = 1 ; weekday="오후 12:00"; break;
										   }
									    }
									if(pri_weekende != null){
										switch (pri_weekende){
										   case "08:00": pri_weekendes[0] = 1; weekday="오전 08:00"; break;
										   case "09:00": pri_weekendes[1] = 1 ; weekday="오전 09:00"; break;
										   case "10:00": pri_weekendes[2] = 1 ; weekday="오전 10:00"; break;
										   case "11:00": pri_weekendes[3] = 1 ; weekday="오전 11:00"; break;
										   case "12:00": pri_weekendes[4] = 1 ; weekday="오전 12:00"; break;
										   case "13:00": pri_weekendes[5] = 1 ; weekday="오후 01:00"; break;
										   case "14:00": pri_weekendes[6] = 1 ; weekday="오후 02:00"; break;
										   case "15:00": pri_weekendes[7] = 1 ; weekday="오후 03:00"; break;
										   case "16:00": pri_weekendes[8] = 1 ; weekday="오후 04:00"; break;
										   case "17:00": pri_weekendes[9] = 1 ; weekday="오후 05:00"; break;
										   case "18:00": pri_weekendes[10] = 1 ; weekday="오후 06:00"; break;
										   case "19:00": pri_weekendes[11] = 1 ; weekday="오후 07:00"; break;
										   case "20:00": pri_weekendes[12] = 1 ; weekday="오후 08:00"; break;
										   case "21:00": pri_weekendes[13] = 1 ; weekday="오후 09:00"; break;
										   case "22:00": pri_weekendes[14] = 1 ; weekday="오후 10:00"; break;
										   case "23:00": pri_weekendes[15] = 1 ; weekday="오후 11:00"; break;
										   case "24:00": pri_weekendes[16] = 1 ; weekday="오후 12:00"; break;
										  }
									}
									
							%>
								<div class="btn-group">
									
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label"><%if(weekday == null){ %>오전 08:00<%} else {%> <%=weekday%> <%} %></span> <span
											class="caret"></span>
									</button>
									
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
									
										<li <% if(pri_weekdayos[0]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[0]==1){ %> checked <%} %> value="08:00"><a href="#">오전 08:00</a></li>
										<li <% if(pri_weekdayos[1]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[1]==1){ %> checked <%} %> value="09:00"><a href="#">오전 09:00</a></li>
									    <li <% if(pri_weekdayos[2]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[2]==1){ %> checked <%} %>  value="10:00"><a href="#">오전 10:00</a></li>
										<li <% if(pri_weekdayos[3]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[3]==1){ %> checked <%} %>  value="11:00"><a href="#">오전 11:00</a></li>
										<li <% if(pri_weekdayos[4]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[4]==1){ %> checked <%} %>  value="12:00"><a href="#">오후 12:00</a></li>
									    <li <% if(pri_weekdayos[5]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[5]==1){ %> checked <%} %>  value="13:00"><a href="#">오후 01:00</a></li>
										<li <% if(pri_weekdayos[6]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[6]==1){ %> checked <%} %>  value="14:00"><a href="#">오후 02:00</a></li>
										<li <% if(pri_weekdayos[7]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[7]==1){ %> checked <%} %>  value="15:00"><a href="#">오후 03:00</a></li>
										<li <% if(pri_weekdayos[8]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[8]==1){ %> checked <%} %>  value="16:00"><a href="#">오후 04:00</a></li>
										<li <% if(pri_weekdayos[9]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[9]==1){ %> checked <%} %>  value="17:00"><a href="#">오후 05:00</a></li>
								    	<li <% if(pri_weekdayos[10]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[10]==1){ %> checked <%} %>  value="18:00"><a href="#">오후 06:00</a></li>
										<li <% if(pri_weekdayos[11]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[11]==1){ %> checked <%} %>  value="19:00"><a href="#">오후 07:00</a></li>
										<li <% if(pri_weekdayos[12]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[12]==1){ %> checked <%} %>  value="20:00"><a href="#">오후 08:00</a></li>
										<li <% if(pri_weekdayos[13]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[13]==1){ %> checked <%} %>  value="21:00"><a href="#">오후 09:00</a></li>
										<li <% if(pri_weekdayos[14]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[14]==1){ %> checked <%} %>  value="22:00"><a href="#">오후 10:00</a></li>
										<li <% if(pri_weekdayos[15]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdayo" <% if(pri_weekdayos[15]==1){ %> checked <%} %>  value="23:00"><a href="#">오후 11:00</a></li>
									
									</ul>
								   </div>
								</div>
								<!-- 시작시간 선택 끝 -->
								
								<!-- 종료시간 선택  -->
							<label class="col-sm-1 align-right" style="padding-top: 7px;">종료시간</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label"><%if(weekday == null){ %>오전 08:00<%} else {%> <%=weekday%> <%} %></span> <span
											class="caret"></span>
									</button>
									
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
									
										<li <% if(pri_weekendes[0]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[0]==1){ %> checked <%} %> value="08:00"><a href="#">오전 08:00</a></li>
										<li <% if(pri_weekendes[1]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[1]==1){ %> checked <%} %> value="09:00"><a href="#">오전 09:00</a></li>
									    <li <% if(pri_weekendes[2]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[2]==1){ %> checked <%} %>  value="10:00"><a href="#">오전 10:00</a></li>
										<li <% if(pri_weekendes[3]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[3]==1){ %> checked <%} %>  value="11:00"><a href="#">오전 11:00</a></li>
										<li <% if(pri_weekendes[4]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[4]==1){ %> checked <%} %>  value="12:00"><a href="#">오후 12:00</a></li>
									    <li <% if(pri_weekendes[5]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[5]==1){ %> checked <%} %>  value="13:00"><a href="#">오후 01:00</a></li>
										<li <% if(pri_weekendes[6]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[6]==1){ %> checked <%} %>  value="14:00"><a href="#">오후 02:00</a></li>
										<li <% if(pri_weekendes[7]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[7]==1){ %> checked <%} %>  value="15:00"><a href="#">오후 03:00</a></li>
										<li <% if(pri_weekendes[8]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[8]==1){ %> checked <%} %>  value="16:00"><a href="#">오후 04:00</a></li>
										<li <% if(pri_weekendes[9]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[9]==1){ %> checked <%} %>  value="17:00"><a href="#">오후 05:00</a></li>
								    	<li <% if(pri_weekendes[10]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[10]==1){ %> checked <%} %>  value="18:00"><a href="#">오후 06:00</a></li>
										<li <% if(pri_weekendes[11]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[11]==1){ %> checked <%} %>  value="19:00"><a href="#">오후 07:00</a></li>
										<li <% if(pri_weekendes[12]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[12]==1){ %> checked <%} %>  value="20:00"><a href="#">오후 08:00</a></li>
										<li <% if(pri_weekendes[13]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[13]==1){ %> checked <%} %>  value="21:00"><a href="#">오후 09:00</a></li>
										<li <% if(pri_weekendes[14]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[14]==1){ %> checked <%} %>  value="22:00"><a href="#">오후 10:00</a></li>
										<li <% if(pri_weekendes[15]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekdaye" <% if(pri_weekendes[15]==1){ %> checked <%} %>  value="23:00"><a href="#">오후 11:00</a></li>
									
									</ul>
								   </div>
							</div>
							<!-- 종료시간 선택 끝 -->
		    </div>
		</div>
		<!-- 주중 운영시간 선택 끝  -->
		
		<!-- 주말 운영시간 선택  -->
		               <div class="panel-heading">주말 운영시간</div>
		               <div class="panel-body">
						<div class="form-group">
							<!-- 시작시간 선택 끝 -->
							<label class="col-sm-2 align-right" style="padding-top: 7px;">시작시간</label>
							<div class="col-sm-4">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label"><%if(weekday == null){ %>오전 08:00<%} else {%> <%=weekday%> <%} %></span> <span
											class="caret"></span>
									</button>
									
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
									
										<li <% if(pri_weekendos[0]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[0]==1){ %> checked <%} %> value="08:00"><a href="#">오전 08:00</a></li>
										<li <% if(pri_weekendos[1]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[1]==1){ %> checked <%} %> value="09:00"><a href="#">오전 09:00</a></li>
									    <li <% if(pri_weekendos[2]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[2]==1){ %> checked <%} %>  value="10:00"><a href="#">오전 10:00</a></li>
										<li <% if(pri_weekendos[3]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[3]==1){ %> checked <%} %>  value="11:00"><a href="#">오전 11:00</a></li>
										<li <% if(pri_weekendos[4]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[4]==1){ %> checked <%} %>  value="12:00"><a href="#">오후 12:00</a></li>
									    <li <% if(pri_weekendos[5]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[5]==1){ %> checked <%} %>  value="13:00"><a href="#">오후 01:00</a></li>
										<li <% if(pri_weekendos[6]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[6]==1){ %> checked <%} %>  value="14:00"><a href="#">오후 02:00</a></li>
										<li <% if(pri_weekendos[7]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[7]==1){ %> checked <%} %>  value="15:00"><a href="#">오후 03:00</a></li>
										<li <% if(pri_weekendos[8]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[8]==1){ %> checked <%} %>  value="16:00"><a href="#">오후 04:00</a></li>
										<li <% if(pri_weekendos[9]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[9]==1){ %> checked <%} %>  value="17:00"><a href="#">오후 05:00</a></li>
								    	<li <% if(pri_weekendos[10]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[10]==1){ %> checked <%} %>  value="18:00"><a href="#">오후 06:00</a></li>
										<li <% if(pri_weekendos[11]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[11]==1){ %> checked <%} %>  value="19:00"><a href="#">오후 07:00</a></li>
										<li <% if(pri_weekendos[12]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[12]==1){ %> checked <%} %>  value="20:00"><a href="#">오후 08:00</a></li>
										<li <% if(pri_weekendos[13]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[13]==1){ %> checked <%} %>  value="21:00"><a href="#">오후 09:00</a></li>
										<li <% if(pri_weekendos[14]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[14]==1){ %> checked <%} %>  value="22:00"><a href="#">오후 10:00</a></li>
										<li <% if(pri_weekendos[15]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekendo" <% if(pri_weekendos[15]==1){ %> checked <%} %>  value="23:00"><a href="#">오후 11:00</a></li>
									
									</ul>
								   </div>
								</div>
								<!-- 시작시간 선택 끝 -->
								
								<!-- 종료시간 선택  -->
							<label class="col-sm-1 align-right" style="padding-top: 7px;">종료시간</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label"><%if(weekday == null){ %>오전 08:00<%} else {%> <%=weekday%> <%} %></span> <span
											class="caret"></span>
									</button>
									
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
									
										<li <% if(pri_weekendes[0]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[0]==1){ %> checked <%} %> value="08:00"><a href="#">오전 08:00</a></li>
										<li <% if(pri_weekendes[1]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[1]==1){ %> checked <%} %> value="09:00"><a href="#">오전 09:00</a></li>
									    <li <% if(pri_weekendes[2]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[2]==1){ %> checked <%} %>  value="10:00"><a href="#">오전 10:00</a></li>
										<li <% if(pri_weekendes[3]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[3]==1){ %> checked <%} %>  value="11:00"><a href="#">오전 11:00</a></li>
										<li <% if(pri_weekendes[4]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[4]==1){ %> checked <%} %>  value="12:00"><a href="#">오후 12:00</a></li>
									    <li <% if(pri_weekendes[5]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[5]==1){ %> checked <%} %>  value="13:00"><a href="#">오후 01:00</a></li>
										<li <% if(pri_weekendes[6]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[6]==1){ %> checked <%} %>  value="14:00"><a href="#">오후 02:00</a></li>
										<li <% if(pri_weekendes[7]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[7]==1){ %> checked <%} %>  value="15:00"><a href="#">오후 03:00</a></li>
										<li <% if(pri_weekendes[8]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[8]==1){ %> checked <%} %>  value="16:00"><a href="#">오후 04:00</a></li>
										<li <% if(pri_weekendes[9]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[9]==1){ %> checked <%} %>  value="17:00"><a href="#">오후 05:00</a></li>
								    	<li <% if(pri_weekendes[10]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[10]==1){ %> checked <%} %>  value="18:00"><a href="#">오후 06:00</a></li>
										<li <% if(pri_weekendes[11]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[11]==1){ %> checked <%} %>  value="19:00"><a href="#">오후 07:00</a></li>
										<li <% if(pri_weekendes[12]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[12]==1){ %> checked <%} %>  value="20:00"><a href="#">오후 08:00</a></li>
										<li <% if(pri_weekendes[13]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[13]==1){ %> checked <%} %>  value="21:00"><a href="#">오후 09:00</a></li>
										<li <% if(pri_weekendes[14]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[14]==1){ %> checked <%} %>  value="22:00"><a href="#">오후 10:00</a></li>
										<li <% if(pri_weekendes[15]==1){ %> class="active" <%} %> ><input type="radio" name="pri_weekende" <% if(pri_weekendes[15]==1){ %> checked <%} %>  value="23:00"><a href="#">오후 11:00</a></li>
									
									</ul>
								   </div>
							</div>
							<!-- 종료시간 선택 끝 -->
		      </div>
		</div>
		<!-- 주말 운영시간 선택 끝  -->
		<%
		String pri_tel = privateVO.getPri_tel();
		String pri_web = privateVO.getPri_web();
		%>
		<!-- 연락처 등록 -->
		<div class="panel-heading">연락처</div>
		<div class="panel-body">
			 <div class="form-group">
							<label class="col-sm-2 control-label">연락처</label>
							<div class="col-sm-5">
								<input type="text" name="pri_tel" class="form-control" <%if(pri_tel!=null) {%> value="<%=pri_tel%>" <%} %>>
							</div>
						</div>
		</div>
		<!-- 연락처 등록 끝 -->


		<!-- 홈페이지 주소 등록 -->
		<div class="panel-heading">홈페이지 주소</div>
		<div class="panel-body">
			  <div class="form-group">
							<label class="col-sm-2 control-label">주 소</label>
							<div class="col-sm-5">
								<input type="text" name="pri_web" class="form-control" <%if(pri_web!=null) {%> value="<%=pri_web%>" <%} %>>
							</div>
						</div>
		

			
				<!-- 제출 버튼 -->
				<div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<button id="btn_before" class="btn btn-o btn-green">이전으로</button>
						</div>
						<div style="display: inline-block;">
							<button id="btn_register" class="btn btn-o btn-green">등록하기</button>
						</div>
					</div>
				</div>

				<!-- 제출 버튼 끝 -->
				
			<!-- panel-body 끝 -->
		</div>
		<!-- 홈페이지 주소 등록 끝 -->
		</div>
	</form>
</div>
<!---------------공간등록 정보입력 끝 ------------------------>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn_before").click(function(){
			$('form').attr('action','/Yolo/lot/LotInputSecond.lot')
			$(this).submit();
		});
		
		$("#btn_register").click(function(){
			$('form').attr('action','/Yolo/lot/LotInputFinish.lot')
			$(this).submit();
		});
	});
</script>

<!-- 추가 js  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
