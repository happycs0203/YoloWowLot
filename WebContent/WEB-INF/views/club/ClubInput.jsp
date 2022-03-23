<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="yolo.share.dto.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/Lecture/Lecture_inputstyle.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/clubInput.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/tagPlus.css" rel="stylesheet">
<link href="/Yolo/css/jquery.tagsinput.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/lot/lotInputSecond.css" rel="stylesheet">

			<div class="home-wrapper">
				<!-- 제목 -->
				<h4 style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">새 모임 등록하기</h4>
				<!-- 모임 정보 입력 -->
				<div class="panel-heading">모임 정보 입력</div>
				<form class="form-horizontal" role="form" method="post" enctype="multipart/form-data" action="/Yolo/club/ClubInputOk.club">
				<div class="panel-body">
					<!-- 입력 폼 -->
						<!-- 주제 설정 -->
<!-- 						<form name="sendForm" method="get" > -->
						<div class="form-group">
							<label class="col-sm-2 control-label">주제</label>
							<div class="col-sm-8">
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" class="type" name="c_type" value="교육" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 교육</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" class="type" name="c_type" value="방송/연예" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 방송/연예</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" class="type" name="c_type" value="전시/박람회" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 전시/박람회</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="취미활동" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 취미활동</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="패션/뷰티" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 패션/뷰티</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="이벤트/파티" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 이벤트/파티</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="문화/예술" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 문화/예술</span></label>
								</div> 
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="공모전" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 공모전</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="여행" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 여행</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="친목/소모임" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 친목/소모임</span></label>
								</div>
								<div class="col-md-2 col-xs-4 checkbox custom-checkbox">
									<label><input type="checkbox" name="c_type" value="기타" onclick="oneCheckbox(this)"><span
										class="fa fa-check"> 기타</span></label>
								</div>
							</div>
						</div>
