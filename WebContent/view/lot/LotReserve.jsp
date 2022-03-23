<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<!-----달력 날짜 받아오기 ----->
<%
//년도와 월을 받아옴
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");

 //년,월,일 지정
Calendar cal = Calendar.getInstance();

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);

//null이 아닌 다른 값을 받아오면
if(strYear != null)
{
	//다시 지정
  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);

}else{	

	
}

//년도,월 셋팅
cal.set(year, month, 1);


int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;

 

//오늘 날짜 저장.

Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>LotReserve.jsp</title>


<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyClub/portfolio-item.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/MyClub/ClubMyList.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/lot/lotReserve.css" rel="stylesheet">

<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">
<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">


</head>
<body class="notransition">

	<!-- Header -->
	<%@include file="/view/common/header.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">

		<div id="content" class="max">
			<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->

			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">

						<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

							<!-- 사진, 상세정보보기 -->
							<div class="row" style="margin-bottom: 20px; padding: 8px; border-top: 2px solid #fc7937;">
								<div class="image-block">
									<img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
									<div class="ib-title"></div>
								</div>
								<h2 style="padding: 8px; border-top: 2px solid #fc7937"
									class="osLight align-left">공간상세정보</h2>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. The point of using Lorem Ipsum is that it has a
									more-or-less normal distribution of letters, as opposed to
									using 'Content here, content here', making it look like
									readable English.</p>
								<p>Many desktop publishing packages and web page editors now
									use Lorem Ipsum as their default model text, and a search for
									'lorem ipsum' will uncover many web sites still in their
									infancy. Various versions have evolved over the years,
									sometimes by accident, sometimes on purpose (injected humour
									and the like).</p>
							</div>
							<!-- 사진, 상세정보보기 끝 -->

							<!--------- 달력으로 예약날짜보기 ---------->
							<div class="row" style="margin-bottom: 30px;">
								<h2 id="lot_reserve" class="osLight align-left">날짜 선택</h2>
								<div class="col-md-12 col-xs-12"
									style="display: inline-block; background-color: white;">

									<form name="calendarFrm" id="calendarFrm" action=""
										method="post">

										<table width="100%" border="0" cellspacing="1" cellpadding="1">

										</table>

										<!--날짜 네비게이션  -->

										<table width="100%" border="0" cellspacing="1" cellpadding="1"
											id="KOO" bgcolor="#F3F9D7">



											<tr>

												<td height="60">

													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td height="10"></td>
														</tr>

														<tr>
															<td align="center">
																<% if(month > 0 ){ %> <a
																href="/mentoring/mento.mento?cmd=calendar-view&year=<%=year%>&month=<%=month-1%>">
																	<b>&lt;</b> <!-- 이전달 -->
															</a> <% } else { %> <b>&lt;</b> <%} %> &nbsp;&nbsp; <%=year%>년 <%=month+1%>월
																&nbsp;&nbsp; <%if(month < 11 ) { %> <a
																href="/mentoring/mento.mento?cmd=calendar-view&year=<%=year%>&month=<%=month+1%>">

																	<b>&gt;</b>
															</a> <% } else { %> <b>&gt;</b> <% } %>


															</td>
														</tr>

													</table>



												</td>
											</tr>
										</table>
										<br>
										<table width="100%" border="0" border-top="20px"
											cellspacing="1" cellpadding="1" bgcolor="#FFFFFF"
											style="position: relative;">
											<THEAD>

												<TR bgcolor="#f79b38">

													<TD width='100px'>
														<DIV align="center">
															<font color="red" style="font-size: 15px;">일</font>
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="black" style="font-size: 15px;">월 
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="black" style="font-size: 15px;">화 
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="black" style="font-size: 15px;">수 
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="black" style="font-size: 15px;">목 
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="black" style="font-size: 15px;">금 
														</DIV>
													</TD>
													<TD width='100px'>
														<DIV align="center">
															<font color="#529dbc" style="font-size: 15px;">토</font>
														</DIV>
													</TD>
												</TR>
											</THEAD>
											<TBODY>
												<TR>

													<%

 

//처음 빈공란 표시

for(int index = 1; index < start ; index++ )

{
  out.println("<TD >&nbsp;</TD>");
  newLine++;
}

 

for(int index = 1; index <= endDay; index++)
{
       String color = "";

       if(newLine == 0){          color = "RED";
       }else if(newLine == 6){    color = "#529dbc";
       }else{                     color = "BLACK"; };

 

       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

       int iUseDate = Integer.parseInt(sUseDate);



       String backColor = "#FFF";
       if(iUseDate == intToday ) {
             backColor = "#ffe6a8";
       }
       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");

       %>

													<font color='<%=color%>'> <%=index %>
													</font>



													<%   
       
   

       out.println("<BR>");
       out.println("<BR>");
   

       //기능 제거 

       out.println("</TD>");
       newLine++;

 

       if(newLine == 7)
       {
         out.println("</TR>");
         if(index <= endDay)

         {
           out.println("<TR>");
         }
         newLine=0;
       }

}

//마지막 공란 LOOP

while(newLine > 0 && newLine < 7)

