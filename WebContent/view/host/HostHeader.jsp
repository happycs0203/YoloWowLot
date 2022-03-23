<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Header -->
<div id="header">
	<div class="logo">
		<a href="/Yolo/view/common/main.jsp"> <span
			class="fa fa-home marker"></span> <span class="logoText">Host
				Center</span>
		</a>
	</div>
	<a href="#" class="navHandler"><span class="fa fa-bars"></span></a>

    <!-- HostHeader -->
    <!----------- 호스트 정보 드롭다운 ------------------->
	<div class="headerUserWraper">
		<a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span
			class="icon-user"></span></a> 
			<a href="#" class="headerUser dropdown-toggle" data-toggle="dropdown"> 
			<img class="avatar headerAvatar pull-left" src="/Yolo/images_yolo/host/profile.PNG"
			alt="avatar">
			<div class="userTop pull-left">
				<span class="headerUserName">ilju123456</span> <span
					class="fa fa-angle-down"></span>
			</div>
			<div class="clearfix"></div>
		</a>
		<!-------------- 반응형 드롭 ---------------->
		<div class="dropdown-menu pull-right userMenu" role="menu">
			<div class="mobAvatar">
				<img class="avatar mobAvatarImg" src="/Yolo/images_yolo/host/profile.PNG"
					alt="avatar">
				<div class="mobAvatarName">ilju123456</div>
			</div>
			<ul>
			    
				<li><a href="profile.html"><span class="icon-user"></span>My
						Profile</a></li>
<!-- 				<li><a href="#"><span class="icon-login"></span>Login</a></li> -->
				<li><a href="#"><span class="icon-logout"></span>Logout</a></li>
			</ul>
		</div>
	</div>

	<!-------------- 호스트 등록하기 ---------->
	<div class="headerUserWraper">
	<a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span
			class="icon-user-follow"></span></a> 
			<a href="#" class="headerUser dropdown-toggle" data-toggle="dropdown"> 
			<button id="hostregister" class="btn btn-o btn-gray">호스트 등록하기</button>
		</a>
	
	</div>
		
	
 
 

	

</div>

<!-- Left Side Navigation -->

<div id="leftSide">

	<nav class="leftNav scrollable">

		<ul>
			<li><a href="/Yolo/view/host/HostMyLot.jsp"><span
					class="navIcon glyphicon glyphicon-th-large"></span><span
					class="navLabel">내 공간보기</span></a></li>
			<li><a href="single.html"><span
					class="navIcon glyphicon glyphicon-plus"></span><span
					class="navLabel">공간 등록</span></a></li>
			<li><a href="single.html"><span
					class="navIcon glyphicon glyphicon-user"></span><span
					class="navLabel">예약 관리</span></a></li>
			<li><a href="single.html"><span
					class="navIcon glyphicon glyphicon-comment"></span><span
					class="navLabel">문의 확인</span></a></li>

		</ul>
	</nav>


</div>
<div class="closeLeftSide"></div>
