<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<script type="text/javascript">
	 $(function(){
		 $("#check").click(function(){
			 alert("클릭");
			 $.ajax({
		            type: 'post',
		            async: true,
		            //url:'${pageContext.request.contextPath}/login_chk.do',
		            url:'/Yolo/join/idCheck.main',
		            contentType:'application/x-www-form-urlencoded;charset=UTF-8',
		           // data: $("#userinput").serialize(),
		            data: "u_id="+$("#u_id").val(),
		           
		            success:function(resultData){
		            	//alert("resultData = "+resultData)
		    			$('#idCheckResult').html(resultData);
		    		}
			 });
			 
		 });
		 
	 });
	
	</script>
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