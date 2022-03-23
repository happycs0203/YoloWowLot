<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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