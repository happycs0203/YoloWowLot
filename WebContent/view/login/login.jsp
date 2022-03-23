<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>login.jsp</title>

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

        <div class="modal fade" id="signin" role="dialog" aria-labelledby="signinLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="signLogo osLight"><span class="fa fa-home"></span> Yolo와lot</div>
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="signinLabel">로그인</h4>
                    </div>
                    <div class="modal-body">
                        <form role="form">
                            
                            <div class="form-group">
                                <input type="text" placeholder="ID" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> ID 기억하기</label></div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <p class="help-block"><a href="#" class="text-green">아이디를 잊으셨나요?</a></p>
                                    </div>
                                    <div class="col-xs-offset-6 col-xs-6 align-right">
                                    	<p class="help-block"><a href="#" class="text-green">비밀번호를 잊으셨나요?</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="btn-group-justified">
                                    <a href="explore.html" class="btn btn-lg btn-green">LOGIN</a>
                                </div>
                            </div>
                            <p class="help-block">아직 회원이 아니십니까? <a href="/Yolo/view/join/join.jsp" class="text-green">회원가입하기</a></p>
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
        <script src="/Yolo/js/signin.js" type="text/javascript"></script>
    </body>
</html>