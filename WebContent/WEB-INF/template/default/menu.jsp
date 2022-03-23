<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
		String u_id = "";
		
		//세션에 있는 id값 가져오기
		u_id = (String)session.getAttribute("u_id");
		
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