<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>YOLO - HOST</title>
        
        <link href="<c:url value='/css/font-awesome.css'/>" rel="stylesheet">
        <link href="<c:url value='/css/simple-line-icons.css'/>" rel="stylesheet">
        <link href="<c:url value='/css/fileinput.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet">
        <link href="<c:url value='/css/fullscreen-slider.css'/>" rel="stylesheet">
        <link href="<c:url value='/css_yolo/cssView/common/app.css'/>" rel="stylesheet">
        
		<link href="<c:url value='/css_yolo/cssView/Host/host.css'/>" rel="stylesheet">
		<style type="text/css">
		#footer_title{
			font-size: 3em;
		}

		.home-footer{
    		position: relative;
		}

		</style>
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
 
</head>
<body class="notransition">
		<!-- Header -->
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="menu" />
        
        <div id="wrapper" class="full">
            <div id="mapView" class="min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="max">
		        <!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
		        <!-- 이 사이에! -->
		        
		        <tiles:insertAttribute name="body" />
		        
		        <!-- ------------------------------------------------------- -->
		       
            </div>
            <div class="clearfix"></div>
        </div>
    
        <script src=" <c:url value='/js/json2.js'/> "></script>
        <script src=" <c:url value='/js/jquery-2.1.1.min.js'/> "></script>
        <script src=" <c:url value='/js/underscore.js'/> "></script>
        <script src=" <c:url value='/js/moment-2.5.1.js'/> "></script>
        <script src=" <c:url value='/js/jquery-ui.min.js'/> "></script>
        <script src=" <c:url value='/js/jquery-ui-touch-punch.js'/> "></script>
        <script src=" <c:url value='/js/jquery.placeholder.js'/> "></script>
        <script src=" <c:url value='/js/bootstrap.js'/> "></script>
        <script src=" <c:url value='/js/jquery.touchSwipe.min.js'/> "></script>
        <script src=" <c:url value='/js/jquery.slimscroll.min.js'/> "></script>
        <script src=" <c:url value='/js/jquery.visible.js'/> "></script>
        <script src=" <c:url value='http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript'/> "></script>
        <script src=" <c:url value='/js/infobox.js'/>"></script>
        <script src=" <c:url value='/js/clndr.js'/> "></script>
        <script src=" <c:url value='/js/jquery.tagsinput.min.js'/> "></script>
        <script src=" <c:url value='/js/bootstrap-datepicker.js'/> "></script>
        <script src=" <c:url value='/js/fileinput.min.js'/> "></script>
        <script src=" <c:url value='/js/app.js'/> "></script>
        <script src=" <c:url value='/js/calendar.js'/> "></script>
        
        <!-- 추가  -->
		<script src=" <c:url value='/Yolo/js/home.js'/> " type="text/javascript"></script>
		<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
		<!-- 다음 맵 -->
      <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
      <script src=" <c:url value='/js_yolo/postcode/postcode.js'/> " type="text/javascript"></script>
		
</body>
</html>