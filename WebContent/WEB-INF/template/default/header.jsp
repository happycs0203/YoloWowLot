<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- 맵 아이콘 보여주기-->
		<a href="#" class="mapHandler"><span class="icon-map"></span></a>
		<div class="clearfix"></div>		
	</div><!-- Header END -->