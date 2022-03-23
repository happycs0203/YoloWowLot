<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 추가 Css -->
<link href="/Yolo/css_yolo/cssView/appStatus/appliedClub.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/appStatus/appliedLot.css" rel="stylesheet">


			<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
			<!-- 이 사이에! -->
			<!-- Portfolio Item Heading -->
			<!-- Content -->

			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<h2 class="osLight align-left">예약한 공간</h2><br/>
								<c:choose>
									<c:when test="${lotlist == null}">
		                    			<tr>
		                    				<td colspan='7'>등록된 게시물이 없습니다.</td>
		                    			</tr>
		                   			</c:when>
		                   			<c:otherwise>
										<div class="row pb20">
											<c:forEach items="${lotlist}" var="l">
												<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
													<div class="article bg-w">
														<a href="/Yolo/lot/LotView.lot?pri_num=${l.pri_num}" class="image"><img
															src="/Yolo/upload/lot/${l.priimg_name}" alt="blog image"></a>
														<div class="article-category">
															<a href="#" class="text-green">${l.bl_pay} \</a>
															<a href="#" class="text-green"> / ${l.pri_booktype}</a>
														</div>
														<h4 class="osLight">
															<a href="blog-post.html">${l.pri_title}</a>
														</h4>
														<div class="footer">
															<a href="#" class="fa fa-check-circle"> 예약번호 : ${l.pri_num}</a>
															<a href="#" class="fa  fa-calendar"> 예약일시 : ${l.bl_date}</a>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>

	<!-- 추가  -->
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
