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
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/fullscreen-slider.css" rel="stylesheet">
<!--         <link href="/Yolo/css/app.css" rel="stylesheet"> -->
        <link href="/Yolo/css_yolo/cssView/common/app.css" rel="stylesheet">

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
            	<div id="hero-container">
		            <ul class="cb-slideshow">
		                <li><span></span></li>
		                <li><span></span></li>
		                <li><span></span></li>
		                <li><span></span></li>
		                <li><span></span></li>
		                <li><span></span></li>
		            </ul>
		            <div class="home-caption">
		                <div class="home-title">인생을 즐길 줄 아는 사람들을 위한 공간 공유 서비스</div>
		                <div class="home-subtitle">Yolo Wow Lot</div>
<!-- 		                <a href="#" class="btn btn-lg btn-black">Learn More</a> -->
		            </div>
		            <div class="search-panel">
		                <form class="form-inline" role="form">
		                    <div class="form-group">
<!-- 		                        <input type="text" class="form-control" id="city" placeholder="City" autocomplete="off"> -->
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <a href="#" data-toggle="dropdown" class="btn btn-white dropdown-toggle">
		                            <span class="dropdown-label">Bedrooms</span> <span class="caret"></span>
		                        </a>
		                        <ul class="dropdown-menu dropdown-select">
		                            <li class="active"><input type="radio" name="bedno" checked="checked"><a href="#">Bedrooms</a></li>
		                            <li><input type="radio" name="bedno"><a href="#">1</a></li>
		                            <li><input type="radio" name="bedno"><a href="#">2</a></li>
		                            <li><input type="radio" name="bedno"><a href="#">3</a></li>
		                            <li><input type="radio" name="bedno"><a href="#">4</a></li>
		                        </ul>
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <a href="#" data-toggle="dropdown" class="btn btn-white dropdown-toggle">
		                            <span class="dropdown-label">Bathrooms</span> <span class="caret"></span>
		                        </a>
		                        <ul class="dropdown-menu dropdown-select">
		                            <li class="active"><input type="radio" name="bathno" checked="checked"><a href="#">Bathrooms</a></li>
		                            <li><input type="radio" name="bathno"><a href="#">1</a></li>
		                            <li><input type="radio" name="bathno"><a href="#">2</a></li>
		                            <li><input type="radio" name="bathno"><a href="#">3</a></li>
		                            <li><input type="radio" name="bathno"><a href="#">4</a></li>
		                        </ul>
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <div class="input-group">
		                            <div class="input-group-addon">$</div>
		                            <input class="form-control price" type="text" placeholder="From">
		                        </div>
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <div class="input-group">
		                            <div class="input-group-addon">$</div>
		                            <input class="form-control price" type="text" placeholder="To">
		                        </div>
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> For Rent</label></div>
		                    </div>
		                    <div class="form-group hidden-xs adv">
		                        <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> For Sale</label></div>
		                    </div>
		                    <div class="form-group">
		                        <a href="explore.html" class="btn btn-green">Search</a>
		                        <a href="#" class="btn btn-o btn-white pull-right visible-xs" id="advanced">Advanced Search <span class="fa fa-angle-up"></span></a>
		                    </div>
		                </form>
		            </div>
		        </div>
		        <div class="highlight">
		            <div class="h-title osLight">Find your new place with Reales</div>
		            <div class="h-text osLight">Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</div>
		        </div>
	
				<!-- 컨텐츠2 -->
		       <div class="home-wrapper">
		            <div class="home-content">
		                <h2 class="osLight">Our Services</h2>
		                <div class="row pb40">
		                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 s-menu-item">
		                        <a href="#">
		                            <span class="icon-pointer s-icon"></span>
		                            <div class="s-content">
		                                <h2 class="s-main osLight">Find places anywhere in the world</h2>
		                                <h3 class="s-sub osLight">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 s-menu-item">
		                        <a href="#">
		                            <span class="icon-users s-icon"></span>
		                            <div class="s-content">
		                                <h2 class="s-main osLight">We have agents with experience</h2>
		                                <h3 class="s-sub osLight">Nulla convallis egestas rhoncus consectetur adipiscing elit</h3>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 s-menu-item">
		                        <a href="#">
		                            <span class="icon-home s-icon"></span>
		                            <div class="s-content">
		                                <h2 class="s-main osLight">Buy or rent beautiful properties</h2>
		                                <h3 class="s-sub osLight">Donec facilisis fermentum sem, ac viverra ante luctus vel</h3>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 s-menu-item">
		                        <a href="#">
		                            <span class="icon-cloud-upload s-icon"></span>
		                            <div class="s-content">
		                                <h2 class="s-main osLight">With agent account you can list properties</h2>
		                                <h3 class="s-sub osLight">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		                <h2 class="osLight">Recently Listed Properties</h2>
		                <div class="row pb40">
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/1-1.png" alt="Modern Residence in New York">
		                                <img class="blur" src="/Yolo/images/prop/1-1.png" alt="Modern Residence in New York">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$1,750,000</span></div>
		                                <div class="figType">FOR SALE</div>
		                                <h3 class="osLight">Modern Residence in New York</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star-o star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/2-1.png" alt="Hauntingly Beautiful Estate">
		                                <img class="blur" src="/Yolo/images/prop/2-1.png" alt="Hauntingly Beautiful Estate">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$1,550,000</span></div>
		                                <div class="figType">FOR RENT</div>
		                                <h3 class="osLight">Hauntingly Beautiful Estate</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/3-1.png" alt="Luxury Mansion">
		                                <img class="blur" src="/Yolo/images/prop/3-1.png" alt="Luxury Mansion">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$2,350,000</span></div>
		                                <div class="figType">FOR SALE</div>
		                                <h3 class="osLight">Luxury Mansion</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/4-1.png" alt="Sophisticated Residence">
		                                <img class="blur" src="/Yolo/images/prop/4-1.png" alt="Sophisticated Residence">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$1,340,000</span></div>
		                                <div class="figType">FOR RENT</div>
		                                <h3 class="osLight">Sophisticated Residence</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/5-1.png" alt="House With a Lovely Glass">
		                                <img class="blur" src="/Yolo/images/prop/5-1.png" alt="House With a Lovely Glass">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$1,930,000</span></div>
		                                <div class="figType">FOR SALE</div>
		                                <h3 class="osLight">House With a Lovely Glass</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
		                        <a href="single.html" class="propWidget-2">
		                            <div class="fig">
		                                <img src="/Yolo/images/prop/1-1.png" alt="Modern Residence in New York">
		                                <img class="blur" src="/Yolo/images/prop/1-1.png" alt="Modern Residence in New York">
		                                <div class="opac"></div>
		                                <div class="priceCap osLight"><span>$1,750,000</span></div>
		                                <div class="figType">FOR SALE</div>
		                                <h3 class="osLight">Modern Residence in New York</h3>
		                                <div class="address">39 Remsen St, Brooklyn, NY 11201, USA</div>
		                                <ul class="rating">
		                                    <li><span class="fa fa-star star-1"></span></li>
		                                    <li><span class="fa fa-star star-2"></span></li>
		                                    <li><span class="fa fa-star star-3"></span></li>
		                                    <li><span class="fa fa-star star-4"></span></li>
		                                    <li><span class="fa fa-star-o star-5"></span></li>
		                                </ul>
		                            </div>
		                        </a>
		                    </div>
		                </div>
		                
		            </div>
		        </div>
		        
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