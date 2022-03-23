<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>join.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/fullscreen-slider.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">
</head>
<body class="notransition black">
        <div id="page-container">
            <ul class="cb-slideshow">
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
            </ul>
        </div>

        <div class="modal fade" id="signup" role="dialog" aria-labelledby="signupLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="signLogo osLight"><span class="fa fa-home"></span> Yolo와lot</div>
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="signupLabel">회원가입</h4>
                    </div>
                    <div class="modal-body">
                        <form role="form">
                        	<div class="form-group">
                            	<div class="input-group">
                                	<input type="text" placeholder="아이디" class="form-control">
                            		<span class="input-group-btn">
                            			<button class="btn btn-success" type="button" id="idcheck">중복확인</button>
                            		</span>
                            		<span id="idCheckResult" style="width:150px;color:red"></span>
                            	</div>
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="비밀번호" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="비밀번호확인" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="성명" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="tel" placeholder="휴대전화" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="email" placeholder="Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="date" placeholder="생년월일" class="form-control">
                            </div>
                            <div class="form-group">
                            	<select class="form-control">
          							<option value="서울특별시">서울특별시</option>
          							<option value="경기도">경기도</option>
          							<option value="강원도">강원도</option>
          							<option value="충청도">충청도</option>
          							<option value="전라도">전라도</option>
          							<option value="경상도">경상도</option>
        						</select>
                            </div>
                            <div class="form-group">
                                <div class="btn-group-justified">
                                    <a href="explore.html" class="btn btn-lg btn-green">가입하기</a>
                                </div>
                            </div>
                            <p class="help-block">회원이신가요? <a href="/Yolo/view/login/login.jsp" class="text-green">로그인하기</a></p>
                        </form>
                    </div>
                </div>
                <div class="signFooter">Yolo와lot web application<br>&copy; 2017</div>
            </div>
        </div>

        <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
        <script src="/Yolo/js/jquery-ui.min.js"></script>
        <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
        <script src="/Yolo/js/jquery.placeholder.js"></script>
        <script src="/Yolo/js/bootstrap.js"></script>
        <script src="/Yolo/js/jquery.touchSwipe.min.js"></script>
        <script src="/Yolo/js/jquery.visible.js"></script>
        <script src="/Yolo/js/signup.js" type="text/javascript"></script>
    </body>
</html>