<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>ShareInput.jsp</title>

<link href="/Yolo/css/font-awesome.css" rel="stylesheet">
<link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
<link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
<link href="/Yolo/css/datepicker.css" rel="stylesheet">
<link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
<link href="/Yolo/css/bootstrap.css" rel="stylesheet">
<link href="/Yolo/css/app.css" rel="stylesheet">

<!-- 추가CSS -->
<link href="/Yolo/css_yolo/cssView/comShare/ShareInput.css" rel="stylesheet">



<!--[if lt IE 9]> n
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
       
<style>

@media screen and (max-width: 767px){
	.table > tbody > tr > td {
	    font-size: 11px;
	    padding: 10px 2px;
	}
}

.panel.dd .panel-body {
    font-size: 12px;
}

#ddPanel 
</style>


</head>
<body class="notransition">

   <!-- Header -->
   <%@include file="/view/common/header.jsp"%>

   <div id="wrapper" class="full">
      <div id="mapView" class="min">
         <div class="mapPlaceholder">
            <span class="fa fa-spin fa-spinner"></span> Loading map...
         </div>
      </div>
      <div id="content" class="max">
         
         <!-- ------------------------------------------------------- -->
			<div class="home-content">
				<div class="home-wrapper">
					<div class="tables">
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-default">
									<div class="panel-body">
										<h4>쉐어링 정보입력</h4>
										<hr>
										<br />
										<form class="form-horizontal" role="form">
											<!-- 글 제목 입력 -->
											<div class="form-group">
												<label class="col-sm-2 control-label">글 제목</label>
												<div class="col-sm-9">
													<input class="form-control input-sm" type="text">
												</div>
											</div>
											<!-- 예약공간 선택 -->
											<div class="form-group">
												<label class="col-sm-2 control-label">예약공간 선택</label>
												<div class="col-sm-9 panel panel-default dd">
					                                <a href="#ddPanel" class="btn btn-o btn-default btn-block btn-lg align-left" data-toggle="collapse"><span class="fa fa-angle-down pull-right"></span></a>
					                                <div id="ddPanel" class="panel-collapse collapse">
					                                    <div class="panel-body">
					                                    	<!-- 내가 예약한 공간 리스트 -->
															<div class="table-overflow">
									                            <table class="table" id="inboxTable">
									                                <tbody class="table">
									                                    <tr>
									                                        <td><div class="radio custom-radio"><label><input type="radio" name="radio1"><span class="fa fa-circle"></span></label></div></td>
									                                        <td><img alt="" src="/Yolo/images_yolo/lot/1.PNG" width="150px;" height="100px;"></td>
									                                        <td>John Smith</td>
									                                        <td>Modern Residence in New York</td>
									                                        <td>6:07 pm</td>
									                                    </tr>
									                                    <tr>
									                                        <td><div class="radio custom-radio"><label><input type="radio" name="radio1"><span class="fa fa-circle"></span></label></div></td>
									                                        <td><img alt="" src="/Yolo/images_yolo/lot/2.PNG" width="150px;" height="100px;"></td>
									                                        <td>Jane Smith</td>
									                                        <td>Hauntingly Beautiful Estate</td>
									                                        <td>Sep 27</td>
									                                    </tr>
									                                    <tr>
									                                        <td><div class="radio custom-radio"><label><input type="radio" name="radio1"><span class="fa fa-circle"></span></label></div></td>
									                                        <td><img alt="" src="/Yolo/images_yolo/lot/3.PNG" width="150px;" height="100px;"></td>
									                                        <td>Rust Cohle</td>
									                                        <td>Sophisticated Residence</td>
									                                        <td>Sep 25</td>
									                                    </tr>
									                                </tbody>
									                            </table>
									                        </div><!-- 내가 예약한 공간 리스트 END-->     
					                                    </div>
					                                </div>
					                            </div>
				                            </div>
											<!-- 선택한 공간 카테고리 -->
											<div class="form-group">
												<label class="col-sm-2 control-label">쉐어링 공간</label>
												<div class="col-sm-9">
													<textarea class="form-control" rows="10" readonly="readonly"></textarea>
												</div>
											</div>
											<!-- 글 내용 입력 -->
											<div class="form-group">
												<label class="col-sm-2 control-label">글 내용</label>
												<div class="col-sm-9">
													<textarea class="form-control" rows="15" placeholder="쉐어링 날짜/시간 및 상세 내용 입력"></textarea>
												</div>
											</div>
											<!-- 쉐어링 등록하기 버튼 -->
											<div id="nextbtn" class="col-md-12">
												<div class="col-md-5"></div>
												<button class="col-md-2 btn btn-round btn-o btn-green">쉐어링 등록하기</button>
												<div class="col-md-5"></div>
											</div>
		
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- / tables -->
				</div>
			</div>         
         
         
         
         
         <!-- ------------------------------------------------------- -->
         <!-- Footer -->
         <%@include file="/view/common/footer.jsp"%>

      </div>
      <!-- / content -->
      <div class="clearfix"></div>
   </div>
   <!-- / wrapper -->

   <script src="/Yolo/js/json2.js"></script>
   <script src="/Yolo/js/jquery-2.1.1.min.js"></script>
   <script src="/Yolo/js/underscore.js"></script>
   <script src="/Yolo/js/moment-2.5.1.js"></script>
   <script src="/Yolo/js/jquery-ui.min.js"></script>
   <script src="/Yolo/js/jquery-ui-touch-punch.js"></script>
   <script src="/Yolo/js/jquery.placeholder.js"></script>
   <script src="/Yolo/js/bootstrap.js"></script>
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

   <!-- 추가JS   -->
   <script src="/Yolo/js/home.js" type="text/javascript"></script>
	
</body>


</html>