<!-- 						</form> -->

						<!-- 제목 입력 -->+
						<div class="form-group">
							<label class="col-sm-2 control-label">모임명</label>
							<div class="col-sm-8">
								<input type="text" name="c_title" class="form-control">
							</div>
						</div>
						
						<!-- 해쉬태그 입력 -->
                        <div class="form-group">
                       		<label class="col-sm-2 control-label">Tags input</label>
	                       <div class="col-sm-8">
	                           <input type="text" name="c_tag" class="form-control" id="tags" placeholder="Add a tag">
	                       </div>
                  		</div>

						<!-- 최대 인원 입력 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">최대 인원</label>
							<div class="col-sm-8">
								<input type="text" name="c_people" class="form-control" value="">
							</div>
						</div>
						
						<!-- 모집 기간 설정 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">모집기간</label>
							<div class="col-sm-3">
								<input type="date" name="c_recruitFrom" class="form-control" value="">
							</div>
							<label class="col-sm-1 al  ign-center" style="padding-top:7px;">부터</label>
							<div class="col-sm-3">
								<input type="date" name="c_recruitTo" class="form-control" value="">
							</div>							
						</div>
						
						<!-- 활동주기 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">활동주기</label>
							<!-- 라디오버튼 -->
							<div class="col-md-6 col-xs-10">
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="c_period" value="정기적"><span
										class="fa fa-circle"></span> 정기적</label>
								</div>
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="c_period" value="일회적"><span
										class="fa fa-circle"></span> 일회적</label>
								</div>
							</div>				
						</div>
						<!-- 활동주기 끝 -->
						
						<!-- 시작 일시 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">시작 일시</label>
							<div class="col-sm-3">
								<input type="date" name="c_dateFrom" class="form-control" value="">
							</div>
							<label class="col-sm-1 align-right" style="padding-top: 7px;">시각</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label">오전 12:00</span> <span
											class="caret"></span>
									</button>
									시간 선택
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
										<li class="active"><input type="radio" name="c_timeFrom" checked="checked" value="00:00"><a href="#">오전 12:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="00:30"><a href="#">오전 12:30</a></li><li><input type="radio"   value="01:00"><a href="#">오전 01:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="01:30"><a href="#">오전 01:30</a></li><li><input type="radio"   value="02:00"><a href="#">오전 02:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="02:30"><a href="#">오전 02:30</a></li><li><input type="radio"   value="03:00"><a href="#">오전 03:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="03:30"><a href="#">오전 03:30</a></li><li><input type="radio"   value="04:00"><a href="#">오전 04:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="04:30"><a href="#">오전 04:30</a></li><li><input type="radio"   value="05:00"><a href="#">오전 05:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="05:30"><a href="#">오전 05:30</a></li><li><input type="radio"   value="06:00"><a href="#">오전 06:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="06:30"><a href="#">오전 06:30</a></li><li><input type="radio"   value="07:00"><a href="#">오전 07:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="07:30"><a href="#">오전 07:30</a></li><li><input type="radio"   value="08:00"><a href="#">오전 08:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="08:30"><a href="#">오전 08:30</a></li><li><input type="radio"   value="09:00"><a href="#">오전 09:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="09:30"><a href="#">오전 09:30</a></li><li><input type="radio"   value="10:00"><a href="#">오전 10:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="10:30"><a href="#">오전 10:30</a></li><li><input type="radio"   value="11:00"><a href="#">오전 11:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="11:30"><a href="#">오전 11:30</a></li><li><input type="radio"   value="12:00"><a href="#">오후 12:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="12:30"><a href="#">오후 12:30</a></li><li><input type="radio"   value="13:00"><a href="#">오후 01:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="13:30"><a href="#">오후 01:30</a></li><li><input type="radio"   value="14:00"><a href="#">오후 02:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="14:30"><a href="#">오후 02:30</a></li><li><input type="radio"   value="15:00"><a href="#">오후 03:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="15:30"><a href="#">오후 03:30</a></li><li><input type="radio"   value="16:00"><a href="#">오후 04:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="16:30"><a href="#">오후 04:30</a></li><li><input type="radio"   value="17:00"><a href="#">오후 05:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="17:30"><a href="#">오후 05:30</a></li><li><input type="radio"   value="18:00"><a href="#">오후 06:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="18:30"><a href="#">오후 06:30</a></li><li><input type="radio"   value="19:00"><a href="#">오후 07:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="19:30"><a href="#">오후 07:30</a></li><li><input type="radio"   value="20:00"><a href="#">오후 08:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="20:30"><a href="#">오후 08:30</a></li><li><input type="radio"   value="21:00"><a href="#">오후 09:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="21:30"><a href="#">오후 09:30</a></li><li><input type="radio"   value="22:00"><a href="#">오후 10:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="22:30"><a href="#">오후 10:30</a></li><li><input type="radio"   value="23:00"><a href="#">오후 11:00</a></li>
										<li><input type="radio" name="c_timeFrom" value="23:30"><a href="#">오후 11:30</a></li>									
									</ul>
								</div>
							</div>
						</div>
						<!-- 종료 일시 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">종료 일시</label>
							<div class="col-sm-3">
								<input type="date" name="c_dateTo" class="form-control" value="">
							</div>
							<label class="col-sm-1 align-right" style="padding-top: 7px;">시각</label>
							<div class="col-sm-3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-o btn-gray dropdown-toggle">
										<span class="dropdown-label">오전 12:00</span> <span
											class="caret"></span>
									</button>
									시간 선택
									<ul id="lec_timeselec" class="dropdown-menu dropdown-select">
										<li class="active"><input type="radio" name="c_timeTo" checked="checked" value="00:00"><a href="#">오전 12:00</a></li>
										<li><input type="radio" name="c_timeTo" value="00:30"><a href="#">오전 12:30</a></li><li><input type="radio"   value="01:00"><a href="#">오전 01:00</a></li>
										<li><input type="radio" name="c_timeTo" value="01:30"><a href="#">오전 01:30</a></li><li><input type="radio"   value="02:00"><a href="#">오전 02:00</a></li>
										<li><input type="radio" name="c_timeTo" value="02:30"><a href="#">오전 02:30</a></li><li><input type="radio"   value="03:00"><a href="#">오전 03:00</a></li>
										<li><input type="radio" name="c_timeTo" value="03:30"><a href="#">오전 03:30</a></li><li><input type="radio"   value="04:00"><a href="#">오전 04:00</a></li>
										<li><input type="radio" name="c_timeTo" value="04:30"><a href="#">오전 04:30</a></li><li><input type="radio"   value="05:00"><a href="#">오전 05:00</a></li>
										<li><input type="radio" name="c_timeTo" value="05:30"><a href="#">오전 05:30</a></li><li><input type="radio"   value="06:00"><a href="#">오전 06:00</a></li>
										<li><input type="radio" name="c_timeTo" value="06:30"><a href="#">오전 06:30</a></li><li><input type="radio"   value="07:00"><a href="#">오전 07:00</a></li>
										<li><input type="radio" name="c_timeTo" value="07:30"><a href="#">오전 07:30</a></li><li><input type="radio"   value="08:00"><a href="#">오전 08:00</a></li>
										<li><input type="radio" name="c_timeTo" value="08:30"><a href="#">오전 08:30</a></li><li><input type="radio"   value="09:00"><a href="#">오전 09:00</a></li>
										<li><input type="radio" name="c_timeTo" value="09:30"><a href="#">오전 09:30</a></li><li><input type="radio"   value="10:00"><a href="#">오전 10:00</a></li>
										<li><input type="radio" name="c_timeTo" value="10:30"><a href="#">오전 10:30</a></li><li><input type="radio"   value="11:00"><a href="#">오전 11:00</a></li>
										<li><input type="radio" name="c_timeTo" value="11:30"><a href="#">오전 11:30</a></li><li><input type="radio"   value="12:00"><a href="#">오후 12:00</a></li>
										<li><input type="radio" name="c_timeTo" value="12:30"><a href="#">오후 12:30</a></li><li><input type="radio"   value="13:00"><a href="#">오후 01:00</a></li>
										<li><input type="radio" name="c_timeTo" value="13:30"><a href="#">오후 01:30</a></li><li><input type="radio"   value="14:00"><a href="#">오후 02:00</a></li>
										<li><input type="radio" name="c_timeTo" value="14:30"><a href="#">오후 02:30</a></li><li><input type="radio"   value="15:00"><a href="#">오후 03:00</a></li>
										<li><input type="radio" name="c_timeTo" value="15:30"><a href="#">오후 03:30</a></li><li><input type="radio"   value="16:00"><a href="#">오후 04:00</a></li>
										<li><input type="radio" name="c_timeTo" value="16:30"><a href="#">오후 04:30</a></li><li><input type="radio"   value="17:00"><a href="#">오후 05:00</a></li>
										<li><input type="radio" name="c_timeTo" value="17:30"><a href="#">오후 05:30</a></li><li><input type="radio"   value="18:00"><a href="#">오후 06:00</a></li>
										<li><input type="radio" name="c_timeTo" value="18:30"><a href="#">오후 06:30</a></li><li><input type="radio"   value="19:00"><a href="#">오후 07:00</a></li>
										<li><input type="radio" name="c_timeTo" value="19:30"><a href="#">오후 07:30</a></li><li><input type="radio"   value="20:00"><a href="#">오후 08:00</a></li>
										<li><input type="radio" name="c_timeTo" value="20:30"><a href="#">오후 08:30</a></li><li><input type="radio"   value="21:00"><a href="#">오후 09:00</a></li>
										<li><input type="radio" name="c_timeTo" value="21:30"><a href="#">오후 09:30</a></li><li><input type="radio"   value="22:00"><a href="#">오후 10:00</a></li>
										<li><input type="radio" name="c_timeTo" value="22:30"><a href="#">오후 10:30</a></li><li><input type="radio"   value="23:00"><a href="#">오후 11:00</a></li>
										<li><input type="radio" name="c_timeTo" value="23:30"><a href="#">오후 11:30</a></li>											
									</ul>
								</div>
							</div>
						</div>
						
						<!-- 개최 장소 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">모임장소</label>
							<div class="col-md-6 col-xs-10">
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="c_place_v" value="미확정" onclick="div_OnOff(this.value,'con1');"><span
										class="fa fa-circle"></span> 미확정</label>
								</div>
								<div class="col-md-3 radio custom-radio">
									<label><input type="radio" name="c_place_v" value="확정" onclick="div_OnOff(this.value,'con1');"><span
										class="fa fa-circle"></span> 확정</label>
								</div>
							</div>			
						</div>
						
						<!-- 장소 입력 -->
						<div id="con1" style="display:none">
							<div class="form-group">
								<label class="col-sm-2 control-label">장소 선택</label>
								<div class="col-md-6 col-xs-10">
									<div class="col-md-3 radio custom-radio">
										<label><input type="radio" class="radio_p" name="c_place_c" value="yolo"><span
											class="fa fa-circle"></span> Yolo Lot</label>
									</div>
									<div class="col-md-3 radio custom-radio">
										<label><input type="radio" class="radio_p" name="c_place_c" value="etc"><span
											class="fa fa-circle"></span> 그 외 공간</label>
									</div>
								</div>			
							</div>
						
							<!-- 예약한 공간 선택 -->
							<div class="yolo box">
								<div class="form-group">
					 				<label class="col-sm-2 control-label">예약한 공간 선택</label>
									<div class="col-sm-9 panel panel-default dd">
										<a href="#ddPanel"
											class="btn btn-o btn-default btn-block btn-lg align-left"
											data-toggle="collapse"><span
											class="fa fa-angle-down pull-right"></span></a>
										<div id="ddPanel" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="table-overflow">
													<table class="table" id="inboxTable">
														<tbody class="table">
	<%-- 													<% ArrayList list = (ArrayList)request.getAttribute("list"); %> --%>
							                             <c:choose>
								                             <c:when test="${fn:length(list) eq 0 }">
						                              			<tr>
																	<td>예약된 공간이 없습니다.</td>
																</tr>
								                             </c:when>
								                             <c:otherwise>
						                            	 		<c:forEach items="${list}" var="a">
								                              		<tr>
																		<td><div class="radio custom-radio">
																		<label><input type="radio" name="c_place" value="${a.pri_addr}"><span
																			class="fa fa-circle"></span></label>
																			</div></td>
																		<td>${a.bl_id}</td>
																		<td><img alt="" src="/Yolo/images_yolo/lot/${a.priimg_name}"
																				width="150px;" height="100px;"></td>
																		<td>${a.pri_title}</td>
																		<td>${a.pri_addr}</td>
																		<td>${a.bl_date}</td>
																	</tr>
								                             	</c:forEach>
								                             </c:otherwise>
							                             </c:choose>
	<%-- 															<% --%>
	<!-- // 															for(int i=0; i<list.size(); i++){ -->
	<%-- 																InputListVO vo = (InputListVO)list.get(i);%> --%>
	<!-- 														<tr> -->
	<!-- 															<td><div class="radio custom-radio"> -->
	<%-- 															<label><input type="radio" name="c_address" value="<%= vo.getPri_addr()%>"><span --%>
	<!-- 																class="fa fa-circle"></span></label> -->
	<!-- 																</div></td> -->
	<!-- 															<td></td> -->
	<%-- 															<td><img alt="" src="/Yolo/images_yolo/lot/<%= vo.getPriimg_name()%>" --%>
	<!-- 																	width="150px;" height="100px;"></td> -->
	<%-- 															<td><%= vo.getPri_title()%></td> --%>
	<%-- 															<td><%= vo.getPri_addr()%></td> --%>
	<%-- 															<td><%= vo.getBl_date()%></td> --%>
	<!-- 														</tr>				 -->
	<%-- 														<%}%> --%>
						                            	 </tbody>
													</table>
												</div>
		           							</div>
	                     			 	</div>
	                   			 	</div>
	               			 	</div>
	           			 	</div>
               			 
               			 	<div class="etc box">
                   			 	<div class="form-group">
		                         	<label class="col-sm-2 control-label">주소 직접 입력</label>
		                             	<div class="col-sm-8">
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
												name="main_address" placeholder=" 주소"> <input type="text"
												class="form-control addr" id="detail_address"
												name="detail_address" placeholder=" 상세주소">
										</div>
		                        </div>
               			 	</div>
     			 		</div>
						
						<!-- 예약한 공간 선택 -->
