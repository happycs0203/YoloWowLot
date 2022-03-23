<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="yolo.user.dto.*"%>
<!-- 추가 css -->
<link href="/Yolo/css_yolo/cssView/MyPage/mypage.css" rel="stylesheet">

			<!-------- ------- 개인정보 수정하기 ------------------------>
			<div class="home-wrapper info">
                <%
								UserVO info = (UserVO)request.getAttribute("myinfo");
             
							   %>
				<h4
					style="text-align: center; margin-bottom: 30px; border-bottom: 1px solid silver; padding-bottom: 10px;">MY
					PROFILE</h4>
				<div class="panel-body">
                  
					<form class="form-horizontal" id="frm" method="post" enctype="multipart/form-data"  action="/Yolo/mypage/info/ModifyFinish.myinfo">
						<div class="form-group">
                     	<label class="col-sm-2 control-label"> 프로필 </label>
                     	<div class="col-sm-2">
                        <input type="file" name="file" id="imageUpload"
                        multiple data-show-upload="false" data-show-caption="false"
						data-show-remove="false" accept="image/jpeg,image/png"
                           style="display: none;" /> <img src="" id="imagePreview" alt=""
                           class="ratio img-responsive img-circle"/><br />

                        <div style="text-align: center;">
                           <div style="display: inline-block;">
                              <label for="imageUpload" id="btn_profile"
                                 class="btn btn-o btn-green">사진 등록</label>
                           </div>
                        </div>
                       
                     </div>
                  </div>

						<div class="form-group">
							<label class="col-sm-2 control-label">아이디</label>
							<div class="col-sm-8">
								<input type="text" name="u_id_t" class="form-control" value="<%= info.getU_id() %>" disabled>
								<input type="hidden" name="u_id" class="form-control" value="<%= info.getU_id() %>">
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-8">
								<input type="password" id="u_pass" name="u_pass" class="form-control" value="<%=info.getU_pass()%>" onchange="check()" >
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">비밀번호 확인</label>
							<div class="col-sm-8">
								<input type="password" id="u_passconfirm" class="form-control" value="" onchange="check()" >
				                 <p id="result" style="color:red;"></p>
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이 름</label>
							<div class="col-sm-8">
								<input type="text" name="u_name" class="form-control" value="<%= info.getU_name() %>" >
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">휴대전화</label>
							<div class="col-sm-8">
								<input type="text" name="u_tel" class="form-control" value="<%= info.getU_tel() %>" >
							</div>
						</div>
				
						<div class="form-group">
							<label class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-8">
								<input type="text" name="u_email" class="form-control" value="<%= info.getU_email() %>" >
							</div>
						</div>
			
						<div class="form-group">
							<label class="col-sm-2 control-label">생 일</label>
							<div class="col-sm-8">
								<input type="text" name="u_birth" value="<%= info.getU_birth() %>" class="form-control" id="datepicker">
								
							</div>
						</div>
					    <% 
					    String str = info.getU_addr();
						StringTokenizer st = new StringTokenizer(str,"/");
						String postcode = st.nextToken();
						String main_address = st.nextToken();
						String detail_address = st.nextToken();
					    %>
						<!-- 우편번호 검색 -->
						<div class="form-group">
							<label class="col-sm-2 control-label">주 소</label>
							  <div class="col-sm-5">
								<input type="text" class="form-control col-sm-5" id="postcode" name="postcode" value="<%=postcode %>">
								</div>
								<div class="col-sm-3">
								<span class="input-group-btn">
								<input type="button"  class="btn btn-success form-control " onclick="DaumPostcode()" value="우편번호 찾기">
								</span>
								</div>	
						</div>
						<div class="form-group">
						<label class="col-sm-2 control-label"> </label>
						   <div class="col-sm-8">
							<input type="text" class="form-control col-sm-8" id="main_address" name="main_address" value="<%= main_address%>">
						</div>
						</div>
						<div class="form-group">
						<label class="col-sm-2 control-label"> </label>
						 <div class="col-sm-8">
							<input type="text" class="form-control" id="detail_address" name="detail_address" value=<%=detail_address%> >
						</div>
						</div>
						
						<div style="text-align: center;">
						<div style="display: inline-block;">
							<button type="submit" class="btn btn-o btn-green">수 정</button>
						</div>
					</div>
				</form>

					

				</div>
			</div>
			<!---------------개인정보  수정하기 끝 ------------------------>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
      $(function(){
    	  $('#u_passconfirm').blur(function(){
    		  if($('#u_pass').val() !== $('#u_passconfirm').val()){
    			  $('#result').text("비밀번호가 일치하지 않습니다.");
    			  $('#u_passconfirm').val("");
    		  }else{
    			  $('#result').text("");
    		  }
    	  });
    	  
    	  
//     	  $('#btn_modify').click(function(){
//     		 $('#frm').submit(); 
//     	  });
      });
    </script>
    <script type="text/javascript" src='/Yolo/js_yolo/host/hostregister.js'></script>
