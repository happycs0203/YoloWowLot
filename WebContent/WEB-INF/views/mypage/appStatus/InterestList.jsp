<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="yolo.lot.dto.*"%>
<!-- 추가 속성 CSS -->

<link href="/Yolo/css_yolo/cssView/appStatus/InterestList.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Club/clubList.css" rel="stylesheet">


         
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
                              	<%
                              		ArrayList lotlist = (ArrayList)request.getAttribute("lotlist");
                              	
                              		for(int i=0; i<lotlist.size(); i++){
                              			LotListVO vo = (LotListVO)lotlist.get(i);
                              		%>
		 		                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				                            <a href="/Yolo/lot/LotView.lot?pri_num=<%=vo.getPri_num() %>&pri_kind=<%=vo.getPri_kind() %>" class="card">
				                                <div class="figure">
				                                    <img src="/Yolo/upload/lot/<%=vo.getPriimg_name()%>" alt="image">
				                                    <div class="figCaption">
				                                        <div><%= vo.getPri_weekprice() %>원</div>
				                                        <span class="icon-eye"><%= vo.getPri_hits()%></span>
<!-- 				                                        <span class="icon-heart"> 99</span> -->
<!-- 				                                        <span class="icon-bubble"> 25</span> -->
				                                    </div>
				                                    <div class="figView"><span class="icon-eye"></span></div>
				                                 
				                                </div>
				                                <h2><%= vo.getPri_title() %>윙스터디 강남역점</h2>
				                                <div class="cardAddress"><span class="icon-pointer"></span><%= vo.getPri_addr() %></div>
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
                              		<%}%>

                              </div>
                              <div class="blog-pagination">
                                 <!-- 이전버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green">
                                 <span class="fa fa-angle-left"></span> Previous </a> 
                                 <!-- 다음버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green pull-right">
                                 <span class="fa fa-angle-right"></span> Next </a>
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
         </div> <!-- / blog-content -->
         
         <div class="clearfix"></div>
         

      
    
     
      <script src="/Yolo/js/jquery.mjs.nestedSortable.js"></script>
      <script src="/Yolo/js/sortable.js"></script>
      <script src="/Yolo/js/blog.js" type="text/javascript"></script>
     
     
    
   
     
      