{
  out.println("<TD>&nbsp;</TD>");
  newLine++;
}

%>

												</TR>
											</TBODY>
										</TABLE>

									</form>


								</div>

								<!-- 달력 전체 틀 끝 -->


							</div>
							<!------ 달력으로 예약날짜보기 끝 ------>

							<!--------- 인원선택 ---------->
							<div class="row" style="margin-bottom: 30px;">
								<!-- 예약자 정보 보기 -->
								<h2 id="lot_reserve" 
									class="osLight align-left">인원 선택</h2>

								
								<div  style="width: 100%; max-width: 400px;" class="form-group">
									   <div class="col-sm-2 col-md-5 volume">
                                        <a href="#" class="btn btn-gray btn-round-left"><span class="fa fa-angle-left"></span></a>
                                        <input type="text" class="form-control" value="1">
                                        <a href="#" class="btn btn-gray btn-round-right"><span class="fa fa-angle-right"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
								</div>


							</div>
							<!------ 인원선택 끝 ------>

							<!--------- 예약자 정보 ---------->
							<div class="row" style="margin-bottom: 30px;">
								<!-- 예약자 정보 보기 -->
								<h2
									style="margin-bottom: 10px; padding: 8px; border-top: 2px solid #fc7937;"
									class="osLight align-left">예약자 정보</h2>

								<!-- 예약자 명 -->
								<div class="form-group">
									<label class="tit col-sm-2 col-md-3 ">예약자 명</label>
									<div class="col-sm-8">
										<input type="text" name="uName" class="form-control" value="">
									</div>
								</div>

								<!-- 예약자 명 -->
								<div class="form-group">
									<label class="tit col-sm-2 col-md-3	">연락처</label>
									<div class="col-sm-8">
										<input type="text" name="uPhone" class="form-control" value="">
									</div>
								</div>

							</div>
							<!------ 예약자정보 끝 ------>

							<!--------- 호스트정보 ---------->
							<div class="row" style="margin-bottom: 30px;">
								<!-- 예약자정보 보기 -->
								<h2 style="padding: 8px; border-top: 2px solid #fc7937;"
									class="osLight align-left">호스트 정보</h2>
								<!-- 공간상호명 -->
								<div class="list_wrap">
									<d1 class="flex_box">

									<dt class="tit col-md-3">공간상호명</dt>
									<dd class="flex col-md-8">왕십리아지트스튜디오</dd>
									</d1>
								</div>

								<!--대표자명 -->
								<div class="list_wrap">
									<d1 class="flex_box">

									<dt class="tit col-md-3">대표자명</dt>
									<dd class="flex col-md-8">오보환</dd>
									</d1>
								</div>

								<!-- 소재지 -->
								<div class="list_wrap">
									<d1 class="flex_box">

									<dt class="tit col-md-3">소재지</dt>
									<dd class="flex col-md-8">서울특별시 성동구 행당동</dd>
									</d1>
								</div>

								<!-- 사업자번호-->
								<div class="list_wrap">
									<d1 class="flex_box">

									<dt class="tit col-md-3">사업자번호</dt>
									<dd class="flex col-md-8">829-03-00659</dd>
									</d1>
								</div>
								<!-- 연락처 -->
								<div class="list_wrap">
									<d1 class="flex_box">

									<dt class="tit col-md-3">연락처</dt>
									<dd class="flex col-md-8">050-7790-8221</dd>
									</d1>
								</div>
							</div>
							<!------ 호스트정보 끝 ------>


						</div>
						<!-- 전체정보 보기 끝 -->

						<!-- 결제창 -->
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
							
							<div class="row">
								<!-- 예약자 정보 보기 -->
								<h2 id="lot_reserve" class="osLight align-left">결제 예정금액</h2>

								<!-- 예약날짜-->
								<div id="pay" class="form-group">
									<label class="tit col-sm-2 col-md-3 ">예약날짜</label>
									<div class="col-sm-8">
										<label class="tit col-sm-2 col-md-9 ">2017-06-28</label>
									</div>
								</div>

								<!-- 예약인원 -->
								<div id="pay1" class="form-group" >
									<label class="tit col-sm-2 col-md-3	">예약인원</label>
									<div class="col-sm-8">
										<label class="tit col-sm-2 col-md-9 ">2</label>
									</div>
								</div>
								
								<!-- 총금액 -->
								<div id="pay2" class="form-group">
									<label class="tit col-sm-2 col-md-3	">총 금액</label>
									<div class="col-sm-8">
										<label class="tit col-sm-2 col-md-9 ">50,000</label>
									</div>
								</div>
								

						<div style="text-align: center;">
							<div style="display: inline-block;">
								<button id="btn_next" class="btn btn-o btn-green">결제하기</button>
							</div>
						</div>					
					</div>

							</div>
							
						</div>
						<!-- 결제창 끝 -->

						<br /> <br />


					</div>
				</div>

				<!-- ------------------------------------------------------- -->


			</div>
			<div class="clearfix"></div>
			</div>
		</div>

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

		<!-- 추가  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		<script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>
</body>
</html>