<!-- 				 			<div class="form-group"> -->
<!-- 				 				<label class="col-sm-2 control-label">예약한 공간 선택</label> -->
	<!-- 	                       	 <div class="col-sm-6 btn-group" > -->
	<!--                         		<button data-toggle="dropdown" class="btn btn-o btn-gray dropdown-toggle"> -->
	<!-- 	                                  <span class="dropdown-label">예약한 공간 선택</span> <span class="caret"></span> -->
	<!-- 	                             </button> -->
<!-- 								<div class="col-sm-9 panel panel-default dd"> -->
<!-- 									<a href="#ddPanel" -->
<!-- 										class="btn btn-o btn-default btn-block btn-lg align-left" -->
<!-- 										data-toggle="collapse"><span -->
<!-- 										class="fa fa-angle-down pull-right"></span></a> -->
<!-- 									<div id="ddPanel" class="panel-collapse collapse"> -->
<!-- 										<div class="panel-body"> -->
<!-- 											<div class="table-overflow"> -->
<!-- 												<table class="table" id="inboxTable"> -->
<!-- 													<tbody class="table"> -->
<%-- 													<% ArrayList list = (ArrayList)request.getAttribute("list"); %> --%>
<%-- 						                             <c:choose> --%>
<%-- 							                             <c:when test="${fn:length(list) eq 0 }"> --%>
<!-- 					                              			<tr> -->
<!-- 																<td>예약된 공간이 없습니다.</td> -->
<!-- 															</tr> -->
<%-- 							                             </c:when> --%>
<%-- 							                             <c:otherwise> --%>
<!-- 									                             <tr> -->
<!-- 							                              			<td><div class="radio custom-radio"> -->
<!-- 																	<label class="active"><input type="radio" name="c_place" value="미선택"><span -->
<!-- 																		class="fa fa-circle"></span></label> -->
<!-- 																		</div></td> -->
<!-- 																	<td></td> -->
<!-- 																	<td></td> -->
<!-- 																	<td>미선택</td> -->
<!-- 																	<td></td> -->
<!-- 																	<td></td> -->
<!-- 							                              		</tr> -->
<%-- 					                            	 		<c:forEach items="${list}" var="a"> --%>
<!-- 							                              		<tr> -->
<!-- 																	<td><div class="radio custom-radio"> -->
<%-- 																	<label><input type="radio" name="c_place" value="${a.pri_addr}"><span --%>
<!-- 																		class="fa fa-circle"></span></label> -->
<!-- 																		</div></td> -->
<%-- 																	<td>${a.bl_id}</td> --%>
<%-- 																	<td><img alt="" src="/Yolo/images_yolo/lot/${a.priimg_name}" --%>
<!-- 																			width="150px;" height="100px;"></td> -->
<%-- 																	<td>${a.pri_title}</td> --%>
<%-- 																	<td>${a.pri_addr}</td> --%>
<%-- 																	<td>${a.bl_date}</td> --%>
<!-- 																</tr> -->
<%-- 							                             	</c:forEach> --%>
<%-- 							                             </c:otherwise> --%>
<%-- 						                             </c:choose> --%>
<%-- 															<% --%>
<!-- // 															for(int i=0; i<list.size(); i++){ -->
<%-- 																InputListVO vo = (InputListVO)list.get(i);%> --%>
<!-- 														<tr> -->
<!-- 															<td><div class="radio custom-radio"> -->
<%-- 															<label><input type="radio" name="c_address" value="<%= vo.getPri_addr()%>"><span --%>
<!-- 																class="fa fa-circle"></span></label> -->
<!-- 																</div></td> -->
<!-- 															<td></td> -->
<%-- 															<td><img alt="" src="/Yolo/images_yolo/lot/<%= vo.getPriimg_name()%>" --%>
<!-- 																	width="150px;" height="100px;"></td> -->
<%-- 															<td><%= vo.getPri_title()%></td> --%>
<%-- 															<td><%= vo.getPri_addr()%></td> --%>
<%-- 															<td><%= vo.getBl_date()%></td> --%>
<!-- 														</tr>				 -->
<%-- 														<%}%> --%>
																											
