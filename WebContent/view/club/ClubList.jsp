<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  JSTL 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>ClubList</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">
        
        <!-- 추가 속성 CSS -->
        <link href="/Yolo/css_yolo/cssView/Club/clubList.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="notransition">

		<!-- Header -->
		<%@include file="/view/common/header_noMap.jsp"%>
		
		
        <!-- Content -->

        <div id="wrapper">
            <div id="content">
                <div class="filter">
                    <h1 class="osLight">Filter your results</h1>
                    <a href="#" class="handleFilter"><span class="icon-equalizer"></span></a>
                    <div class="clearfix"></div>
                    <form class="filterForm">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 formItem">
                                <div class="formField">
                                   <label>Category</label>
                                   <div class="checkbox custom-checkbox">
	                                   <div class="row">
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	교육	
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	방송/연예
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	전시/박람회
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	취미활동
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	패션/뷰티
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	이벤트/파티
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	문화/예술
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	공모전
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	여행
			                                   </label>
		                                   </div>
	                                   </div>
                                   </div>
	                            </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 formItem">
                                <div class="formField">
                                   <label>Location</label>
                                   <div class="checkbox custom-checkbox">
	                                   <div class="row">
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	서울
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	경기/인천
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	대전/충청/세종
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	대구/경북
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	부산/울산/경남
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	광주/전라
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	강원
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	제주
			                                   </label>
		                                   </div>
		                                   <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
			                                   <label>
				                                   <input type="checkbox">
				                                   <span class="fa fa-check"></span>
				                                   	기타지역
			                                   </label>
		                                   </div>
	                                   </div>
                                   </div>
	                            </div>
                            </div>
                        </div>
                    </form>
                </div>
                
                <!------------- 모임 검색 결과 리스트 보여주기 --------------------->
                <div class="resultsList">
                    <div class="row">
                    	<c:choose>
                    		<c:when test="${list == null}">
                    			<tr>
                    				<td colspan='7'>등록된 게시물이 없습니다.</td>
                    			</tr>
                    		</c:when>
                    		<c:otherwise>
                    			<c:forEach items="${list}" var="c">
			                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			                            <a href="Yolo/club/ClubDetail.club" class="card">
			                                <div class="figure">
			                                    <img src="/Yolo/upload/club/${c.cimg_name}" alt="image">
			                                    <div class="figCaption">
			                                        <div><span class="icon-users"> 총 ${c.c_people} 명 / 1명 신청가능</span> </div>
			                                        <span class="icon-eye"> 200</span>
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
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <a href="ClubDetail.jsp" class="card">
                                <div class="figure">
                                    <img src="/Yolo/images_yolo/club/network.jpg" alt="image">
                                    <div class="figCaption">
                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
                                        <span class="icon-eye"> 200</span>
                                        <span class="icon-star"> 16</span>
                                    </div>
                                    <div class="figView"><span class="icon-eye"></span></div>
                                    <div class="figType">소모임</div>
                                </div>
                                <h2>1인미디어 비즈니스 매칭 네트워킹 모임</h2>
                                <div class="cardAddress"><span class="icon-pointer"></span>서울 서초구 서초동 서울 서초구 서초동 중추빌딩 1층, 50플러스코리안미디어 협동조합 스튜디오</div>
                                <ul class="cardFeat">
                                    <li><span class="fa fa-clock-o"></span>일시적</li>
                                    <li><span class="fa fa-calendar"></span> 6월 28일(수) 19:00 ~ 21:00</li>
                                </ul>
                                <div class="clearfix"></div>
                            </a>
                        </div>
                    </div>
                    <ul class="pagination">
                        <li class="disabled"><a href="#"><span class="fa fa-angle-left"></span></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><span class="fa fa-angle-right"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
        <script src="/Yolo/js/jquery-ui.min.js"></script>
        <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
        <script src="/Yolo/js/jquery.placeholder.js"></script>
        <script src="/Yolo/js/bootstrap.js"></script>
        <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
        <script src="/Yolo/js/jquery.slimscroll.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBh5iJnCJrUZugfpicBfCPv3pCLOTat6gM&sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/app.js" type="text/javascript"></script>
    </body>
</html>