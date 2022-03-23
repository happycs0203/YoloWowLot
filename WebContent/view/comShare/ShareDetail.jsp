<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>ShareDetail.jsp</title>

        <link href="/Yolo/css/font-awesome.css" rel="stylesheet">
        <link href="/Yolo/css/simple-line-icons.css" rel="stylesheet">
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
        <link href="/Yolo/css/datepicker.css" rel="stylesheet">
        <link href="/Yolo/css/fileinput.min.css" rel="stylesheet">
        <link href="/Yolo/css/bootstrap.css" rel="stylesheet">
        <link href="/Yolo/css/app.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        <!-- 추가 CSS -->
        <link href="/Yolo/css_yolo/cssView/comShare/ShareDetail.css" rel="stylesheet">
        
        <!-- date time picker CSS-->
        <link href="/Yolo/css/jquery-ui.css" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet" type="text/css">
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" type="text/css">
		<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css" rel="stylesheet" type="text/css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<link href="/Yolo/css_yolo/cssView/comShare/datetimePicker.css" rel="stylesheet">



    </head>
    <body class="notransition">
    
		<!-- Header -->
		<%@include file="/view/common/header.jsp"%>

        <!-- Content -->
        <div id="wrapper" class="full">
            <div id="mapView" class="min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="max">
		        <!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->
		        <!-- 이 사이에! -->




			<div class="home-content">
				<div class="home-wrapper">
					<div class="row">
					
						<!-- 글전체 -->
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						
							<!-- 공간 쉐어링 제목부분 -->
							<div class="post-top" id="post-top">
								<div class="post-author">
									<h1 id="lec_title">공간 쉐어링</h1>
								</div>
								<div class="clearfix"></div>
							</div><!-- 공간 쉐어링 제목부분 끝 -->
							
							<!-- 글 메인 -->
							<div class="post-content">
								<!-- 상단 부분 -->
								<div class="row">
									<!-- 등록 이미지 삽입 -->
									<div class="col-md-6">
										<div id="image_div" class="image-block col-md-12 col-xs-12 col-sm-12">
											<img src="/Yolo/images/blog-3.jpg" alt="blog image">
										</div>
									</div>
									<!-- 등록 이미지 삽입 끝 -->
									<!-- 내용 -->
									<h3>스터디룸 쉐어합니다</h3>
		                            <div class="form-group col-md-6">
		                                <div class="profile-card">
		                                    <div class="pc-avatar"><img src="/Yolo/images/avatar-1.png" alt="avatar"></div>
		                                    <div class="pc-name">LeeYJ</div>
		                                        
		                                    <a></a>
		                                    <div class="mainFunction summaryItem">
				                                <div class="clearfix"></div>
							            		<div id="app" class="btn">
													<div class="btn">
														<a data-toggle="modal" href="#contactAgent"
															class="btn btn-lg btn-round btn-green">문의하기</a>
													</div>
													<div class="btn">
														<a data-toggle="modal" href="#application"
															class="btn btn-lg btn-round btn-green">신청하기</a>
													</div>
												</div>
				                            </div>
		                                </div>
		                            </div>
								</div>
								<!-- 상단 부분 끝 -->
								<div class="clearfix"></div>
								<!-- 하단 부분 -->
	                            <div class="panel panel-default">
	                                <div class="panel-body">
	                                    <form class="form-horizontal" role="form">
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">시간</label>
	                                            <div class="col-sm-10">
	                                                <a>17.07.12 / 3pm ~ 6pm</a>
	                                            </div>
	                                        </div>
	                                        <div class="form-group">
	                                       		<label class="col-sm-2 control-label">상세내용</label>
	                                            <div class="col-sm-10">
	                                                <a>아아아아아아아아아아아아아아아아아</a><br/>
	                                                <a>아아아아아아아아아아아아아아아아아</a><br/>
	                                                <a>아아아아아아아아아아아아아아아아아</a><br/>
	                                                <a>아아아아아아아아아아아아아아아아아</a><br/>
	                                                <a>아아아아아아아아아아아아아아아아아</a>
	                                            </div>
	                                        </div>
	                                    </form>
	                                    <!-- 지도 부분 -->                              
									    <div id="hero-container-map">
								            <div id="home-map"></div>
								        </div>
	                                    <!-- 지도 부분 끝 -->
	                                </div>
	                            </div>								
							</div><!-- 글 메인 끝-->
						</div><!-- 글 전체 끝 -->
					</div>
				</div>
			</div>


		        <!-- ------------------------------------------------------- -->
		        <!-- Footer -->
		        <%@include file="/view/common/footer.jsp"%>   
		        
            </div>
            <div class="clearfix"></div>
        </div>



	<!-- modal popup -->
	
	<div class="modal fade" id="application"
		role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				
				<div class="modal-body">
					<!-- date picker -->
					<div class='formInput dateSelector'> 
						<input type='input' class='icon-calendar' id='hbdsdf' value='yyyy.mm.dd' />
					</div>
					
					<div id="propWidget-3" class="carousel slide propWidget-3" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                            	 <div class="btn-group" data-toggle="buttons">
									<label class="btn btn-o btn-warning active " >
										<input type="checkbox" autocomplete="off" checked><span>09:00</span>
									</label>
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>10:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>11:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>12:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>13:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>14:00</span>
									</label>	
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>15:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>16:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>17:00</span>
									</label>
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>18:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>19:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>20:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>21:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>22:00</span>
									</label>	
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>23:00</span>
									</label>			
									<label class="btn btn-o btn-warning">
										<input type="checkbox" autocomplete="off"><span>24:00</span>
									</label>			
								</div>       
                            </div>
                        </div>
                    </div>
				</div>
				
				<div class="modal-footer">
					<a href="#" data-dismiss="modal"
						class="btn btn-round btn-o btn-warning">쉐어신청하기</a> 
				</div>
			</div>
		</div>
	</div>
	


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
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="/Yolo/js/infobox.js"></script>
        <script src="/Yolo/js/clndr.js"></script>
        <script src="/Yolo/js/jquery.tagsinput.min.js"></script>
        <script src="/Yolo/js/bootstrap-datepicker.js"></script>
        <script src="/Yolo/js/fileinput.min.js"></script>
        <script src="/Yolo/js/app.js"></script>
        <script src="/Yolo/js/calendar.js"></script>
        
        <!-- 추가  -->
		<script src="/Yolo/js/home.js" type="text/javascript"></script>
		
        <!-- date picker JS -->
    	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script> 
		<script src="/Yolo/js_yolo/comShare/ios-7-date-picker.js"></script>
		<script src="/Yolo/js_yolo/comShare/datetimePicker.js"></script>
    </body>
</html>