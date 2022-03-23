<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Header -->
<div id="header">
	<div class="logo">
		<a href="/Yolo/index.jsp"> <span class="fa fa-home marker"></span> <span
			class="logoText">&nbsp;Yolo</span>
		</a>
	</div>
	<a href="#" class="navHandler"><span class="fa fa-bars"></span></a>
	<div class="search">
		<span class="searchIcon icon-magnifier"></span> <input type="text"
			placeholder="Search for houses, apartments...">
	</div>
	<!-- 상단 메뉴 유저부분 -->
	<div class="headerUserWraper">
		<a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span
			class="icon-user"></span><span class="counter">5</span></a> <a href="#"
			class="headerUser dropdown-toggle" data-toggle="dropdown"> 
			<img class="avatar headerAvatar pull-left" src="/Yolo/images/avatar-1.png" alt="John Smith">
			<div class="userTop pull-left">
				<span class="headerUserName">John Smith</span> <span
					class="fa fa-angle-down"></span>
			</div>
			<div class="clearfix"></div>
		</a>
		<div class="dropdown-menu pull-right userMenu" role="menu">
			<div class="mobAvatar">
				<img class="avatar mobAvatarImg" src="/Yolo/images/avatar-1.png"
					alt="John Smith">
				<div class="mobAvatarName">John Smith</div>
			</div>
			<ul>
				<li><a href="#"><span class="icon-user"></span>마이페이지</a></li>
				<li><a href="#"><span class="icon-envelope"></span>메세지
						<span class="badge pull-right bg-red">5</span></a></li>
				<li class="divider"></li>
				<li><a href="#"><span class="icon-power"></span>Logout</a></li>
			</ul>
		</div>
	</div><!-- 상단 메뉴 유저부분 끝 -->
	<!-- 상단 메뉴 알림부분 -->
	<div class="headerNotifyWraper">
		<a href="#" class="headerNotify dropdown-toggle"
			data-toggle="dropdown"> <span class="notifyIcon icon-envelope"></span>
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
						src="/Yolo/images/avatar-1.png" alt="John Smith">
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
	</div><!-- 상단 메뉴 알림부분 끝 -->
	<!-- 맵 아이콘 -->
<!-- 	<a href="#" class="mapHandler"><span class="icon-map"></span></a> -->
	<div class="clearfix"></div>
</div>

<!-- 좌측 네비게이션 메뉴 -->
<div id="leftSide">
	<nav class="leftNav scrollable">
		<div class="search">
			<span class="searchIcon icon-magnifier"></span> <input type="text"
				placeholder="Search for houses, apartments...">
			<div class="clearfix"></div>
		</div>
		<!-- 네비게이션 메뉴 -->
		<ul>
			<li>
				<a href="#"><span class="navIcon icon-compass"></span>
				<span class="navLabel">공간찾기</span></a>
			</li>
			<li>
				<a href="#"><span class="navIcon fa fa-group"></span>
				<span class="navLabel">모임찾기</span></a>
			</li>
			<li class="hasSub"><a href="#"><span
					class="navIcon fa fa-globe"></span><span class="navLabel">커뮤니티</span><span
					class="fa fa-angle-left arrowRight"></span></a>
				<ul>
					<li><a href="/Yolo/view/comLecture/LectureList.jsp">세미나/강연</a></li>
					<li><a href="#">플리마켓</a></li>
					<li><a href="#">공간 쉐어링</a></li>
				</ul>
			</li>
			<li class="hasSub"><a href="#">
				<span class="navIcon fa fa-cog"></span>
				<span class="navLabel">마이페이지</span>
				<span class="fa fa-angle-left arrowRight"></span></a>
				<ul>
					<li class="align-center"><h5 style="color:#fff;">신청현황</h5></li>
					<li><a href="#">예약공간보기</a></li>
					<li><a href="#">참여모임보기</a></li>
					<li><a href="#">관심리스트</a></li>
					<li class="align-center"><h5 style="color:#fff;">플리마켓</h5></li>
					<li><a href="#">찜목록</a></li>
					<li><a href="#">주문현황</a></li>				
					<li class="align-center"><h5 style="color:#fff;">나의 등록글</h5></li>
					<li><a href="#">나의 모임</a></li>
					<li><a href="#">나의 플리마켓</a></li>
					<li><a href="#">나의 세미나/강연</a></li>
					<li><a href="#">나의 쉐어링</a></li>				
					<li class="align-center"><h5 style="color:#fff;">정보수정</h5></li>
					<li><a href="#">개인정보수정</a></li>
					<li><a href="#">비밀번호변경</a></li>				
				</ul>
			</li>			

		</ul><!-- 네비게이션 메뉴 끝 -->
	</nav>
	<!-- 좌측 네비게이션 유저부분 -->
	<div class="leftUserWraper dropup">
		<a href="#" class="avatarAction dropdown-toggle"
			data-toggle="dropdown"> 
			<img class="avatar" src="/Yolo/images/avatar-1.png" alt="John Smith">
			<span class="counter">5</span>
			<div class="userBottom pull-left">
				<span class="bottomUserName">John Smith</span> <span
					class="fa fa-angle-up pull-right arrowUp"></span>
			</div>
			<div class="clearfix"></div>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#"><span class="icon-user"></span>마이페이지</a></li>
			<li><a href="#"><span class="icon-bell"></span>메세지
					<span class="badge pull-right bg-red">5</span></a></li>
			<li class="divider"></li>
			<li><a href="#"><span class="icon-power"></span>Logout</a></li>
		</ul>
	</div><!-- 좌측 네비게이션 유저부분 끝 -->
</div><!-- 좌측 네비게이션 메뉴 끝 -->
<div class="closeLeftSide"></div>
