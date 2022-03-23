<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>ClubDetail</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">
        
        <!-- 추가 속성 CSS -->
        <link href="/Yolo/css_yolo/cssView/Club/clubDetail.css" rel="stylesheet">
        <link href="/Yolo/css_yolo/cssView/Club/tagPlus.css" rel="stylesheet">

    </head>
    <body class="notransition">

       	<!-- Header -->
		<%@include file="/view/common/header.jsp"%>

        <!-- Content -->

        <div id="wrapper">
            <div id="mapView" class="mob-min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="mob-max">
                <div class="singleTop">
                    <div id="carouselFull" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselFull" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselFull" data-slide-to="1"></li>
                            <li data-target="#carouselFull" data-slide-to="2"></li>
                            <li data-target="#carouselFull" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="/Yolo/images_yolo/club/wooden1.jpg" alt="First slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="/Yolo/images_yolo/club/wooden2.jpg" alt="Second slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="/Yolo/images_yolo/club/wooden3.jpg" alt="Third slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="/Yolo/images/prop/4-4.png" alt="Fourth slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carouselFull" role="button" data-slide="prev"><span class="fa fa-chevron-left"></span></a>
                        <a class="right carousel-control" href="#carouselFull" role="button" data-slide="next"><span class="fa fa-chevron-right"></span></a>
                    </div>
                    <div class="summary">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="summaryItem">
                                    <h1 class="pageTitle">목공예 기초과정 7월 (토) 주말반(스툴 만들기)</h1>
                                    <div class="address"><span class="icon-pointer"></span>서울 용산구 후암동 서울특별시 용산구 후암로 38, 지하 1층</div>
                                    <ul class="users">
                                    	<li><span class="icon-users"></span> 총 30 명</li>
                                    	<li> / 10명 신청가능</li>
                                   	</ul>
                                    <div class="favLink"><a href="#"><span class="icon-star"></span></a>54</div>
                                    <ul class="stats">
                                        <li><span class="icon-eye"></span> 200</li>
                                        <li><span class="icon-bubble"></span> 13</li>
                                    </ul>
                                    <div class="clearfix"></div>
                                   <ul class="tags">
                                        <li><span style="cursor: pointer;">#목공교육</span></li>
                                        <li><span style="cursor: pointer;">#가구제작</span> </li>
                                        <li><span class="tag" style="cursor: pointer;">#가구디자인</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#가구공방</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#목공배우기</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#욜루와랏</span></li>
                                    </ul>
									<div class="clearfix"></div>
                                    <ul class="features">
                                        <li><span class="fa fa-calendar-o"> 신청기간</span><div>6월 19일 (월) ~ 6월 30일 (금)</div></li>
                                        <li><span class="fa fa-clock-o"> 활동주기</span><div>정기적</div></li>
                                        <li><span class="fa fa-calendar"> 모임기간</span><div>7월 8일 (토) ~ 7월 29일 (토)</div></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="agentAvatar summaryItem">
                                     <div class="clearfix"></div>
                                    <img class="avatar agentAvatarImg" src="/Yolo/images/avatar-2.png" alt="avatar">
                                    <div class="agentName">Jane Smith</div>
                                </div>
                                <div class="mainFunction summaryItem">
                                     <div class="clearfix"></div>
                                    <a data-toggle="modal" href="#contactAgent" class="btn btn-lg btn-round btn-green contactBtn">문의하기</a>
                                    <a href="#confirmSigning" class="btn btn-lg btn-round btn-green applyBtn">신청하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="description">
                    <h3>상세설명</h3>
                    <p>이 강좌는 해쉬에서 디자인된 원목 스툴만들기 목공예 기초과정입니다. 원목의 특징, 수종, 구조의 체계적인 이론을 배우며 원목가공에 필요한 기계 및 장비사용법과 안전사항을 숙지합니다. 가구제작에 필수적인 재단방법, 결합방법, 마감등 체계적으로 배울 수 있는 정규교육과정입니다.</p>
                </div>
