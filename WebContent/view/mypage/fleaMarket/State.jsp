<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>reales | real estate web application</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<style >
.table {
    
    text-align: center;
}
.table > thead > tr > th {
    border-top-right-radius: 2px;
    text-align: center;
}
img {
	height: 60px;
	
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
		        <!--이 사이에! -->
			
			<div class="tables">		        
		        <div class="panel panel-default">
                        <div class="panel-heading">주문목록</div>
                        <div class="row tableContainer">
                            
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="input-group input-group-sm mb5">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn"><a class="btn btn-sm btn-green"><span class="icon-magnifier"></span></a></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="btn-group pull-right mb5">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-o btn-gray dropdown-toggle" data-toggle="dropdown">
                                        1-50 of 121
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li class="disabled"><a href="#">Newest</a></li>
                                            <li><a href="#">Oldest</a></li>
                                        </ul>
                                    </div>
                                    <button type="button" class="btn btn-sm btn-gray"><span class="fa fa-angle-left"></span></button>
                                    <button type="button" class="btn btn-sm btn-gray"><span class="fa fa-angle-right"></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="table-overflow">
                            <table class="table" id="inboxTable">
                                <thead>
                                    <tr>
                                    	<th></th>
										<th>상품명</th>
                                        <th>옵션</th>
                                        <th>수량</th>
                                        <th style="width:100px;">상태</th>
                                    </tr>
                                </thead>
                                <tbody class="table">
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>어디서든 볼 수 있는 옷</td>
                                        <td>신발은 사은품으로 드림</td>
                                        <td>5</td>
                                        <td>입금대기</td>
                                    </tr>
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>Jane Smith</td>
                                        <td>John Smith</td>
                                        <td>Hauntingly Beautiful Estate</td>
                                        <td>입금완료</td>
                                    </tr>
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>Rust Cohle</td>
                                        <td>John Smith</td>
                                        <td>Sophisticated Residence</td>
                                        <td>배송대기중</td>
                                    </tr>
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>Antony Iglesias</td>
                                        <td>John Smith</td>
                                        <td>House With a Lovely Glass Roof</td>
                                        <td>배송중</td>
                                    </tr>
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>John Smith</td>
                                        <td>John Smith</td>
                                        <td>Modern Residence in New York</td>
                                        <td>배송완료</td>
                                    </tr>
                                    <tr>
                                    	<th><div class="fig"><img src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></div></th>
                                        <td>John Smith</td>
                                        <td>John Smith</td>
                                        <td>Modern Residence in New York</td>
                                        <td>거래완료</td>
                                    </tr>
                                </tbody>
                            </table>
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
        
        <!-- ì¶ê°  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		
		
		
		
		
		
		
    </body>
</html>