<!-- 					                            	 </tbody> -->
<!-- 												</table> -->
<!-- 											</div> -->
<!-- 	           							</div> -->
<!--                      			 	</div> -->
<!--                    			 	</div> -->
<!--                    			 	<div class="form-group"> -->
<!--                    			 		<label class="col-sm-6 control-label">또는</label> -->
<!--                    			 	</div> -->
<!--                    			 	<div class="form-group"> -->
<!-- 		                         	<label class="col-sm-2 control-label">주소 직접 입력</label> -->
<!-- 		                             	<div class="col-sm-8"> -->
<!-- 										우편번호 검색 -->
<!-- 											<div class="input-group addr"> -->
<!-- 												<input type="text" class="form-control" id="postcode" -->
<!-- 													name="postcode" placeholder="우편번호"> <span -->
<!-- 													class="input-group-btn"> <input type="button" -->
<!-- 													class="btn btn-success form-control" onclick="DaumPostcode()" -->
<!-- 													value="우편번호 찾기"> -->
<!-- 												</span> -->
<!-- 											</div> -->
<!-- 											<input type="text" class="form-control addr" id="main_address" -->
<!-- 												name="main_address" placeholder=" 주소"> <input type="text" -->
<!-- 												class="form-control addr" id="detail_address" -->
<!-- 												name="detail_address" placeholder=" 상세주소"> -->
<!-- 										</div> -->
<!-- 		                        </div> -->
<!--                			 	</div> -->
<!--            			 	</div> -->
						<!-- 개최 장소 끝 -->	
									
						<!-- 대표 이미지 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">대표이미지</label>
							<div class="col-sm-8">
								<input type="file" class="file" name="file" multiple data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-o btn-default" data-browse-label="이미지 첨부하기">
								<p class="help-block">대표 이미지를 첨부해주세요.</p>
							</div>
						</div>
						<!-- 설명란 선택 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">설명란</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="c_content" rows="4"></textarea>
							</div>
						</div>
						
						<!-- 제출 버튼 -->
						<div class="form-group">
							<div style="text-align: center;">
								<div style="display: inline-block;">
									<button type="submit" id="btn_modify" class="btn btn-round btn-o btn-green">신청하기</button>
								</div>
							</div>
						</div>
			
				</div><!-- 모임 정보 입력 끝 -->
				</form>
			</div>
			<!---------------모임 등록하기 끝 ------------------------>
			
