<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  JSTL 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <!-- 추가 속성 CSS -->
        <link href="/Yolo/css_yolo/cssView/Club/clubList.css" rel="stylesheet">
        <link href="/Yolo/css_yolo/cssView/Club/clubInput.css" rel="stylesheet">
        
<!-- <script> -->
	 
<!-- </script> -->
            <div class="home-wrapper">
            <!-- 카테고리 선택 바 -->
<!--             <form class="form-horizontal" role="form" method="post" enctype="multipart/form-data" action="/Yolo/club/ClubInputOk.club"> -->
                <div class="filter">
                    <h1 class="osLight">모임찾기</h1>
                    <a href="#" class="handleFilter"><span class="icon-equalizer"></span></a>
                    <div class="clearfix"></div>
                    <form class="filterForm" name="search" method="post" action="/Yolo/club/ClubList.club">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 formItem">
                                <div class="formField">
                                
                                <!-- 카테고리별 -->
                                   <label>Category</label>
                                   <div class="checkbox custom-checkbox">
	                                   <div class="row">
	                                  		<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-primary" 
		                                   		value="교육">교육</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-success" 
		                                   		value="방송/연예">방송/연예</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-info" 
		                                   		value="전시/박람회">전시/박람회</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-warning" 
		                                   		value="취미활동">취미활동</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-danger" 
		                                   		value="패션/뷰티">패션/뷰티</button>
		                                   	</div>
		                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-red" 
		                                   		value="이벤트/파티">이벤트/파티</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-gray" 
		                                   		value="문화/예술">문화/예술</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-blue" 
		                                   		value="공모전">공모전</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-yellow" 
		                                   		value="여행">여행</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-magenta" 
		                                         value="친목/소모임">친목/소모임</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" name="keyWord" class= "btn btn-green2" 
		                                         value="기타">기타</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
		                                   		<button type="submit" class= "btn btn-green" 
		                                         >전체보기</button>
		                                   	</div>
	                                   </div>
                                   </div>
	                            </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 formItem">
                                <div class="formField">
                                
                                <!-- 지역별 -->
                                   <label>Location</label>
                                   <div class="checkbox custom-checkbox">
	                                   <div class="row">
	                                   		<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-success" 
		                                   		value="서울">서울</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-warning" 
		                                   		value="경기/인천">경기/인천</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-red" 
		                                   		value="대전/충남/충북/세종">대전/충청/세종</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-blue" 
		                                   		value="대구/경북">대구/경북</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-magenta" 
		                                   		value="광주/전남/전북">광주/전라</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-primary" 
		                                   		value="부산/울산/경남">부산/울산/경남</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-info" 
		                                   		value="제주">제주</button>
		                                   	</div>
		                                   	<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3">
		                                   		<button type="submit" name="location" class= "btn btn-danger" 
		                                   		value="미확정">기타지역</button>
		                                   	</div>
	                                   </div>
                                   </div>
	                            </div>
                            </div>
						</div>
                    </form>
                </div>
                
                <!-- 등록버튼 -->
				<div class="row bounds padding" >
				<br/>
					<div class="col-md-12 col-xs-12" style="text-align:right;">
						<div style="display:inline-block;">
						<a href="/Yolo/club/ClubInput.club" class="btn btn-round btn-green ">모임 등록하기</a>
						</div>
					</div>				
				</div>
                <!-- 검색결과 모임리스트 -->
                <div class="resultsList">
                    <div class="row">
                    	<c:choose>
                    		<c:when test="${fn:length(list) eq 0 }">
                    			<tr>
                    				<td colspan='7'>등록된 게시물이 없습니다.<br/></td>
                    				<td></td>
                    			</tr>
                    		</c:when>
                    		<c:otherwise>
                    			<c:forEach items="${list}" var="c">
			                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			                            <a href="/Yolo/club/ClubDetail.club?c_num=${c.c_num}" class="card">
			                                <div class="figure">
			                                    <img src="/Yolo/upload/club/${c.cimg_name}" alt="image">
			                                    <div class="figCaption">
			                                        <div><span class="icon-users"> 총 ${c.c_people} 명 / ${c.c_entry}명 신청</span> </div>
			                                        <span class="icon-eye"> ${c.c_hits}</span>
