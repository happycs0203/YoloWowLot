<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>관심리스트</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">

<!-- 추가 속성 CSS -->

<link href="/Yolo/css_yolo/cssView/appStatus/InterestList.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/clubList.css" rel="stylesheet">

</head>
<body class="notransition no-hidden">
   <!-- Header -->
   <%@include file="/view/common/header.jsp"%>
   <!-- / Header -->
   
   
   <div id="wrapper" class="full">
      <div id="mapView" class="min">
         <div class="mapPlaceholder">
            <span class="fa fa-spin fa-spinner"></span> Loading map...
         </div>
      </div>
      <div id="content" class="max">
         
         <!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
      
         <div class="blog-content">
            <div class="home-wrapper">
            
<!--             상품 등록하기 버튼 -->
<!--             <div class="input-btn"> -->
<!--                <a href="#" class="btn btn-round btn-green btn-sm">상품 등록하기</a> -->
<!--             </div>/ 상품 등록하기 버튼 -->
               
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                  <!-- 플리마켓, 상품 Tab  -->
                     <div class="tabsContainer">
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                           <li class="active"><a href="#lot" role="tab"
                              data-toggle="tab"><span class="icon-heart"></span> 공간보기</a></li>
                           <li><a href="#club" role="tab" data-toggle="tab"><span
                                 class="icon-star"></span> 모임보기</a></li>
                        </ul>
                                                
                        <div class="tab-content">
                           
							<!-- 관심등록한 공간 -->
                           <div class="tab-pane fade in active" id="lot">
                              <div class="row">
	                              <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		                            	<a href="single.html" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/lot/1.PNG" alt="image">
		                                    <div class="figCaption">
		                                        <div>5,000원/시간</div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-heart"> 54</span>
		                                        <span class="icon-bubble"> 13</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    
		                                </div>
		                                <h2>공상온도</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>홍대 합정	</div>
		                                <div class="cardRating">
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star-o"></span>
		                                    (146)
		                                </div>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
		                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		                            <a href="single.html" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/lot/4.PNG" alt="image">
		                                    <div class="figCaption">
		                                        <div>2,000원/시간</div>
		                                        <span class="icon-eye"> 145</span>
		                                        <span class="icon-heart"> 99</span>
		                                        <span class="icon-bubble"> 25</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                 
		                                </div>
		                                <h2>윙스터디 강남역점</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>강남</div>
		                                <div class="cardRating">
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star-o"></span>
		                                    (170)
		                                </div>
		                                
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
		                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		                            <a href="single.html" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
		                                    <div class="figCaption">
		                                        <div>20,000원/시간</div>
		                                        <span class="icon-eye"> 175</span>
		                                        <span class="icon-heart"> 67</span>
		                                        <span class="icon-bubble"> 9</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    
		                                </div>
		                                <h2>왕십리 아지트스튜디오</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>왕십리</div>
		                                <div class="cardRating">
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    (123)
		                                </div>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
		                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		                            <a href="single.html" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
		                                    <div class="figCaption">
		                                        <div>20,000원/시간</div>
		                                        <span class="icon-eye"> 175</span>
		                                        <span class="icon-heart"> 67</span>
		                                        <span class="icon-bubble"> 9</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    
		                                </div>
		                                <h2>왕십리 아지트스튜디오</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>왕십리</div>
		                                <div class="cardRating">
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    <span class="fa fa-star"></span>
		                                    (123)
		                                </div>
                              		  <div class="clearfix"></div>
                          	  		</a>
                      			</div>
                              </div>
                              <div class="blog-pagination">
                                 <a href="#" class="btn btn-o btn-round btn-green"><span
                                    class="fa fa-angle-left"></span> older articles</a> <a href="#"
                                    class="btn btn-o btn-round btn-green pull-right">newer
                                    articles <span class="fa fa-angle-right"></span>
                                 </a>
                                 <div class="clearfix"></div>
                              </div>
                           </div><!-- / 플리마켓 content -->

                           <!-- 관심등록한 모임 -->
                           <div class="tab-pane fade" id="club">
                              <div class="row">
	                              <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden1.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
	                        	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden2.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
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
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>1인미디어 비즈니스 매칭 네트워킹 모임</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>일시적</li>
		                                    <li><span class="fa fa-calendar"></span> 6월 28일(수) 19:00 ~ 21:00</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
		                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden1.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
	                        	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden2.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
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
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>1인미디어 비즈니스 매칭 네트워킹 모임</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>일시적</li>
		                                    <li><span class="fa fa-calendar"></span> 6월 28일(수) 19:00 ~ 21:00</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
		                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden1.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
	                        	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
		                            <a href="ClubDetail.jsp" class="card">
		                                <div class="figure">
		                                    <img src="/Yolo/images_yolo/club/wooden2.jpg" alt="image">
		                                    <div class="figCaption">
		                                        <div><span class="icon-users"> 총 30 명 / 10명 신청가능</span> </div>
		                                        <span class="icon-eye"> 200</span>
		                                        <span class="icon-star"> 54</span>
		                                    </div>
		                                    <div class="figView"><span class="icon-eye"></span></div>
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>정기적</li>
		                                    <li><span class="fa fa-calendar"></span>7월 8일 (토) ~ 7월 29일 (토)</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
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
		                                    <div class="figType">취미활동</div>
		                                </div>
		                                <h2>1인미디어 비즈니스 매칭 네트워킹 모임</h2>
		                                <div class="cardAddress"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
		                                <ul class="cardFeat">
		                                    <li><span class="fa fa-clock-o"></span>일시적</li>
		                                    <li><span class="fa fa-calendar"></span> 6월 28일(수) 19:00 ~ 21:00</li>
		                                </ul>
		                                <div class="clearfix"></div>
		                            </a>
		                        </div>
                              </div>
                              <div class="blog-pagination">
                                 <!-- 이전버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green">
                                 <span class="fa fa-angle-left"></span> Previous </a> 
                                 <!-- 다음버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green pull-right">
                                 <span class="fa fa-angle-right"></span> Next </a>
                              </div>                              
                           </div><!-- / 상품 content -->
                        </div>
                         
                     </div> <!-- / 플리마켓, 상품 Tab -->
                  </div> <!-- / col-xs-12 col-sm-12 col-md-9 col-lg-9 -->
               </div> <!-- / row -->
            </div> <!-- / home-wrapper -->
            <!-- ------------------------------------------------------- -->
            <!-- Footer -->
            <%@include file="/view/common/footer.jsp"%>
         </div> <!-- / blog-content -->
         
         <div class="clearfix"></div>
         
      </div> <!-- / Content -->
   </div> <!-- / wrapper -->
      
      <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
      <script src="/Yolo/js/jquery-ui.min.js"></script>
      <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
      <script src="/Yolo/js/jquery.placeholder.js"></script>
      <script src="/Yolo/js/bootstrap.js"></script>
      <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
      <script src="/Yolo/js/jquery.visible.js"></script>
      <script src="/Yolo/js/jquery.slimscroll.min.js"></script>
      <script
         src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places"
         type="text/javascript"></script>
      <script src="/Yolo/js/jquery.mjs.nestedSortable.js"></script>
      <script src="/Yolo/js/infobox.js"></script>
      <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
      <script src="/Yolo/js/bootstrap-datepicker.js"></script>
      <script src="/Yolo/js/app.js" type="text/javascript"></script>
      <script src="/Yolo/js/sortable.js"></script>
      <script src="/Yolo/js/blog.js" type="text/javascript"></script>
      <script src="/Yolo/js/json2.js"></script>
      <script src="/Yolo/js/underscore.js"></script>
      <script src="/Yolo/js/moment-2.5.1.js"></script>
      <script src="/Yolo/js/clndr.js"></script>
      <script src="/Yolo/js/fileinput.min.js"></script>
      <script src="/Yolo/js/calendar.js"></script>
</body>
</html>