<!-- 	<script src="/Yolo/js/jquery-2.1.1.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- 모임 장소에 따른 hidden Div -->
	<script type="text/javascript">
		function div_OnOff(v,id){
			 // 라디오 버튼 value 값 조건 비교
			 if(v != "미확정"){
			  document.getElementById(id).style.display = ""; // 보여줌
			 }else{
			  document.getElementById(id).style.display = "none"; // 숨김
			 }
		}
		
// 		function div_OnOff2(v,id){
// 			if(v != "etc"){
// 			  document.getElementById(id).style.display = ""; // 보여줌
// 			 }else{
// 			  document.getElementById(id).style.display = "none"; // 숨김
// 		 }
// 		}
		
// 		function div_OnOff3(v,id){
// 			if(v != "yolo"){
// 			  document.getElementById(id).style.display = ""; // 보여줌
// 			 }else{
// 			  document.getElementById(id).style.display = "none"; // 숨김
// 		 }
// 		}
		
		function oneCheckbox(a){
	        var obj = document.getElementsByName("c_type");
	        for(var i=0; i<obj.length; i++){
	            if(obj[i] != a){
	                obj[i].checked = false;
	            }
	        }
	    }
		
		$(document).ready(function(){
		    $(".radio_p").click(function(){
		        var inputValue = $(this).attr("value");
// 		        alert($(this).val());
		        var targetBox = $("." + inputValue);
		        $(".box").not(targetBox).hide();
		        $(targetBox).show();
		    });
		});
		
		
// 		$(".type").click(function(){
			
// 			    alert($(this).val());
			    
// 		});
	</script>
	
