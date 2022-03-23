<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="yolo.user.dto.*"%>
<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/MyPage/mypage.css" rel="stylesheet">
<script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
			<!-------- ------- 개인정보 수정하기 ------------------------>
			<div class="home-wrapper info">
                <%
								UserVO info = (UserVO)request.getAttribute("info");
							   %>
				<h4
					style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">MY
					PROFILE</h4>
				<div class="panel-body">
                  
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label"> 프로필 </label>
							<div class="col-sm-2 col-md-3">
								<img src="/Yolo/upload/user/<%=info.getU_iname()%>" id="imagePreview" alt="" 
									class="ratio img-responsive img-circle" /><br />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">아이디</label>
							<div class="col-sm-8">
								<input type="text" name="u_id" class="form-control" value="<%= info.getU_id() %>" disabled>
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-8">
								<input type="text" name="u_pass" class="form-control" value="<%= info.getU_pass() %>" disabled>
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이 름</label>
							<div class="col-sm-8">
								<input type="text" name="u_name" class="form-control" value="<%= info.getU_name() %>" disabled>
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">휴대전화</label>
							<div class="col-sm-8">
								<input type="text" name="u_tel" class="form-control" value="<%= info.getU_tel() %>" disabled>
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-8">
								<input type="text" name="u_email" class="form-control" value="<%= info.getU_email() %>" disabled>
							</div>
						</div>
			
						<div class="form-group">
							<label class="col-sm-2 control-label">생 일</label>
							<div class="col-sm-8">
								<input type="text" name="u_birth" value="<%= info.getU_birth() %>" class="form-control" id="datepicker" disabled>
							</div>
						</div>
					
						<div class="form-group">
							<label class="col-sm-2 control-label">주 소 </label>
							<div class="col-sm-8">

								<div class="col-xs-5 col-md-7 addr">
									<input type="text" name="u_addr" class="form-control" value="<%= info.getU_addr() %>" disabled>
								</div>

							</div>
						</div>
					</form>

					<div style="text-align: center;">
						<div style="display: inline-block;">
							<a href="/Yolo/mypage/info/MyInfoModify.myinfo?u_id=<%=info.getU_id()%>" id="btn_modify" class="btn btn-o btn-green">수정하기</a>
						</div>
					</div>

				</div>
			</div>
			<!---------------개인정보  수정하기 끝 ------------------------>
	
