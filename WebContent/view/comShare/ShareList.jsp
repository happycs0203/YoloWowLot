<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>ShareList.jsp</title>
		<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">

<style>
#wrapper{ 
 	overflow: hidden; 
}



</style>

</head>
    <body class="notransition">
    
		<!-- Header -->
		<%@include file="/view/common/header.jsp"%>

        <!-- Content -->
        <div id="wrapper" class="full">
            <div id="mapView" class="min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="max">
		        <!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
		        <!-- 이 사이에! -->
		<div class="home-wrapper">
			<div class="home-content">
			<div class="row pb20">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<h1 class="osLight">공간 쉐어링</h1>
					<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 ">
						<h3 class="osLight">공간을 나누면 두배의 행복이!<br/>홀로 쓰기엔 버거운 공간을 공유해보세요</h3>
                    </div>
                    
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    	<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control">
									<span class="input-group-btn">
										<a href="#" class="btn btn-green">검색</a>
									</span>
							</div>
						</div>
					</div>
                    
					<div class="col-xs-12 col-sm-2 col-md-3 col-lg-3">
						<a href="#" class="btn btn-round btn-o btn-success">쉐어링 글쓰기</a>
					</div>
					
				</div> 
			</div>  
			
			<div class="clearfix"></div>
			
			
                <div class="row pb40">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <a href="single.html" class="propWidget-2">
                            <div class="fig">
                                <img src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <img class="blur" src="/Yolo/images_yolo/lot/1.PNG" alt="Modern Residence in New York">
                                <div class="opac"></div>
                                <div class="priceCap osLight"><span>가산스터디룸</span></div>
                                <div class="figType">상세보기</div>
                                <div class="address">서울특별시 금천구 가산디지털1로 151(가산동 371-47)<br/>이노플렉스 1차 2층</div>
                            </div>
                        </a>
                    </div>
                    
				</div> 
			</div>                  
		</div>     
                    
                    
                    <div class="clearfix"></div>
		        <!-- ------------------------------------------------------- -->
		        <!-- Footer -->
		        <%@include file="/view/common/footer.jsp"%>   
		        
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
        
        <!-- 추가  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
	
		
    </body>
</html>