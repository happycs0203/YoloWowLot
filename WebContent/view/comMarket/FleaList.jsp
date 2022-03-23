<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>플리마켓/상품 리스트</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">

<!-- 추가 속성 CSS -->
<link href="/Yolo/css_yolo/cssView/comMarket/fleaList.css" rel="stylesheet">


<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


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
            
            <!-- 상품 등록하기 버튼 -->
            <div class="input-btn">
               <a href="#" class="btn btn-round btn-green btn-sm">상품 등록하기</a>
            </div><!-- / 상품 등록하기 버튼 -->
               
               
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                  <!-- 플리마켓, 상품 Tab  -->
                     <div class="tabsContainer">
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                           <li class="active"><a href="#home" role="tab"
                              data-toggle="tab"><span class="icon-home"></span> FLEA MARKET</a></li>
                           <li><a href="#profile" role="tab" data-toggle="tab"><span
                                 class="icon-handbag"></span> GOODS</a></li>
                        </ul>
                                                
                        <div class="tab-content">
                           <!-- 플리마켓 content -->
                           <div class="tab-pane fade in active" id="home">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 id="oslight" class="osLight">
                                          <a href="blog-post.html">Subtly Twisting Geometry
                                             Inserted in Raw Nature</a>
                                       </h4>
                                       <p>Lorem Ipsum is simply dummy text of the printing and
                                          typesetting industry. Lorem Ipsum has been the industry's
                                          standard dummy text ever since the 1500s, when an unknown
                                          printer took a galley of type and scrambled it to make a
                                          type specimen book.</p>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Provocative Home Design
                                             Re-Shaping The Landscape</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">Jane Smith</a>, <a href="#">Sep 3, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress2.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Apartments</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Luminous 3 Bedroom Apartment
                                             Flaunting Modern Style</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress3.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Living Room</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">How Does A Designer Home Look
                                             Like</a>
                                       </h4>
                                       <p>Lorem Ipsum is simply dummy text of the printing and
                                          typesetting industry. Lorem Ipsum has been the industry's
                                          standard dummy text ever since the 1500s, when an unknown
                                          printer took a galley of type and scrambled it to make a
                                          type specimen book.</p>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="blog-pagination">
                                 <a href="#" class="btn btn-o btn-round btn-green"><span
                                    class="fa fa-angle-left"></span> Older Articles</a> <a href="#"
                                    class="btn btn-o btn-round btn-green pull-right">Newer
                                    Articles <span class="fa fa-angle-right"></span>
                                 </a>
                                 <div class="clearfix"></div>
                              </div>
                           </div><!-- / 플리마켓 content -->

                           <!-- 상품 content -->
                           <div class="tab-pane fade" id="profile">
                           
                              <label><h5>Category</h5></label>
                              <div class="checkbox custom-checkbox">
                                 <div class="row">
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> fashion
                                       </label>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> living
                                       </label>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> food
                                       </label>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> cosmetics
                                       </label>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> child
                                       </label>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
                                       <label> <input type="checkbox"> <span
                                          class="fa fa-check"></span> others
                                       </label>
                                    </div>
                                 </div>
                                 <hr>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Stylish Modern Ranch Exuding
                                             a Welcoming Feel</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Private Contemporary Home
                                             Balancing Openness</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 2, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Modern Two-Level Pool House
                                             in Los Angeles</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Stylish Modern Ranch Exuding
                                             a Welcoming Feel</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Private Contemporary Home
                                             Balancing Openness</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 2, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                    <div class="article">
                                       <a href="blog-post.html" class="image"><img
                                          src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
                                       <div class="article-category">
                                          <a href="#" class="text-green">Architecture</a>
                                       </div>
                                       <h4 class="osLight">
                                          <a href="blog-post.html">Modern Two-Level Pool House
                                             in Los Angeles</a>
                                       </h4>
                                       <div class="footer">
                                          <a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="blog-pagination">
                                 <!-- 이전버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green">
                                 <span class="fa fa-angle-left"></span> Older Articles</a> 
                                 <!-- 다음버튼 -->
                                 <a href="#" class="btn btn-o btn-round btn-green pull-right">Newer Articles 
                                 <span class="fa fa-angle-right"></span>
                                 </a>
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