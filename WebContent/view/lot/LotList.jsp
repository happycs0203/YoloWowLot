<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>LotList.jsp</title>
 
        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">
        
        <!--추가 css -->
</head>
        <style type="text/css">
        .dropdown-btn{
         max-width: 200px;
        }

        </style>
 <body class="notransition">

        <!-- Header -->

        <div id="header">
            <div class="logo">
                <a href="index.html">
                    <span class="fa fa-home marker"></span>
                    <span class="logoText">reales</span>
                </a>
            </div>
            <a href="#" class="navHandler"><span class="fa fa-bars"></span></a>
            <div class="search">
                <span class="searchIcon icon-magnifier"></span>
                <input type="text" placeholder="Search for houses, apartments...">
            </div>
            <div class="headerUserWraper">
                <a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span class="icon-user"></span><span class="counter">5</span></a>
                <a href="#" class="headerUser dropdown-toggle" data-toggle="dropdown">
                    <img class="avatar headerAvatar pull-left" src="/Yolo/images/avatar-1.png" alt="avatar">
                    <div class="userTop pull-left">
                        <span class="headerUserName">John Smith</span> <span class="fa fa-angle-down"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
                <div class="dropdown-menu pull-right userMenu" role="menu">
                    <div class="mobAvatar">
                        <img class="avatar mobAvatarImg" src="/Yolo/images/avatar-1.png" alt="avatar">
                        <div class="mobAvatarName">John Smith</div>
                    </div>
                    <ul>
                        <li><a href="#"><span class="icon-settings"></span>Settings</a></li>
                        <li><a href="profile.html"><span class="icon-user"></span>Profile</a></li>
                        <li><a href="#"><span class="icon-bell"></span>Notifications <span class="badge pull-right bg-red">5</span></a></li>
                        <li class="divider"></li>
                        <li><a href="#"><span class="icon-power"></span>Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="headerNotifyWraper">
                <a href="#" class="headerNotify dropdown-toggle" data-toggle="dropdown">
                    <span class="notifyIcon icon-bell"></span>
                    <span class="counter">5</span>
                </a>
                <div class="dropdown-menu pull-right notifyMenu" role="menu">
                    <div class="notifyHeader">
                        <span>Notifications</span>
                        <a href="#" class="notifySettings icon-settings"></a>
                        <div class="clearfix"></div>
                    </div>
                    <ul class="notifyList">
                        <li>
                            <a href="#">
                                <img class="avatar pull-left" src="/Yolo/images/avatar-1.png" alt="avatar">
                                <div class="pulse border-grey"></div>
                                <div class="notify pull-left">
                                    <div class="notifyName">Sed ut perspiciatis unde</div>
                                    <div class="notifyTime">5 minutes ago</div>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="notifyRound notifyRound-red fa fa-envelope-o"></div>
                                <div class="pulse border-red"></div>
                                <div class="notify pull-left">
                                    <div class="notifyName">Lorem Ipsum is simply dummy text</div>
                                    <div class="notifyTime">20 minutes ago</div>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="notifyRound notifyRound-yellow fa fa-heart-o"></div>
                                <div class="pulse border-yellow"></div>
                                <div class="notify pull-left">
                                    <div class="notifyName">It is a long established fact</div>
                                    <div class="notifyTime">2 hours ago</div>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="notifyRound notifyRound-magenta fa fa-paper-plane-o"></div>
                                <div class="pulse border-magenta"></div>
                                <div class="notify pull-left">
                                    <div class="notifyName">There are many variations</div>
                                    <div class="notifyTime">1 day ago</div>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                    </ul>
                    <a href="#" class="notifyAll">See All</a>
                </div>
            </div>
            <a href="#" class="mapHandler"><span class="icon-map"></span></a>
            <div class="clearfix"></div>
        </div>

        <!-- Left Side Navigation -->

        <div id="leftSide">
            <nav class="leftNav scrollable">
                <div class="search">
                    <span class="searchIcon icon-magnifier"></span>
                    <input type="text" placeholder="Search for houses, apartments...">
                    <div class="clearfix"></div>
                </div>
                <ul>
                    <li><a href="explore.html"><span class="navIcon icon-compass"></span><span class="navLabel">Explore</span></a></li>
                    <li><a href="single.html"><span class="navIcon icon-home"></span><span class="navLabel">Single</span></a></li>
                    <li><a href="add.html"><span class="navIcon icon-plus"></span><span class="navLabel">New</span></a></li>
                    <li class="hasSub">
                        <a href="#"><span class="navIcon icon-drop"></span><span class="navLabel">Colors</span><span class="fa fa-angle-left arrowRight"></span><span class="badge bg-yellow">5</span></a>
                        <ul class="colors">
                            <li><a href="#">Red <span class="fa fa-circle-o c-red icon-right"></span></a></li>
                            <li><a href="#">Green <span class="fa fa-circle-o c-green icon-right"></span></a></li>
                            <li><a href="#">Blue <span class="fa fa-circle-o c-blue icon-right"></span></a></li>
                            <li><a href="#">Yellow <span class="fa fa-circle-o c-yellow icon-right"></span></a></li>
                            <li><a href="#">Magenta <span class="fa fa-circle-o c-magenta icon-right"></span></a></li>
                        </ul>
                    </li>
                    <li class="hasSub">
                        <a href="#"><span class="navIcon icon-layers"></span><span class="navLabel">Elements</span><span class="fa fa-angle-left arrowRight"></span></a>
                        <ul>
                            <li><a href="buttons.html">Buttons</a></li>
                            <li><a href="icons.html">Icons <span class="badge pull-right bg-yellow">841</span></a></li>
                            <li><a href="grid.html">Grid</a></li>
                            <li><a href="widgets.html">Widgets</a></li>
                            <li><a href="components.html">Components</a></li>
                            <li><a href="lists.html">Lists</a></li>
                            <li><a href="tables.html">Tables</a></li>
                            <li><a href="form.html">Form</a></li>
                        </ul>
                    </li>
                    <li class="hasSub">
                        <a href="#"><span class="navIcon icon-link"></span><span class="navLabel">Pages</span><span class="fa fa-angle-left arrowRight"></span></a>
                        <ul>
                            <li><a href="signin.html">Sign In</a></li>
                            <li><a href="signup.html">Sign Up</a></li>
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="index.html">Homepage Slideshow</a></li>
                            <li><a href="index-map.html">Homepage Map</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="blog-post.html">Blog Post</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="leftUserWraper dropup">
                <a href="#" class="avatarAction dropdown-toggle" data-toggle="dropdown">
                    <img class="avatar" src="images/avatar-1.png" alt="avatar"><span class="counter">5</span>
                    <div class="userBottom pull-left">
                        <span class="bottomUserName">John Smith</span> <span class="fa fa-angle-up pull-right arrowUp"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#"><span class="icon-settings"></span>Settings</a></li>
                    <li><a href="profile.html"><span class="icon-user"></span>Profile</a></li>
                    <li><a href="#"><span class="icon-bell"></span>Notifications <span class="badge pull-right bg-red">5</span></a></li>
                    <li class="divider"></li>
                    <li><a href="#"><span class="icon-power"></span>Logout</a></li>
                </ul>
            </div>
        </div>
        <div class="closeLeftSide"></div>

        <!-- Content -->

        <div id="wrapper">
            <div id="mapView">
                <div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div>
            </div>
            <div id="content">
            
            
            <!-------------- 필터 --------------------->
                <div class="filter">
                    <h1 class="osLight">공간찾기</h1>
                    <a href="#" class="handleFilter"><span class="icon-equalizer"></span></a>
                    <div class="clearfix"></div>
                    <form class="filterForm">
                       
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-12  formItem">
                                <div class="col-md-3">
                                    <label>시</label>
                                    <a href="#" data-toggle="dropdown" class="btn btn-gray dropdown-btn dropdown-toggle propTypeSelect">
                                        <span class="dropdown-label">전체</span>
                                        <span class="fa fa-angle-down dsArrow"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-select full" role="menu">
                                        <li class="active"><input type="radio" name="pType" checked="checked"><a href="#">전체</a></li>
                                        <li><input type="radio" name="pType"><a href="#">서울</a></li>
                                        <li><input type="radio" name="pType"><a href="#">경기도</a></li>
                                        <li><input type="radio" name="pType"><a href="#">경상도</a></li>
                                        <li><input type="radio" name="pType"><a href="#">강원도</a></li>
                                        <li><input type="radio" name="pType"><a href="#">충청도</a></li>
                                    </ul>
                                </div>
                                
                                 <div class="col-md-4">
                                    <label>군·구</label>
                                    <a href="#" data-toggle="dropdown" class="btn btn-gray dropdown-btn dropdown-toggle propTypeSelect">
                                        <span class="dropdown-label">전체</span>
                                        <span class="fa fa-angle-down dsArrow"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-select full" role="menu">
                                        <li class="active"><input type="radio" name="pType" checked="checked"><a href="#">전체</a></li>
                                        <li><input type="radio" name="pType"><a href="#">양천구</a></li>
                                        <li><input type="radio" name="pType"><a href="#">영등포구</a></li>
                                        <li><input type="radio" name="pType"><a href="#">동작구</a></li>
                                        <li><input type="radio" name="pType"><a href="#">구로구</a></li>
                                        <li><input type="radio" name="pType"><a href="#">관악구</a></li>
                                    </ul>
                                </div>
                                
                            </div>
                            </div>
                        
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-3 formItem">
                                    <label>예약날짜</label>
                                        <input type="text" class="form-control col-md-12" id="datepicker"/>
                            </div>
                            
                          <div class="col-xs-12 col-sm-6 col-md-4  formItem">
                                <div class="formField">
                                    <label>인원</label>
                                    <div class="volume">
                                        <a href="#" class="btn btn-gray btn-round-left"><span class="fa fa-angle-left"></span></a>
                                        <input type="text" class="form-control" value="1">
                                        <a href="#" class="btn btn-gray btn-round-right"><span class="fa fa-angle-right"></span></a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            
                              <div class="col-xs-12 col-sm-6 col-md-4 formItem">
                                        <button style="margin-top: 20px;" class="btn btn-yellow col-md-7">검색</button>
                                        <div class="clearfix"></div>
                            </div>
                            
                        </div>
                        
                    
                    </form>
                </div>
                
                
                <!------------- 공간 검색 결과 리스트 보여주기 --------------------->
                <div class="row rightContainer">
                    <h3>공간검색결과</h3>
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
                            <a href="/Yolo/view/lot/LotView.jsp" class="card">
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
                                    <img src="/Yolo/images_yolo/lot/3.PNG" alt="image">
                                    <div class="figCaption">
                                        <div>40,000원/시간</div>
                                        <span class="icon-eye"> 180</span>
                                        <span class="icon-heart"> 87</span>
                                        <span class="icon-bubble"> 12</span>
                                    </div>
                                    <div class="figView"><span class="icon-eye"></span></div>
                                    
                                </div>
                                <h2>카페 윌리</h2>
                                <div class="cardAddress"><span class="icon-pointer"></span>홍대 합정</div>
                                <div class="cardRating">
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    (120)
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
                    
                    <ul class="pagination">
                        <li class="disabled"><a href="#"><span class="fa fa-angle-left"></span></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><span class="fa fa-angle-right"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
        <script src="/Yolo/js/jquery-ui.min.js"></script>
        <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
        <script src="/Yolo/js/jquery.placeholder.js"></script>
        <script src="/Yolo/js/bootstrap.js"></script>
        <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
        <script src="/Yolo/js/jquery.slimscroll.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdr4Ul6T6VHRn7H9wlqH63xNmKWuUbMy4&callback=initMap" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/app.js" type="text/javascript"></script>
        
    </body>
</html>