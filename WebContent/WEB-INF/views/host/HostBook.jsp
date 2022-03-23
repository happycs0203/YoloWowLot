<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<link href='/Yolo/css_yolo/cssView/lot/fullcalendar.min.css'
	rel='stylesheet' />
<link href='/Yolo/css_yolo/cssView/lot/fullcalendar.print.min.css'
	rel='stylesheet' media='print' />

<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">

<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">


<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css"
	rel="stylesheet">

<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script src='/Yolo/js_yolo/lotreserve/moment.min.js'></script>
<script src='/Yolo/js_yolo/lotreserve/fullcalendar.js'></script>
<script>
	$(function(){
		
		
		$(".show").click(function(){
			
			//오늘 날짜 구하기
			var now = new Date();
		    var year= now.getFullYear();
		    var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
		    var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
		    var chan_val = year + '-' + mon + '-' + day;
			//alert($(this).siblings(".pri_num").val())
			param = $(this).siblings(".pri_num").val()
			$.ajax({
				type : "post",
				async : true,
				url : "/Yolo/host/ShowSchedule.host",
				data : {
					"pri_num" : $(this).siblings(".pri_num").val()
				},
				dataType : "text",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				success : function(data) {
					$('#calendar').fullCalendar('refetchEvents');
					//alert(data);
					$('#calendar').fullCalendar({
						header: {
							left: 'prev,next',
							center: 'title',
							right: 'today'
						},
						defaultDate: chan_val,
						navLinks: false, // can click day/week names to navigate views
						editable: false,
						eventLimit: true, // allow "more" link when too many events
						events: jQuery.parseJSON(data)
					});
				},
			});
			
		});
	});

</script>

	
			<div class="widgets">
				<h4 style="margin-bottom: 30px; font-size: 20px; font-family: 'Nanum Brush Script';">예약 관리</h4>

				<div class="row" style="margin-bottom: 10px;">
				
					
					<div class="col-md-12">
						<h3 style="margin: 5px;">현재 예약 공간</h3>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td colspan='7'>등록된 게시물이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="pri">
						<div class="col-md-4 col-xs-12">
							<a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1"
								style="margin-bottom: 5px;">

								<div class="fig">
									<img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
									<div class="priceCap">
										<span>${pri.pri_weekprice}원/시간</span>
									</div>
									<div class="figCap">
										<h3>${pri.pri_title}</h3>
										<div class="address">${pri.pri_addr}</div>
										<div class="feat feat-1">
											<span class="fa fa-eye"></span> 3
										</div>
										<div class="feat feat-2">
											<span class="icon-bubble"></span> 2
										</div>
									</div>
								</div>
							</a>
							<button style="float: right; margin-bottom: 5px;" class="btn btn-o btn-green show">스케줄보기</button>
							<input type="hidden" class="pri_num" value="${pri.pri_num}"/>
						</div>
					</c:forEach>
				</c:otherwise>
				</c:choose>


<!-- 공간 -->

					</div>
					<!--- col-md-12끝 -->

				</div>
				<!---------예약된 공간 리스트 끝 ---------------->
				
				<!-- 달력보여주기 -->
				<br/>
				<div class="row" style="margin-bottom: 10px;">
					<div id='calendar'></div>
				</div>
				
				<!-- 달력보여주기 끝 -->
		</div>

		<!-- 추가 js -->
<!-- 		<script src="/Yolo/js/home.js" type="text/javascript"></script> -->
<!-- 		<script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script> -->
