<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<title>LotView.jsp</title>
		
		<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
		<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
		<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
		<link href="/Yolo/css/datepicker.css" rel="stylesheet">
		<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
		<link href="/Yolo/css/app.css" rel="stylesheet">
		
		<!-- 추가css -->
		<link rel="stylesheet" type="text/css"
			href="/Yolo/css_yolo/cssPlugin/bootstrap-datetimepicker.css" />
		<link rel="stylesheet" type="text/css"
			href="/Yolo/css_yolo/cssView/Club/tagPlus.css" />
		<link rel="stylesheet" type="text/css"
			href="/Yolo/css_yolo/cssView/lot/lotDetail.css" />
			
		<style type="text/css">
		.commentsFormWrapper.active {
    width: 100%;
}
		
		</style>	
	</head>

<body class="notransition">

	<!-- Header -->

	<div id="header">
		<div class="logo">
			<a href="index.html"> <span class="fa fa-home marker"></span> <span
				class="logoText">reales</span>
			</a>
		</div>
		<a href="#" class="navHandler"><span class="fa fa-bars"></span></a>
		<div class="search">
			<span class="searchIcon icon-magnifier"></span> <input type="text"
				placeholder="Search for houses, apartments...">
		</div>
		<div class="headerUserWraper">
			<a href="#" class="userHandler dropdown-toggle"
				data-toggle="dropdown"><span class="icon-user"></span><span
				class="counter">5</span></a> <a href="#"
				class="headerUser dropdown-toggle" data-toggle="dropdown"> <img
				class="avatar headerAvatar pull-left"
				src="/Yolo/images/avatar-1.png" alt="avatar">
				<div class="userTop pull-left">
					<span class="headerUserName">John Smith</span> <span
						class="fa fa-angle-down"></span>
				</div>
				<div class="clearfix"></div>
			</a>
			<div class="dropdown-menu pull-right userMenu" role="menu">
				<div class="mobAvatar">
					<img class="avatar mobAvatarImg" src="/Yolo/images/avatar-1.png"
						alt="avatar">
					<div class="mobAvatarName">John Smith</div>
				</div>
				<ul>
					<li><a href="#"><span class="icon-settings"></span>Settings</a></li>
					<li><a href="profile.html"><span class="icon-user"></span>Profile</a></li>
					<li><a href="#"><span class="icon-bell"></span>Notifications
							<span class="badge pull-right bg-red">5</span></a></li>
					<li class="divider"></li>
					<li><a href="#"><span class="icon-power"></span>Logout</a></li>
				</ul>
			</div>
		</div>
		<div class="headerNotifyWraper">
			<a href="#" class="headerNotify dropdown-toggle"
				data-toggle="dropdown"> <span class="notifyIcon icon-bell"></span>
				<span class="counter">5</span>
			</a>
			<div class="dropdown-menu pull-right notifyMenu" role="menu">
				<div class="notifyHeader">
					<span>Notifications</span> <a href="#"
						class="notifySettings icon-settings"></a>
					<div class="clearfix"></div>
				</div>
				<ul class="notifyList">
					<li><a href="#"> <img class="avatar pull-left"
							src="/Yolo/images/avatar-1.png" alt="avatar">
							<div class="pulse border-grey"></div>
							<div class="notify pull-left">
								<div class="notifyName">Sed ut perspiciatis unde</div>
								<div class="notifyTime">5 minutes ago</div>
							</div>
							<div class="clearfix"></div>
					</a></li>
					<li><a href="#">
							<div class="notifyRound notifyRound-red fa fa-envelope-o"></div>
							<div class="pulse border-red"></div>
							<div class="notify pull-left">
								<div class="notifyName">Lorem Ipsum is simply dummy text</div>
								<div class="notifyTime">20 minutes ago</div>
							</div>
							<div class="clearfix"></div>
					</a></li>
					<li><a href="#">
							<div class="notifyRound notifyRound-yellow fa fa-heart-o"></div>
							<div class="pulse border-yellow"></div>
							<div class="notify pull-left">
								<div class="notifyName">It is a long established fact</div>
								<div class="notifyTime">2 hours ago</div>
							</div>
							<div class="clearfix"></div>
					</a></li>
					<li><a href="#">
							<div class="notifyRound notifyRound-magenta fa fa-paper-plane-o"></div>
							<div class="pulse border-magenta"></div>
							<div class="notify pull-left">
								<div class="notifyName">There are many variations</div>
								<div class="notifyTime">1 day ago</div>
							</div>
							<div class="clearfix"></div>
					</a></li>
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
				<span class="searchIcon icon-magnifier"></span> <input type="text"
					placeholder="Search for houses, apartments...">
				<div class="clearfix"></div>
			</div>
			<ul>
				<li><a href="explore.html"><span
						class="navIcon icon-compass"></span><span class="navLabel">Explore</span></a></li>
				<li><a href="single.html"><span class="navIcon icon-home"></span><span
						class="navLabel">Single</span></a></li>
				<li><a href="add.html"><span class="navIcon icon-plus"></span><span
						class="navLabel">New</span></a></li>
				<li class="hasSub"><a href="#"><span
						class="navIcon icon-drop"></span><span class="navLabel">Colors</span><span
						class="fa fa-angle-left arrowRight"></span><span
						class="badge bg-yellow">5</span></a>
					<ul class="colors">
						<li><a href="#">Red <span
								class="fa fa-circle-o c-red icon-right"></span></a></li>
						<li><a href="#">Green <span
								class="fa fa-circle-o c-green icon-right"></span></a></li>
						<li><a href="#">Blue <span
								class="fa fa-circle-o c-blue icon-right"></span></a></li>
						<li><a href="#">Yellow <span
								class="fa fa-circle-o c-yellow icon-right"></span></a></li>
						<li><a href="#">Magenta <span
								class="fa fa-circle-o c-magenta icon-right"></span></a></li>
					</ul></li>
				<li class="hasSub"><a href="#"><span
						class="navIcon icon-layers"></span><span class="navLabel">Elements</span><span
						class="fa fa-angle-left arrowRight"></span></a>
					<ul>
						<li><a href="buttons.html">Buttons</a></li>
						<li><a href="icons.html">Icons <span
								class="badge pull-right bg-yellow">841</span></a></li>
						<li><a href="grid.html">Grid</a></li>
						<li><a href="widgets.html">Widgets</a></li>
						<li><a href="components.html">Components</a></li>
						<li><a href="lists.html">Lists</a></li>
						<li><a href="tables.html">Tables</a></li>
						<li><a href="form.html">Form</a></li>
					</ul></li>
				<li class="hasSub"><a href="#"><span
						class="navIcon icon-link"></span><span class="navLabel">Pages</span><span
						class="fa fa-angle-left arrowRight"></span></a>
					<ul>
						<li><a href="signin.html">Sign In</a></li>
						<li><a href="signup.html">Sign Up</a></li>
						<li><a href="profile.html">Profile</a></li>
						<li><a href="index.html">Homepage Slideshow</a></li>
						<li><a href="index-map.html">Homepage Map</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="blog-post.html">Blog Post</a></li>
					</ul></li>
			</ul>
		</nav>
		<div class="leftUserWraper dropup">
			<a href="#" class="avatarAction dropdown-toggle"
				data-toggle="dropdown"> <img class="avatar"
				src="images/avatar-1.png" alt="avatar"><span class="counter">5</span>
				<div class="userBottom pull-left">
					<span class="bottomUserName">John Smith</span> <span
						class="fa fa-angle-up pull-right arrowUp"></span>
				</div>
				<div class="clearfix"></div>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#"><span class="icon-settings"></span>Settings</a></li>
				<li><a href="profile.html"><span class="icon-user"></span>Profile</a></li>
				<li><a href="#"><span class="icon-bell"></span>Notifications
						<span class="badge pull-right bg-red">5</span></a></li>
				<li class="divider"></li>
				<li><a href="#"><span class="icon-power"></span>Logout</a></li>
			</ul>
		</div>
	</div>
	<div class="closeLeftSide"></div>

	<!-- Content -->
	<div id="mapView" class="mob-min">
		<div class="mapPlaceholder">
			<span class="fa fa-spin fa-spinner"></span> Loading map...
		</div>
	</div>
	<div id="wrapper">
		<div id="cont	ent" class="mob-max">
			<div class="singleTop">
				<div id="carouselFull" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselFull" data-slide-to="0" class="active"></li>
						<li data-target="#carouselFull" data-slide-to="1"></li>
						<li data-target="#carouselFull" data-slide-to="2"></li>
						<li data-target="#carouselFull" data-slide-to="3"></li>
					</ol>

					  <!------------- 슬라이더로 사진, 상세사진 보여주기 --------------------->
					<div class="carousel-inner">
						<div class="item active">
							<img src="/Yolo/images_yolo/lot/2.PNG" alt="First slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-1.PNG" alt="Second slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-2.PNG" alt="Third slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
						<div class="item">
							<img src="/Yolo/images_yolo/lot/2-3.PNG" alt="Fourth slide">
							<div class="container">
								<div class="carousel-caption"></div>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carouselFull" role="button"
						data-slide="prev"><span class="fa fa-chevron-left"></span></a> <a
						class="right carousel-control" href="#carouselFull" role="button"
						data-slide="next"><span class="fa fa-chevron-right"></span></a>
				</div>

            <!------------- 상세정보, 해시태그 --------------------->
				<div class="summary">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-8">
							<div class="summaryItem">
								<h1 class="pageTitle">왕십리 아지트스튜디오</h1>
								<strong style="margin-top: 0px; font-size: 25px;">20,000원/시간</strong>
								<div class="address">
									<span class="icon-pointer"></span>왕십리
								</div>
								<ul class="tags">
                                        <li><span style="cursor: pointer;">#왕십리</span></li>
                                        <li><span style="cursor: pointer;">#파티</span> </li>
                                        <li><span class="tag" style="cursor: pointer;">#아지트스튜디오</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#왕십리스튜디오</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#아지트스튜디오</span></li>
                                        <li><span class="tag" style="cursor: pointer;">#아지트스튜디오</span></li>
                                </ul>
							</div>
						</div>

						<div id="reservation">
						
							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					
								<div id="reservation">
									<label>예약날짜</label>
								<div class="input-append date form_datetime">
									<input class="form-control" type="text" value="" readonly> <span
										class="add-on"><i class="icon-th"></i></span>
								</div>
								</div>
								
								<div class="mainFunction summaryItem">
                                     <div class="clearfix"></div>
                                    <a data-toggle="modal" href="#contactAgent" class="btn btn-lg btn-round btn-green contactBtn">문의하기</a>
                                    <a href="#confirmSigning" class="btn btn-lg btn-round btn-green applyBtn">예약하기</a>
                                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="description">
				<h3>상세정보</h3>
				<p>
					너와 나 사이 마음을 잇는 공간<br /> 어느사이 우리가 만날 시간이 되었군요 :)<br /> 인생샷을 위한 조명이
					비치되어 있습니다. HVR-600S / 60w 신촌에 위치한 어느사이는 여러분의 파티/모임과 함께 합니다.<br />
					3M의 키친과 BAR, 16명까지 수용가능한 넓은 공간까지~!
				</p>
			</div>

        <!------------- 편의시설 항목들 --------------------->
			<div class="amenities">
				<h3>편의시설</h3>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-car"></span> Garage
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-tint"></span> Outdoor Pool
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-leaf"></span> Garden
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-shield"></span> Security System
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-wifi"></span> Internet
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-phone"></span> Telephone
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-asterisk"></span> Air Conditioning
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
						<span class="fa fa-sun-o"></span> Heating
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-fire"></span> Fireplace
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-arrows-v"></span> Balcony
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
						<span class="fa fa-desktop"></span> TV Cable
					</div>
				</div>
			</div>

			  <!------------- 후기 작성하기 --------------------->
			<div class="comments">
				<h3>후기작성</h3>

				<div class="comment">
					<div class="commentAvatar">

						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>
					<div class="commentContent">
						<div class="cardRating">
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>
						<div class="commentName">ilju123456</div>
						<div class="commentBody">하루종일 빌려서 친구들과 신나게 놀았습니다! 다음에 또
							이용할껍니다</div>
					</div>
				</div>

				<div class="comment">
					<div class="commentAvatar">

						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>

					<div class="commentContent">
						<div class="cardRating">
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>
						<div class="commentName">happycs</div>
						<div class="commentBody">이게 아지트? 다신 안빌려ㅗ</div>
					</div>
				</div>


				<div class="comment">
					<div class="commentAvatar">
						<div class="commentArrow">
							<span class="fa fa-caret-left"></span>
						</div>
					</div>
					<div class="commentContent">
						<div class="cardRating">
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>
						<div class="commentName">chacha</div>
						<div class="commentBody">넓고 좋더라고요~! 잠자기 딱좋음</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div id="commentsFormWrapper" class="commentsFormWrapper" style='width:400px;'>
			<form id="commentsForm" class="commentsForm">
				<div id="input-group" class="input-group">
					<div class="cardRating">
						<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
						<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
						<span class="fa fa-star-o"></span>
					</div>
					<input type="text" class="form-control"
						placeholder="Write a comment..."> 
						<span id="post" class="input-group-btn"><a class="btn btn-green">Post</a></span>
				</div>
			</form>
		</div>
		</div>

	</div>

	<div class="modal fade" id="contactAgent" role="dialog"
		aria-labelledby="contactLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
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
					<a href="#" data-dismiss="modal"
						class="btn btn-round btn-o btn-gray">Close</a> <a href="#"
						class="btn btn-round btn-green">Send message</a>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdr4Ul6T6VHRn7H9wlqH63xNmKWuUbMy4&callback=initMap"
		type="text/javascript"></script>
	<script src="/Yolo/js/infobox.js"></script>
	<script src="/Yolo/js/jquery.tagsinput.min.js"></script>
	<script src="/Yolo/js/bootstrap-datepicker.js"></script>
	<script src="/Yolo/js_yolo/app.js" type="text/javascript"></script>
	<!-- 추가 js -->
	<script src="/Yolo/css_yolo/cssPlugin/bootstrap-datetimepicker.js"></script>
	<script src="/Yolo/css_yolo/cssPlugin/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript">
$(function(){
	$(".form_datetime").datetimepicker({
		format : "dd MM yyyy hh:ii"
	});
	
});
</script>

</body>
</html>