<!-- 			                                        <span class="icon-star"> 54</span> -->
			                                    </div>
			                                    <div class="figView"><span class="icon-eye"></span></div>
			                                    <div class="figType">${c.c_type}</div>
			                                </div>
			                                <h2>${c.c_title}</h2>
			                                <div class="cardAddress"><span class="icon-pointer"></span>${c.c_place}</div>
				                                <ul class="cardFeat">
				                                    <li><span class="fa fa-clock-o"></span>${c.c_period}</li>
				                                    <li><span class="fa fa-calendar"></span> ${c.c_date}</li>
				                                </ul>
			                                <div class="clearfix"></div>
			                            </a>
			                        </div>	
		                        </c:forEach>
	                        </c:otherwise>
                        </c:choose>
                    </div>
<!--                     <ul class="pagination"> -->
<!--                         <li class="disabled"><a href="#"><span class="fa fa-angle-left"></span></a></li> -->
<!--                         <li class="active"><a href="#">1</a></li> -->
<!--                         <li><a href="#">2</a></li> -->
<!--                         <li><a href="#">3</a></li> -->
<!--                         <li><a href="#">4</a></li> -->
<!--                         <li><a href="#">5</a></li> -->
<!--                         <li><a href="#"><span class="fa fa-angle-right"></span></a></li> -->
<!--                     </ul> -->

					<!-- 페이징 부분 -->
					<div class="row bounds padding" style="text-align:center;">
						<div class="col-md-4"></div>
						<div class="col-md-4 col-xs-12" style="display:inline-block;">
							<ul class="pagination pagination-round">
								<!-- 키워드/지역명검색 페이징 부분 -->
								<c:choose>
                    				<c:when test="${returnKey ne null}">
										<li><a href="ClubList.club?clubNowPage=${clubNowPage -1}&keyWord=${returnKey}"><span
												class="fa fa-angle-left"></span></a></li>
												
											<c:forEach var="paging" begin='${startPage}'  end='${endPage}' step ="1">
												<c:choose>
													<c:when test='${paging == clubNowPage}'>
														<li class="active"><a href="#">${paging}</a></li>
													</c:when>
													<c:otherwise>	
														<li><a href="/Yolo/club/ClubList.club?clubNowPage=${paging}&keyWord=${returnKey}">${paging}</a></li>	
													</c:otherwise>								
												</c:choose>
											</c:forEach>
										<li><a href="ClubList.club?clubNowPage=${clubNowPage +1}&keyWord=${returnKey}"><span class="fa fa-angle-right"></span></a></li>
									</c:when>
									<c:when test="${returnLoc ne null}">
										<li><a href="ClubList.club?clubNowPage=${clubNowPage -1}&location=${returnLoc}"><span
												class="fa fa-angle-left"></span></a></li>
												
											<c:forEach var="paging" begin='${startPage}'  end='${endPage}' step ="1">
												<c:choose>
													<c:when test='${paging == clubNowPage}'>
														<li class="active"><a href="#">${paging}</a></li>
													</c:when>
													<c:otherwise>	
														<li><a href="/Yolo/club/ClubList.club?clubNowPage=${paging}&location=${returnLoc}">${paging}</a></li>	
													</c:otherwise>								
												</c:choose>
											</c:forEach>
										<li><a href="ClubList.club?clubNowPage=${clubNowPage +1}&location=${returnLoc}"><span class="fa fa-angle-right"></span></a></li>
									</c:when>
									<c:otherwise>
										<li><a href="ClubList.club?clubNowPage=${clubNowPage -1}"><span
												class="fa fa-angle-left"></span></a></li>
												
											<c:forEach var="paging" begin='${startPage}'  end='${endPage}' step ="1">
												<c:choose>
													<c:when test='${paging == clubNowPage}'>
														<li class="active"><a href="#">${paging}</a></li>
													</c:when>
													<c:otherwise>	
														<li><a href="/Yolo/club/ClubList.club?clubNowPage=${paging}">${paging}</a></li>	
													</c:otherwise>								
												</c:choose>
											</c:forEach>
										<li><a href="ClubList.club?clubNowPage=${clubNowPage +1}"><span class="fa fa-angle-right"></span></a></li>
									</c:otherwise>
								</c:choose>
							</ul>				
						</div>
						<div class="col-md-4"></div>
					</div>
					<!-- 페이징 부분 끝 -->
                </div>
             </div>
<!--                 </form> -->
