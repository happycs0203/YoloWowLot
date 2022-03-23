<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>HostBook.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">

<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">


<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css"
	rel="stylesheet">

<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">

</head>


<body class="notransition">

	<!-- HostHeader -->
	<%@include file="/view/host/HostHeader.jsp"%>

	<!-- Content -->
	<div id="wrapper" class="full">
		<div id="mapView" class="min">
			<div class="mapPlaceholder">
				<span class="fa fa-spin fa-spinner"></span> Loading map...
			</div>
		</div>
		<div id="content" class="max">
			<div class="widgets">
				<h4
					style="margin-bottom: 30px; font-size: 20px; font-family: 'Nanum Brush Script';">예약
					관리</h4>



				<div class="row" style="margin-bottom: 10px;">
					<div class="col-md-12">

						<h3 style="margin: 5px;">현재 예약 공간</h3>
						<div class="col-md-4 col-xs-12">

							<a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1"
								style="margin-bottom: 5px;">

								<div class="fig">
									<img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
									<div class="priceCap">
										<span>20,000원/시간</span>
									</div>
									<div class="figCap">
										<h3>왕십리 아지트스튜디오</h3>
										<div class="address">왕십리</div>
										<div class="feat feat-1">
											<span class="fa fa-eye"></span> 3
										</div>
										<div class="feat feat-2">
											<span class="icon-bubble"></span> 2
										</div>
									</div>
								</div>
							</a> <a style="float: right; margin-bottom: 5px;" href="#"
								class="btn  btn-o btn-green">스케줄보기</a>

						</div>

						<div class="col-md-4 col-xs-12">

							<a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1"
								style="margin-bottom: 5px;">

								<div class="fig">
									<img src="/Yolo/images_yolo/lot/1.PNG" alt="image">
									<div class="priceCap">
										<span>20,000원/시간</span>
									</div>
									<div class="figCap">
										<h3>왕십리 아지트스튜디오</h3>
										<div class="address">왕십리</div>
										<div class="feat feat-1">
											<span class="fa fa-eye"></span> 3
										</div>
										<div class="feat feat-2">
											<span class="icon-bubble"></span> 2
										</div>
									</div>
								</div>
							</a> <a style="float: right; margin-bottom: 5px;" href="#"
								class="btn  btn-o btn-green">스케줄보기</a>

						</div>

						<div class="col-md-4 col-xs-12">

							<a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1"
								style="margin-bottom: 5px;">

								<div class="fig">
									<img src="/Yolo/images_yolo/lot/4.PNG" alt="image">
									<div class="priceCap">
										<span>20,000원/시간</span>
									</div>
									<div class="figCap">
										<h3>왕십리 아지트스튜디오</h3>
										<div class="address">왕십리</div>
										<div class="feat feat-1">
											<span class="fa fa-eye"></span> 3
										</div>
										<div class="feat feat-2">
											<span class="icon-bubble"></span> 2
										</div>
									</div>
								</div>
							</a> <a style="float: right; margin-bottom: 5px;" href="#"
								class="btn  btn-o btn-green">스케줄보기</a>

						</div>

					</div>
					<!--- col-md-12끝 -->

				</div>
				<!---------예약된 공간 리스트 끝 ---------------->



				<!-------- 달력으로 스케줄보여주기 ------------>
				<div class="row" style="margin-bottom: 10px; text-align: center;">
                 
					<div class="col-md-12 col-xs-12" style="display: inline-block; background-color: white;">
  
						<form name="calendarFrm" id="calendarFrm" action="" method="post">




							<table width="100%" border="0" cellspacing="1" cellpadding="1">


							</table>

							<!--날짜 네비게이션  -->

							<table width="100%" border="0" cellspacing="1" cellpadding="1"
								id="KOO" bgcolor="#F3F9D7">



								<tr>

									<td height="60">

										<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
							<table width="100%" border="0" border-top="20px" cellspacing="1"
								cellpadding="1" bgcolor="#FFFFFF" style="position: relative;">
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
				<!------------------ 달력으로 스케줄보여주기 끝 ----------------------->

			</div>
			<div class="clearfix"></div>
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

		<!-- 추가 js -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		<script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>
</body>
</html>