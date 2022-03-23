<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% 
	// 세션에 있는 id값 가져오기
	String u_id="";
	u_id = (String)session.getAttribute("u_id");
%>
	
<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyClub/portfolio-item.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/MyClub/ClubMyList.css" rel="stylesheet">


<style>


</style>

<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->


<div class="home-content">
	<div class="home-wrapper">
		<div class="row">
			<div class="col-lg-12 responsive">
				<h1>
					내 모임 <small>모임 정보</small>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
				<div class="post-content">
					<div class="image-block">
						<img src="/Yolo/upload/club/${list.cimg_name}" alt="blog image">
					</div>
					<h2 class="osLight">${list.c_title}</h2>
					<p>${list.c_place}</p>
					<p>${list.c_date}</p>
					<p>${list.c_content}</p>
				</div>
			</div>
			<!-- 회원리스트 보기 -->
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
						<!-- filter Form -->
						<div class="filter">
							<h1 class="osLight">회원리스트</h1>
							<a href="#" class="handleFilter"><span class="fa fa-bars"></span></a>
							<div class="clearfix"></div>
							<form class="filterForm">
								<ul class="blog-r-nav align-center">
									<li>
										<div class="userWidget-2">
											<div class="avatar">
												<img src="/Yolo/images/avatar-3.png" alt="avatar">
											</div>
											<div class="info">
												<div class="name">Rust Cohle</div>
												<div class="title">Administrator</div>
												<div class="address">Los Angeles, CA, USA</div>
											</div>
										</div>
									</li>
								</ul>
							</form>
						</div>
						<!-- filter Form end -->
					</div>
				</div>
			</div>
			<!-- 회원리스트 보기 end -->

			<br /> <br />
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ------------------------------------------------------- -->
<!-- Footer -->

<!-- 추가  -->
<script src="/Yolo/js/home.js" type="text/javascript"></script>
