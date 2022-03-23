<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>HostMyLot.jsp</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">
        
        <!-- 추가 css -->
           <link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">
       
    </head>
    
 
<body class="notransition">
    
		<!-- HostHeader -->
		<%@include file="/view/host/HostHeader.jsp"%>

        <!-- Content --> 
        <div id="wrapper" class="full">
            <div id="mapView" class="min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="max">
                <div class="widgets">
                    <h4 style="margin-bottom: 30px; font-size: 20px; font-family: 'Nanum Brush Script';">내 공간보기</h4>
                   
                   <!-- 승인 요청중 -->
                   <div class="col-md-12">
                    <div class="row" style="margin-bottom: 10px;">
                     <h3 style="margin: 5px;">승인 요청중인 공간 &nbsp;<span class="label label-warning">승인 대기</span></h3>
                     
                    
                            <div class="row">
                             
                                <div class="col-md-4 col-xs-12">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
                                            <div class="priceCap"><span>20,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>왕십리 아지트스튜디오</h3>
                                                <div class="address">왕십리</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 3</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	2</div>                                               
                                            </div>
                                        </div>
                                        
                                             </a>
                                   <a style="float:right; margin-bottom: 5px;" href="#" class="btn  btn-o btn-green">요청취소</a>
                                </div>
                                
                              
                                   <div class="col-md-4 col-xs-12">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/1.PNG" alt="image">
                                            <div class="priceCap"><span>5,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>공상온도</h3>
                                                <div class="address">홍대 합정</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 5</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	1</div>                                               
                                            </div>
                                        </div>      
                                    </a>
                                     <a style="float:right; margin-bottom: 5px;" href="#" class="btn  btn-o btn-green">요청취소</a>
                                </div>
                               
                                
                                   <div class="col-md-4 col-xs-12">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/3.PNG" alt="image">
                                            <div class="priceCap"><span>40,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>카페 윌리</h3>
                                                <div class="address">홍대 합정</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 8</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	1</div>                                               
                                            </div>
                                        </div>
                                                <a style="float:right; margin-bottom: 5px;" href="#" class="btn  btn-o btn-green">요청취소</a>
                                    </a>
                                </div>
                                
                            </div>
                     
                        </div>
                        
                     
                    </div>
                    
                    <!-- 승인완료 -->
                    <div class="col-md-12">
                    <div class="row" style="margin-bottom: 10px;">
                     <h3 style="margin: 5px;">승인 완료된 공간 &nbsp;<span class="label label-danger">승인 완료</span></h3>
                     
                        <div>
                            <div class="row">
                             
                                <div class="col-md-4 col-xs-12" style="background-color: white;">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/2.PNG" alt="image">
                                            <div class="priceCap"><span>20,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>왕십리 아지트스튜디오</h3>
                                                <div class="address">왕십리</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 3</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	2</div>                                               
                                            </div>
                                        </div>
                                                <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">수정</a>
                                                <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">삭제</a>
                                    </a>
                                  
                                </div>
                                   <div class="col-md-4 col-xs-12" style="background-color: white;">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/1.PNG" alt="image">
                                            <div class="priceCap"><span>5,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>공상온도</h3>
                                                <div class="address">홍대 합정</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 5</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	1</div>                                               
                                            </div>
                                        </div>
                                                <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">수정</a>
                                                <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">삭제</a>
                                    </a>
                                  
                                </div>
                                   <div class="col-md-4 col-xs-12" style="background-color: white;">
                                    <a href="/Yolo/view/lot/LotView.jsp" class="propWidget-1" style="margin-bottom: 5px;">
                                    
                                        <div class="fig">
                                            <img src="/Yolo/images_yolo/lot/3.PNG" alt="image">
                                            <div class="priceCap"><span>40,000원/시간</span></div>
                                            <div class="figCap">
                                                <h3>카페 윌리</h3>
                                                <div class="address">홍대 합정</div>
                                                <div class="feat feat-1"><span class="fa fa-eye"></span> 8</div>
                                                <div class="feat feat-2"><span class="icon-bubble"></span> 	1</div>                                               
                                            </div>
                                        </div>
                                               <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">수정</a>
                                                <a style="float:right; margin: 5px;" href="#" class="btn  btn-o btn-green">삭제</a>
                                    </a>
                                  
                                </div>
                                
                            </div>
                        </div>
                        </div>
                        
                     
                    </div>
                    
                    
               
                
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
  
        
        
        

        

		        

        <script src="/Yolo/js/json2.js"></script>
        <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
        <script src="/Yolo/js/underscore.js"></script>
        <script src="/Yolo/js/moment-2.5.1.js"></script>
        <script src="/Yolo/js/jquery-ui.min.js"></script>
        <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
        <script src="/Yolo/js/jquery.placeholder.js"></script>
        <script src="/Yolo/js/bootstrap.js"></script>
        <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
        <script src="/Yolo/js/jquery.slimscroll.min.js"></script>
        <script src="/Yolo/js/jquery.visible.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/clndr.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/fileinput.min.js"></script>
        <script src="/Yolo/js/app.js"></script>
        <script src="/Yolo/js/calendar.js"></script>
        
        <!-- ì¶ê°  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		
		
		
		
		
		
		
    </body>
</html>