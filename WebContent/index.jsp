<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>YOLO</title>

<!-- 기본 CSS -->
<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/fullscreen-slider.css" rel="stylesheet">

<!-- app.css 색상 / 왼쪽네비 수정 CSS : 메인용 -->
<link href="/Yolo/css_yolo/cssView/common/app_main.css" rel="stylesheet">
<!-- 추가 CSS -->
<link href="/Yolo/css_yolo/cssView/common/main_style.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssPlugin/icongrid/component.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssPlugin/icongrid/default.css" rel="stylesheet">

<!-- 채팅CSS -->
<link href="/Yolo/css_yolo/cssView/common/chat_style.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/Chat/bootchat.css" rel="stylesheet">
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

      
</head>
<body class="notransition" id="mainbody">

	<!-- Header -->
	<div id="header">
		<!-- 홈버튼 부븐 -->
		<div class="logo">
			<a href="/Yolo/index.jsp"> <span class="fa fa-home marker"></span>
				<span class="logoText">&nbsp;Yolo</span>
			</a>
		</div>
		<a href="#" class="navHandler"><span class="fa fa-bars"></span></a>

		<div class="search">
			<h4 id="header_title">YOLO WOW LOT</h4>
			<p id="header_subtitle">즐길 줄 아는 사람들을 위한 공간 서비스</p>
		</div>		
		<!-- -----------로그인 처리-------- -->
		<% 
		String u_id = "";
		
		//세션에 있는 id값 가져오기
		u_id = (String)session.getAttribute("u_id");
		
		//로그인해야하는 경우
		if( u_id==null || u_id=="" ){%>		
		<!-- 로그인 회원가입 -->
		<div class="headerUserWraper" id="signdiv">
			<a href="#signin" class="userHandler modal-toggle" data-toggle="modal"><span class="icon-login"></span>
			<a href="#signup" class="userHandler modal-toggle" data-toggle="modal"><span class="icon-note"></span>
			<a href="#signin" class="userHandler" data-toggle="modal"><span class="icon-user-follow"></span></a> 
			<a href="#signin" id="web_login_btn" data-toggle="modal" class="btn btn-round btn-o btn-green">로그인</a> 
			<a href="#signup" id="web_join_btn" data-toggle="modal" class="btn btn-round btn-o btn-green">회원가입</a>
		</div>	
		<div class="headerUserWraper">
			<a id="hostbtn" href="#signin" data-toggle="modal" class="headerUser btn btn-o btn-gray">호스트 센터</a>
		</div>	
		<!-- 로그인 회원가입 끝 -->				
		<% }else{
		//로그인된 경우
		%>
		<!-- 상단 메뉴 유저부분 -->
		<div class="headerUserWraper">	
			<!-- 메세지 알림 아이콘 -->
			<a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span class="icon-user"></span>
			<span class="counter">1</span></a> 
			<!-- 유저 프로필 아이콘 -->
			<a href="#" class="headerUser dropdown-toggle" data-toggle="dropdown"> 
				<img class="avatar headerAvatar pull-left" src="/Yolo/images/avatar-1.png" alt="John Smith">
				<div class="userTop pull-left">
					<span class="headerUserName"><%=u_id%>님</span> <span
						class="fa fa-angle-down"></span>
				</div>
				<div class="clearfix"></div>
			</a>
			<div class="dropdown-menu pull-right userMenu" role="menu">
				<div class="mobAvatar">
					<img class="avatar mobAvatarImg" src="/Yolo/images/avatar-1.png"
						alt="John Smith">
					<div class="mobAvatarName"><%=u_id%></div>
				</div>
				<ul>
					<li><a href="/Yolo/mypage/info/MyPageView.myinfo"><span class="icon-user"></span>프로필</a></li>
					<li><a href="#" class="msg_btn"><span class="icon-envelope"></span>메세지 
					<span class="badge pull-right bg-red">1</span></a></li>
					<li class="divider"></li>
					<li><a href="/Yolo/logout/logout.main"><span class="icon-power"></span>Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- 상단 메뉴 유저부분 끝 -->	
		<!-- 상단 메뉴 알림부분 -->
		<div class="headerUserWraper">		
			<!-- 상단 메뉴 알림부분 -->
			<div class="headerNotifyWraper">
                <a href="#" id="menu_msg_btn" class="headerNotify msg_btn">
                    <span class="notifyIcon icon-envelope"></span>
                    <span class="counter">1</span>
                </a>
                
                <!-- 메세지 창 -->
                <div id="chat_div" class="pull-right" style="z-index:900; background:#fff; position:absolute; top:-1000px;">
                    <div class="notifyHeader">
                        <span>메세지함</span>
                        <a href="#" class="notifySettings icon-close msg_btn chat_out"></a>
                        <div class="clearfix"></div>
                    </div>
                    <ul id="chat_list" class="notifyList">
                        <li>
                            <a href="#" class="chat_in">
                                <img class="avatar pull-left" src="/Yolo/images/avatar-1.png" alt="John Smith">
                                <div class="pulse border-grey"></div>
                                <div class="notify pull-left">
                                    <div class="notifyName">새로운 메세지가 있습니다</div>
                                    <div class="notifyTime">5 minutes ago</div>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </li>              
                    </ul>
                    
                    <!--  -----------채팅 페이지 첨부--------- -->
                    <div id="chat_view" class="notifyList">
					  	<p><span id="clientID"><%=u_id %></span>의 대화창</p>					
							<div class="frame">
								<ul class="chat_ul" id="message"></ul>
								<div id="chat_input">
									<div class="msj-rta macro" style="margin: auto">
										<div id="chatInput" class="text text-r">
											<input class="mytext" id="txtChat" name="txtChat"
												placeholder="Type a message" />
										</div>
									</div>
								</div>
							</div>
					</div>                     
                    <!--  --------------------------------- --> 
                </div>						
			</div>
			</div>		

		<!-- 상단 메뉴 알림부분 끝 -->
		<!-- 호스트 페이지 버튼 -->
		<div class="headerUserWraper">
			<a href="/Yolo/host/HostMain.host" class="userHandler"><span class="icon-user-follow"></span></a> 
			<a id="hostbtn" href="/Yolo/host/HostMain.host" class="headerUser btn btn-o btn-gray">호스트 센터</a>
		</div>
		<!-- 호스트 페이지 버튼 끝 -->				
		<% } %>	
		<!-- -----------로그인 처리 끝 -------- -->
		<div class="clearfix"></div>
	</div><!-- Header END -->
		<!-- 좌측 네비게이션 메뉴 -->
		<div id="leftSide">
			<nav class="leftNav scrollable">
				<!-- 네비게이션 메뉴 -->
				<ul id="lefynav_menu_ul">
					<li>
						<a href="/Yolo/lot/LotList.lot"><span class="navIcon icon-compass"></span>
						<span class="navLabel">공간찾기</span></a>
					</li>
					<li>
						<a href="/Yolo/club/ClubList.club"><span class="navIcon fa fa-group"></span>
						<span class="navLabel">모임찾기</span></a>
					</li>
					<li class="hasSub">
						<a href="/Yolo/comShare/ShareList.share"><span class="navIcon fa fa-globe"></span>
						<span class="navLabel">공간쉐어링</span></a>
					</li>			
		<% 		
		if( u_id==null || u_id=="" ){%>	
		<%}else{%>
					<li class="hasSub"><a href="#">
						<span class="navIcon fa fa-cog"></span>
						<span class="navLabel">마이페이지</span>
						<span class="fa fa-angle-left arrowRight"></span></a>
						<ul>
							<li class="align-center"><h5 style="color:#fff;">신청현황</h5></li>
							<li><a href="/Yolo/mypage/appStatus/appliedLot.myinfo">예약공간보기</a></li>
							<li><a href="/Yolo/mypage/appStatus/appliedClub.myinfo">참여모임보기</a></li>
							<li><a href="/Yolo/mypage/appStatus/InterestList.myinfo">관심리스트</a></li>			
							<li class="align-center"><h5 style="color:#fff;">나의 등록글</h5></li>
							<li><a href="/Yolo/mypage/myReg/ClubMyList.myreg">나의 모임</a></li>
							<li><a href="/Yolo/mypage/myReg/ShareMyList.myreg">나의 쉐어링</a></li>				
							<li class="align-center"><h5 style="color:#fff;">내정보 수정</h5></li>
							<li><a href="/Yolo/mypage/info/MyInfoModify.myinfo?u_id=<%=u_id%>">개인정보수정</a></li>
											
						</ul>
					</li>				
		<%}%>
				</ul><!-- 네비게이션 메뉴 끝 -->
			</nav>

		</div><!-- 좌측 네비게이션 메뉴 끝 -->
	<div class="closeLeftSide"></div>
	<!-- Header End-->

	<!-- Content -->
	<div id="wrapper" class="full mainpage_wrapper" >
		<div id="content" class="max full">
			<div class="main" style="height:100%;">
				<ul class="cbp-ig-grid" style="height:100%;">
					<li class="gridmenu_li" id="menu1">
						<a href="/Yolo/lot/LotList.lot">
							<h3 class="cbp-ig-title">공간찾기</h3> 
							<span class="cbp-ig-category">LOT</span>
							<hr/>
							<p>나에게 꼭 맞는 공간을 찾아보세요!</p>
						</a>
					</li>
					<li class="gridmenu_li" id="menu2">
						<a href="/Yolo/club/ClubList.club">
							<h3 class="cbp-ig-title">모임찾기</h3> 
							<span class="cbp-ig-category">CLUB</span>
							<hr/>
							<p>YOLO라이프를 위한 다양한 모임이 기다리고있습니다</p>							
						</a>
					</li>
					<li class="gridmenu_li" id="menu3">
						<a href="/Yolo/comShare/ShareList.share">
							<h3 class="cbp-ig-title">공간쉐어링</h3> 
							<span class="cbp-ig-category">SHARE</span>
							<hr/>
							<p>공간을 나누면 두배의 행복이!<br></p>							
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	
	<!-- 로그인 Modal -->
	<div class="modal fade" id="signin" role="dialog"
		aria-labelledby="signinLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="signLogo osLight">
				<span class="fa fa-home"></span> Yolo와lot
			</div>
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="signinLabel" style="display:inline">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					 <form id="login_frm" role="form" method="post" action="/Yolo/login/login.main">

						<div class="form-group">
							<input type="text" id="login_id_input" placeholder="ID" name="u_id" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" id="login_pass_input" placeholder="Password" name="u_pass" class="form-control">
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<div class="checkbox custom-checkbox">
										<label><input type="checkbox"><span
											class="fa fa-check"></span> ID 기억하기</label>
									</div>
								</div>
								<div class="col-xs-6 align-right">
									<p class="help-block">
										<a href="#" class="text-green">아이디를 잊으셨나요?</a>
									</p>
								</div>
								<div class="col-xs-offset-6 col-xs-6 align-right">
									<p class="help-block">
										<a href="#" class="text-green">비밀번호를 잊으셨나요?</a>
									</p>
								</div>
							</div>
						</div>
						<div class="form-group">
							<a id="modal_login_btn" class="btn btn-lg btn-green">LOGIN</a>
						</div>
						<p class="help-block">
							아직 회원이 아니십니까? 
							<a href="/Yolo/view/join/join.jsp" class="text-green">회원가입하기</a>
						</p>
					</form>
				</div>
			</div>
			<div class="signFooter">
				Yolo와lot web application<br>&copy; 2017
			</div>
		</div>
	</div><!-- 로그인 Modal END -->

	<!-- 회원가입 Modal -->
	<div class="modal fade" id="signup" role="dialog"
		aria-labelledby="signupLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="signLogo osLight">
				<span class="fa fa-home"></span> Yolo와lot
			</div>
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="signupLabel" style="display:inline">회원가입</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">

					<form role="form"  method="post" action="/Yolo/join/join_ok.main">
						<div class="form-group">
							<div class="input-group">
								<input type="text" placeholder="아이디" id="u_id" name="u_id" class="form-control">
								<span class="input-group-btn">
									<button class="btn btn-success" type="button" id="check" name="check">중복확인</button>
								</span>
								<span id="idCheckResult" style="width:150px;color:red"></span>
							</div>
						</div>
						<div class="form-group">
							<input type="password" placeholder="비밀번호" id="u_pass" name="u_pass" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="비밀번호확인" id="u_passconfirm" name="u_passconfirm" class="form-control">
						</div>
						<div class="form-group">
							<input type="text" placeholder="성명" id="u_name" name="u_name" class="form-control">
						</div>
						<div class="form-group">
							<input type="tel" placeholder="휴대전화" id="u_tell" name="u_tel" class="form-control">
						</div>
						<div class="form-group">
							<input type="email" placeholder="Email" id="u_email" name="u_email" class="form-control">
						</div>
						<div class="form-group">
							<input type="date" placeholder="생년월일" id="u_birth" name="u_birth" class="form-control">
						</div>
						<!-- 우편번호 검색 -->
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" id="postcode" name="postcode" placeholder="우편번호">
								<span class="input-group-btn">
								<input type="button"  class="btn btn-success form-control" onclick="DaumPostcode()" value="우편번호 찾기">
								</span>
							</div>	
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="main_address" name="main_address" placeholder="주소">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="detail_address" name="detail_address" placeholder="상세주소">
						</div>
						<span id="guide" style="color:#999"></span>
						<div class="form-group">
							<button type="submit" id="modal_join_btn" class="btn btn-lg btn-green">가입하기</button>
						</div>
						<p class="help-block">
							회원이신가요? <a href="/Yolo/views/login/login.user" class="text-green">로그인하기</a>
						</p>
					</form>
				</div>
			</div>
			<div class="signFooter">
				Yolo와lot web application<br>&copy; 2017
			</div>
		</div>
	</div><!-- 회원가입 Modal END -->


	<!-- javascript -->
	<script src="/Yolo/js/json2.js"></script>
	<script src="/Yolo/js/jquery-2.1.1.min.js"></script>
	<script src="/Yolo/js/underscore.js"></script>
	<script src="/Yolo/js/moment-2.5.1.js"></script>
	<script src="/Yolo/js/jquery-ui.min.js"></script>
	<script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
	<script src="/Yolo/js/jquery.placeholder.js"></script>
	<script src="/Yolo/js/bootstrap.js"></script>
	
    <!-- 채팅 JS -->
    <script src="http://192.168.0.151:3000/socket.io/socket.io.js"></script>
    <script src="/Yolo/js_yolo/chat/chatClient.js"></script>
    <script src="/Yolo/js_yolo/chat/chat.js" ></script>
    	
	<script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
	<script src="/Yolo/js/jquery.slimscroll.min.js"></script>
	<script src="/Yolo/js/jquery.visible.js"></script>
	<script
		src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places"
		type="text/javascript"></script>
	<script src="/Yolo/js/infobox.js"></script>
	<script src="/Yolo/js/clndr.js"></script>
	<script src="/Yolo/js/jquery.tagsinput.min.js"></script>
	<script src="/Yolo/js/bootstrap-datepicker.js"></script>
	<script src="/Yolo/js/fileinput.min.js"></script>
	<script src="/Yolo/js/app.js"></script>
	<script src="/Yolo/js/calendar.js"></script>

	<!-- 추가  -->
	<script src="/Yolo/js_yolo/user/login.js" type="text/javascript"></script>
	<script src="/Yolo/js/home.js" type="text/javascript"></script>
	<script src="/Yolo/js_yolo/icongrid/modernizr.custom.js" type="text/javascript"></script>
    <!-- 다음 맵 -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/Yolo/js_yolo/postcode/postcode.js" type="text/javascript"></script>
 	<!-- javascript end -->
 	<script type="text/javascript">
 	$(function(){
 		$("#modal_login_btn").click(function(){
 			if( $("#login_id_input").val() == "" ){
 				alert("아이디를 입력해주세요!");
 			}else if( $("#login_pass_input").val() == "" ){
 				alert("비밀번호를 입력해주세요!");
 			}else{
 				$("#login_frm").submit();	
 			} 						
 		});		
 	});
 	</script>
 
</body>
</html>