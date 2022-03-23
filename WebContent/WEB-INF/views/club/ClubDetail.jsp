<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="yolo.club.dto.*" %>
    
	<!-- 추가 속성 CSS -->
    <link href="/Yolo/css_yolo/cssView/Club/clubDetail.css" rel="stylesheet">
    <link href="/Yolo/css_yolo/cssView/Club/tagPlus.css" rel="stylesheet">
    <link href="/Yolo/css_yolo/cssView/Club/slider.css" rel="stylesheet">
        
    <!-- 추가 속성 JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="/Yolo/js_yolo/club/clubwish.js"></script>
        
   			<div class="home-wrapper">
	                <div class="singleTop">
	                    <div id="carouselFull" class="carousel slide" data-ride="carousel">
	                        <ol class="carousel-indicators">
	                            <li data-target="#carouselFull" data-slide-to="0" class="active"></li>
	                            <li data-target="#carouselFull" data-slide-to="1"></li>
	                            <li data-target="#carouselFull" data-slide-to="2"></li>
	                            <li data-target="#carouselFull" data-slide-to="3"></li>
	                        </ol>
	                        <div class="carousel-inner">
	                            <div class="item active">
	                                <img src="/Yolo/upload/club/${list.cimg_name}" alt="First slide">
	                                <div class="container">
	                                    <div class="carousel-caption">
	                                        
	                                    </div>
	                                </div>
	                            </div>
<!-- 	                            <div class="item"> -->
<!-- 	                                <img src="/Yolo/images_yolo/club/wooden3.jpg" alt="Third slide"> -->
<!-- 	                                <div class="container"> -->
<!-- 	                                    <div class="carousel-caption"> -->
	                                        
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                            </div> -->
	                        </div>
	                        <a class="left carousel-control" href="#carouselFull" role="button" data-slide="prev"><span class="fa fa-chevron-left"></span></a>
	                        <a class="right carousel-control" href="#carouselFull" role="button" data-slide="next"><span class="fa fa-chevron-right"></span></a>
	                    </div>
	                    <div class="summary">
	                        <div class="row">
	                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
	                                <div class="summaryItem">
	                                    <h1 class="pageTitle" id="club_title">
											${list.c_title}&nbsp;
											
											<span id="bookmarkC" class="fa fa-heart-o"></span>
										</h1>
	                                    <div class="address"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
	                                    <ul class="users">
	                                    	<li><span class="icon-users"></span> 총 ${list.c_people} 명</li>
	                                    	<li> / ${list.c_entry} 명 신청</li>
	                                   	</ul>
	                                    <div class="clearfix"></div>
	                                    
	                                    <% 
	                                    ClubListVO clublistVO = (ClubListVO)request.getAttribute("list");
	                                    String tags = clublistVO.getC_tag();
	                                    StringTokenizer Onetag = new StringTokenizer(tags,",");
	                                    while(Onetag.hasMoreTokens())
	                                    {
	                                    %>
	                                   	<ul class="tags">
	                                        	<li><span class="tag" style="cursor: pointer;"><%=Onetag.nextToken()%></span></li>
	                                    </ul>
	                                    <% 
	                                    }
	                                    %>
	                                    
										<div class="clearfix"></div>
	                                    <ul class="features">
	                                        <li><span class="fa fa-calendar-o"> 신청기간</span><div>${list.c_recruit}</div></li>
	                                        <li><span class="fa fa-clock-o"> 활동주기</span><div>${list.c_period}</div></li>
	                                        <li><span class="fa fa-calendar"> 모임기간</span><div>${list.c_date}</div></li>
	                                    </ul>
	                                    <div class="clearfix"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
	                                <div class="agentAvatar summaryItem">
	                                     <div class="clearfix"></div>
	                                    <img class="avatar agentAvatarImg" src="/Yolo/images/avatar-2.png" alt="avatar">
	                                    <div class="agentName">${list.u_id}</div>
	                                </div>
	                                <input type="hidden" id="c_num" value="${list.c_num}" />
	                                <div class="mainFunction summaryItem">
	                              		 
	                                     <div class="clearfix"></div>
	                                    <a data-toggle="modal" href="#contactAgent" class="btn btn-lg btn-round btn-green contactBtn chat_in">문의하기</a>
	<!--                                     <a href="#confirmSigning" class="btn btn-lg btn-round btn-green applyBtn">신청하기</a> -->
	                                    <a href="/Yolo/mypage/appStatus/applyClubOk.myinfo?c_num=${list.c_num}" class="btn btn-lg btn-round btn-green applyBtn">신청하기</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
                	<div class="clearfix"></div>
                	<div class="description">
	                    <h3>상세설명</h3>
	                    <p>${list.c_content}</p>
	                </div>
	                <div class="share">
	                    <h3>모임 정보 공유하기</h3>
	                    <div class="row">
	                        <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem">
	                            <a href="#" class="btn btn-sm btn-round btn-o btn-facebook"><span class="fa fa-facebook"></span> Facebook</a>
	                        </div>
	                        <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem">
	                            <a href="#" class="btn btn-sm btn-round btn-o btn-twitter"><span class="fa fa-twitter"></span> Twitter</a>
	                        </div>
	                        <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem">
	                            <a href="#" class="btn btn-sm btn-round btn-o btn-google"><span class="fa fa-google-plus"></span> Google+</a>
	                        </div>
	                        <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem">
	                            <a href="#" class="btn btn-sm btn-round btn-o btn-pinterest"><span class="fa fa-pinterest"></span> Pinterest</a>
	                        </div>
	                    </div>
	                </div>
            	<div class="commentsFormWrapper">
	                <div class="cfAvatar">
	                    <img class="avatar" src="/Yolo/images/avatar-1.png" alt="avatar">
	                </div>
	           	</div>
	            <div class="clearfix"></div>
	            <!-- 지도 부분 시작 -->
	         	<div><h3>모임 장소</h3></div>
	            <div id="hero-container-map">
	            
					<div id="home-map"></div>
				</div>
				<!-- 지도 부분 끝 -->
				</form>	
			</div>
