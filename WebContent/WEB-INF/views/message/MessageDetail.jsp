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
<style type="text/css">
	.notificationsWidget .notification .notifyContent{
	    margin-left: 0;
	}
	.imgmessage{
		float:right;
	}
	.message{
		line-height: 17px;
	}
	</style>
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
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
		        <div class="row">
		        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		        
                            <div class="notificationsWidget">
                                <h5><span class="badge">5</span> Notifications</h5>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 notification">
                                    
                                    <div class="notifyContent">
                                        <div class="notifyBody">
                                            <img class="avatar pull-left" src="/Yolo/images/avatar-3.png" alt="avatar">
                                            <div class="notify pull-left">
                                            	<div class="name">Rust Cohle</div>
                                            	<div class="message">Sed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis undeSed ut perspiciatis unde</div>
                                            	
                                            </div>
                                            <div class="notifyRound notifyRound-red fa fa-envelope-o imgmessage"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- notification end -->
                            </div>
                            <!-- notificationsWidget end -->
                        </div>
		        </div>
		        <!-- row -->
		        </div>
		        <!-- home-wrapper -->
		        
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