<!--                 <div class="share"> -->
<!--                     <h3>Share on Social Networks</h3> -->
<!--                     <div class="row"> -->
<!--                         <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem"> -->
<!--                             <a href="#" class="btn btn-sm btn-round btn-o btn-facebook"><span class="fa fa-facebook"></span> Facebook</a> -->
<!--                         </div> -->
<!--                         <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem"> -->
<!--                             <a href="#" class="btn btn-sm btn-round btn-o btn-twitter"><span class="fa fa-twitter"></span> Twitter</a> -->
<!--                         </div> -->
<!--                         <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem"> -->
<!--                             <a href="#" class="btn btn-sm btn-round btn-o btn-google"><span class="fa fa-google-plus"></span> Google+</a> -->
<!--                         </div> -->
<!--                         <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 shareItem"> -->
<!--                             <a href="#" class="btn btn-sm btn-round btn-o btn-pinterest"><span class="fa fa-pinterest"></span> Pinterest</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
                <div class="comments">
                    <h3><span>4</span> Comments</h3>
                    <div class="comment">
                        <div class="commentAvatar">
                            <img class="avatar" src="/Yolo/images/avatar-3.png" alt="avatar">
                            <div class="commentArrow"><span class="fa fa-caret-left"></span></div>
                        </div>
                        <div class="commentContent">
                            <div class="commentName">Rust Cohle</div>
                            <div class="commentBody">
                                It is a long established fact that a reader will be distracted by the readable content
                            </div>
                            <div class="commentActions">
                                <div class="commentTime"><span class="icon-clock"></span> 1 day ago</div>
                                <ul>
                                    <li><a href="#"><span class="icon-action-undo"></span></a></li>
                                    <li><a href="#"><span class="icon-like"></span> 13</a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="comment reply">
                        <div class="commentAvatar">
                            <img class="avatar" src="/Yolo/images/avatar-1.png" alt="avatar">
                            <div class="commentArrow"><span class="fa fa-caret-left"></span></div>
                        </div>
                        <div class="commentContent">
                            <div class="commentName">John Smith</div>
                            <div class="commentBody">
                                Comment posted by me. I have the power to remove it.
                            </div>
                            <div class="commentActions">
                                <div class="commentTime"><span class="icon-clock"></span> 2 hours ago</div>
                                <ul>
                                    <li><a href="#"><span class="fa fa-trash-o"></span></a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="comment">
                        <div class="commentAvatar">
                            <img class="avatar" src="/Yolo/images/avatar-5.png" alt="avatar">
                            <div class="commentArrow"><span class="fa fa-caret-left"></span></div>
                        </div>
                        <div class="commentContent">
                            <div class="commentName">Alex Rogers</div>
                            <div class="commentBody">
                                Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit
                            </div>
                            <div class="commentActions">
                                <div class="commentTime"><span class="icon-clock"></span> 20 minutes ago</div>
                                <ul>
                                    <li><a href="#"><span class="icon-action-undo"></span></a></li>
                                    <li><a href="#"><span class="icon-like"></span> 13</a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="comment">
                        <div class="commentAvatar">
                            <img class="avatar" src="/Yolo/images/avatar-2.png" alt="avatar">
                            <div class="commentArrow"><span class="fa fa-caret-left"></span></div>
                        </div>
                        <div class="commentContent">
                            <div class="commentName">Jane Smith</div>
                            <div class="commentBody">
                                Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet
                            </div>
                            <div class="commentActions">
                                <div class="commentTime"><span class="icon-clock"></span> 5 minutes ago</div>
                                <ul>
                                    <li><a href="#"><span class="icon-action-undo"></span></a></li>
                                    <li><a href="#"><span class="icon-like"></span> 13</a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="commentsFormWrapper">
                <div class="cfAvatar">
                    <img class="avatar" src="/Yolo/images/avatar-1.png" alt="avatar">
                </div>
                <form class="commentsForm">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Write a comment...">
                        <span class="input-group-btn"><a class="btn btn-green">Post</a></span>
                    </div>
                </form>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="modal fade" id="contactAgent" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="contactLabel">Contact Agent</h4>
                    </div>
                    <div class="modal-body">
                        <form class="contactForm">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 cfItem">
                                    <input type="text" placeholder="Name" class="form-control">
                                 </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 cfItem">
                                    <input type="text" placeholder="Email" class="form-control">
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 cfItem">
                                    <input type="text" placeholder="Subject" class="form-control">
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 cfItem">
                                    <textarea placeholder="Message" rows="3" class="form-control"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-round btn-o btn-gray">Close</a>
                        <a href="#" class="btn btn-round btn-green">Send message</a>
                    </div>
                </div>
            </div>
        </div>

 		<script src="/Yolo/js/jquery-2.1.1.min.js"></script>
        <script src="/Yolo/js/jquery-ui.min.js"></script>
        <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
        <script src="/Yolo/js/jquery.placeholder.js"></script>
        <script src="/Yolo/js/bootstrap.js"></script>
        <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
        <script src="/Yolo/js/jquery.slimscroll.min.js"></script>
        <script src="/Yolo/js/jquery.visible.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBh5iJnCJrUZugfpicBfCPv3pCLOTat6gM&sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/app.js" type="text/javascript"></script>
    </body>
</html>