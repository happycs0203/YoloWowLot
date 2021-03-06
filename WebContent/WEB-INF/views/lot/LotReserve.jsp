<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page import="yolo.lot.dto.*"%>

<link href='/Yolo/css_yolo/cssView/lot/fullcalendar.min.css'
	rel='stylesheet' />
<link href='/Yolo/css_yolo/cssView/lot/fullcalendar.print.min.css'
	rel='stylesheet' media='print' />
<!-- Custom CSS -->
<link href="/Yolo/css_yolo/cssView/MyClub/portfolio-item.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/MyClub/ClubMyList.css"
	rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/lot/lotReserve.css" rel="stylesheet">

<link href="/Yolo/css_yolo/cssView/Host/host.css" rel="stylesheet">
<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">

<link href="/Yolo/css_yolo/cssView/Club/clubInput.css" rel="stylesheet">

<style>
/* CHECKBOX */
.carousel-control.right {
	right: 0;
	left: auto;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0%,
		rgba(255, 255, 255, 0.5) 100%);
	color: rgb(242, 118, 0);
}

.carousel-control {
	position: absolute;
	top: -15px;
	bottom: 0;
	left: 4px;
	width: 5%;
	font-size: 20px;
	color: #000000;
	text-align: center;
	text-shadow: 0 1px 0px rgba(0, 0, 0, 0.57);
	filter: alpha(opacity = 50);
	opacity: .5;
}

.carousel-control.left {
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0%,
		rgba(255, 255, 255, 0.5) 100%);
	color: rgb(242, 118, 0);
}

.btn-group, .btn-group-vertical {
	display: inline-flex;
}

.carousel-inner {
	position: relative;
	width: 100%;
	overflow: auto;
	margin-left: 2px;
}

@media ( max-width :768px) {
	.carousel-inner {
		overflow: auto;
	}
}

.btn-o.btn-warning {
	margin-right: 4px;
}
.btn-o.btn-warning.disabled {
	color:white;
}
p{
	word-break: break-all;
	padding-right: 5px;
}
.fullrow{
	margin-bottom: 15px;
}
</style>

<script src="/Yolo/js_yolo/lotreserve/jquery.min.js"></script>
<script src='/Yolo/js_yolo/lotreserve/moment.min.js'></script>
<script src='/Yolo/js_yolo/lotreserve/fullcalendar.js'></script>


<script>
	$(document).ready(function(){
		$('.volume .btn-round-right').click(function() {
	        var currentVal = parseInt($(this).siblings('input').val());
	        if (currentVal < 10) {
	            $(this).siblings('input').val(currentVal + 1);
	            $("#bl_people_p").text(currentVal + 1);
	            $("#bl_people").val(currentVal + 1);
	        }
	    });
	    $('.volume .btn-round-left').click(function() {
	        var currentVal = parseInt($(this).siblings('input').val());
	        if (currentVal > 1) {
	            $(this).siblings('input').val(currentVal - 1);
	            $("#bl_people_p").text(currentVal - 1);
	            $("#bl_people").val(currentVal - 1);
	        }
	    });
		
	
		$('#alltime label').click(function(evt){
			evt.preventDefault();
			evt.stopImmediatePropagation();
			$(this).toggleClass("active");
			//alert("??????");
			var label = $("#alltime").find('label[class*=active]');
			//alert(label.length);
			var times = '';
			for(var i = 0; i < label.length ; i++){
				if(i==label.length-1){
					times += $(label[i]).text();
				}else{
					times += $(label[i]).text()+"/";
				}
			}
			$('#bl_time_p').text('');
			$('#bl_time_p').text(times);
			$('#bl_time').val('');
			$('#t_time').val('');
			$('#bl_time').val(times);
			$('#t_time').val(times);
			var pay = label.length * $('#bl_subpay').val();
			$('#bl_pay_p').text('');
			$('#bl_pay_p').text(pay);
			$('#bl_pay').val('');
			$('#bl_pay').val(pay);
			
		});
		
		$('#calendar').fullCalendar({
				header : {
					left : 'prev,next',
					center : 'title',
					right : 'today'
				},
				defaultDate : '2017-05-12',
				navLinks : false, // can click day/week names to navigate views
				editable : true,
				selectable : true,
				eventLimit : true, // allow "more" link when too many events
				dayClick : function(date) {
					//??????????????? ???????????? ajax??? ?????? ???????????? ?????? ?????? ????????? ????????????.
					//?????????????????? ???????????? 
					$('#bl_time_p').text('');
					$('#bl_time').val('');
					$('#bl_date_p').text('');
					$('#bl_date_p').text(date.format());
					$('#bl_date').val('');
					$('#bl_date').val(date.format());
					$('#t_date').val('');
					$('#t_date').val(date.format());
					$('#bl_pay').val('');
					$('#bl_pay_p').text('');
					alert(date.format());
					$.ajax({
						type : "post",
						async : true,
						url : "/Yolo/lot/LotReserveAjax.lot",
						data : {
							"t_date" : date.format(), "pri_num" : $("#pri_num").val() 
						},
						dataType : "text",
						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						success : function(data) {
							//alert(data);
							var timeArray=data.split('/');
							//alert(timeArray.length);
							$.each(timeArray , function(i,time) {
								if(time == 0){
									$("#alltime").children().eq(i).removeClass("active disabled");
								}else{
									$("#alltime").children().eq(i).removeClass("active disabled");
									$("#alltime").children().eq(i).addClass(" disabled");
								}	
							});
						},
					});
				},
		});
	});
</script>


<!-- -----------------????????? ????????? div????????????----------------- -->

<div class="home-content">
	<div id="home-wrapper" class="home-wrapper">
		<div class="row">
		<form method ="post" action="/Yolo/lot/LotPay.lot">
			<!-- ???????????? ?????? ??? -->
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

				<!-- ?????? ????????????  -->
				<div class="row" style="margin-bottom: 15px;">
					<h2 id="lot_reserve"></h2>
					<div style="margin-bottom: 30px;" class="fig">
						<img id="reserveimage" src="/Yolo/images_yolo/lot/${list.priimg_name}" alt="image">
					</div>
					<!-- ?????????, ??????, ?????? -->
					<div class="col-md-12">
						<div class="col-md-12">
							<h1 style="margin-top: -15px; font-size: 20px;">${list.pri_title}</h1>
							<div class="address">
								<span class="icon-pointer"></span>${list.pri_addr}
							</div>
						</div>
						<div class="col-md-8">
 							
						</div>
						<div class="col-md-4">
							<strong style="margin-top: 0px; font-size: 25px;">${list.pri_weekprice}???</strong>
							<span>/${list.pri_booktype}</span>
							<input type="hidden" id="bl_subpay" name="bl_subpay" value="${list.pri_weekprice}"/>
						</div>

					</div>
					<!-- ?????????, ??????, ?????? ??? -->
				</div>

				<!-- ?????? ???????????? ???????????? -->
				<div class="row" style="margin-bottom: 10px;">
					<h2 id="lot_reserve" class="osLight align-left">??????????????????</h2>

					<div style="margin-top: 10px;">
						<h3>????????????</h3>
						${list.pri_content}
					</div>

					<!------------- ???????????? ????????? --------------------->
					<div class="row" style="margin-top: 10px; padding: 8px;">
						<h3>????????????</h3>

						<%
							LotListVO lotlistVO = (LotListVO) request.getAttribute("list");
							String f = lotlistVO.getPri_facility();
							StringTokenizer st2 = new StringTokenizer(f, ",");
							String icon = null;
							String fac[] = { "TV/????????????", "?????????/WIFI", "??????/?????????", "???????????????", "??????/?????????", "????????????", "?????????????????????", "??????????????????", "??????",
									"??????", "PC/?????????", "??????/?????????" };
							String confirm = st2.nextToken();
							for (int i = 0; i < fac.length; i++) {
								switch (fac[i]) {
								case "TV/????????????":
									icon = "fa-film";
									break;
								case "?????????/WIFI":
									icon = "fa-wifi";
									break;
								case "??????/?????????":
									icon = "fa-print";
									break;
								case "???????????????":
									icon = "fa-square-o";
									break;
								case "??????/?????????":
									icon = "fa-microphone";
									break;
								case "????????????":
									icon = "fa-cutlery";
									break;
								case "?????????????????????":
									icon = "fa-shopping-cart";
									break;
								case "??????????????????":
									icon = "fa-beer";
									break;
								case "??????":
									icon = "fa-automobile";
									break;
								case "??????":
									icon = "fa-arrows-v";
									break;
								case "PC/?????????":
									icon = "fa-laptop";
									break;
								case "??????/?????????":
									icon = "fa-users";
									break;
								} //End of switch

								if (fac[i].equals(confirm)) {
						%>
						<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem">
							<span class="fa <%=icon%>"></span><%=fac[i]%>
						</div>
						<%
							if (st2.hasMoreTokens()) {
										confirm = st2.nextToken();
									} //End of if

								} else {
						%>

						<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem inactive">
							<span class="fa <%=icon%>"></span><%=fac[i]%>
						</div>

						<%
							} //End of else

							} //End of for
						%>

					</div>
					<!-------------  ???????????? ????????? ???--------------------->
				</div>
				<!--?????????????????? ??? -->
				
				
				<!-- ???????????? -->
				<div class="row" style="margin-bottom: 10px;">
					<div id='calendar'></div>
				</div>
				<!-- ???????????? ??? -->
				
				
				</br>
				<!-- ???????????? -->
				<div id="propWidget-3" class="carousel slide propWidget-3" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                            
                            	 <div class="btn-group" id="alltime" data-toggle="buttons">
									
									<label id="time1" class="btn btn-o btn-warning" autocomplete="off" >09:00</label>
									<label id="time2" class="btn btn-o btn-warning" autocomplete="off" >10:00</label>
									<label id="time3" class="btn btn-o btn-warning" autocomplete="off" >11:00</label>
									<label id="time4" class="btn btn-o btn-warning" autocomplete="off" >12:00</label>
									<label id="time5" class="btn btn-o btn-warning" autocomplete="off" >13:00</label>
									<label id="time6" class="btn btn-o btn-warning" autocomplete="off" >14:00</label>
									<label id="time7" class="btn btn-o btn-warning" autocomplete="off" >15:00</label>
									<label id="time8" class="btn btn-o btn-warning" autocomplete="off" >16:00</label>
									<label id="time9" class="btn btn-o btn-warning" autocomplete="off" >17:00</label>
									<label id="time10" class="btn btn-o btn-warning" autocomplete="off" >18:00</label>
									<label id="time11" class="btn btn-o btn-warning" autocomplete="off" >19:00</label>
									<label id="time12" class="btn btn-o btn-warning" autocomplete="off" >20:00</label>
									<label id="time13" class="btn btn-o btn-warning" autocomplete="off" >21:00</label>
									<label id="time14" class="btn btn-o btn-warning" autocomplete="off" >22:00</label>
									<label id="time15" class="btn btn-o btn-warning" autocomplete="off" >23:00</label>
									<label id="time16" class="btn btn-o btn-warning" autocomplete="off" >24:00</label>	
								</div>       
                            </div>
                            
                      </div>
                </div>
				<!-- ???????????? ??? -->
				</br>
				<!--------- ???????????? ---------->
				<div class="row" style="margin-bottom: 30px;">
				<div class="col-xs-12 col-sm-6 col-md-4  formItem ">
					<!-- ????????? ?????? ?????? -->
					<h2 id="lot_reserve" class="osLight align-left">?????? ??????</h2>
					<div style="width: 100%; max-width: 400px;" class="form-group">
						<div class="col-sm-2 col-md-5 volume">
							<a href="#" class="btn btn-gray volume btn-round-left">
							<span class="fa fa-angle-left"></span></a>
								 <input type="text" class="form-control" value="1">
								 <a href="#" class="btn btn-gray volume btn-round-right">
								 <span class="fa fa-angle-right"></span></a>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				</div>
				<!------ ???????????? ??? ------>

				<!--------- ????????? ?????? ---------->
			
				<div class="row" style="margin-bottom: 30px;">
					<!-- ????????? ?????? ?????? -->
					<h2
						style="margin-bottom: 10px; padding: 8px; border-top: 2px solid #fc7937;"
						class="osLight align-left">????????? ??????</h2>

					<!-- ????????? ??? -->
					<div class="col-md-12 form-group">
						<label class="tit col-sm-2 col-md-3 ">????????? ???</label>
						<div class="col-sm-10">
							<input type="text" name="bl_name" class="form-control" value="">
						</div>
					</div>

					<!-- ????????? ??? -->
					<div class="col-md-12 form-group">
						<label class="tit col-sm-2 col-md-3	">?????????</label>
						<div class="col-sm-10">
							<input type="text" name="bl_tel" class="form-control" value="">
						</div>
					</div>

				</div>
				<!------ ??????????????? ??? ------>

				<!--------- ??????????????? ---------->
				<div class="row" style="margin-bottom: 30px;">
					<!-- ??????????????? ?????? -->
					<h2 style="padding: 8px; border-top: 2px solid #fc7937;"
						class="osLight align-left">????????? ??????</h2>
					<!-- ??????????????? -->
					<div class="list_wrap">
						<d1 class="flex_box">

						<dt class="tit col-md-3">???????????????</dt>
						<dd class="flex col-md-8">??????????????????????????????</dd>
						</d1>
					</div>

					<!--???????????? -->
					<div class="list_wrap">
						<d1 class="flex_box">

						<dt class="tit col-md-3">????????????</dt>
						<dd class="flex col-md-8">?????????</dd>
						</d1>
					</div>

					<!-- ????????? -->
					<div class="list_wrap">
						<d1 class="flex_box">

						<dt class="tit col-md-3">?????????</dt>
						<dd class="flex col-md-8">??????????????? ????????? ?????????</dd>
						</d1>
					</div>

					<!-- ???????????????-->
					<div class="list_wrap">
						<d1 class="flex_box">

						<dt class="tit col-md-3">???????????????</dt>
						<dd class="flex col-md-8">829-03-00659</dd>
						</d1>
					</div>
					<!-- ????????? -->
					<div class="list_wrap">
						<d1 class="flex_box">

						<dt class="tit col-md-3">?????????</dt>
						<dd class="flex col-md-8">050-7790-8221</dd>
						</d1>
					</div>
				</div>
				<!------ ??????????????? ??? ------>


			</div>
			<!-- ???????????? ?????? ??? -->

			<!-- ????????? -->
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">

					<!-- ????????? ?????? ?????? -->
					<h2 id="lot_reserve" class="osLight align-left">?????? ????????????</h2>
						
					<!-- ????????????-->

					<div id="pay" class="form-group col-xs-12 col-sm-12 col-md-12">
						<label class="tit col-sm-2 col-md-4">????????????</label>
						<div class="col-xs-10 col-sm-10 col-md-8">
							<p id="bl_date_p"></p>
							<input type="hidden" id="bl_date" name="bl_date"/>
							<input type="hidden" id="t_date" name="t_date"/>
						</div>
					</div>


					<!-- ????????????-->
					<div id="pay" class="form-group col-xs-12 col-sm-12 col-md-12">
						<label class="tit col-xs-2 col-sm-2 col-md-4">??????</label>
						
						<div class="col-xs-10 col-sm-10 col-md-8">
							<p id="bl_time_p"></p>
							<input type="hidden" id="bl_time" name="bl_time"/>
							<input type="hidden" id="t_time" name="t_time"/>
						</div>
					</div>

					
					<!-- ???????????? -->

					<div id="pay1" class="form-group col-xs-12 col-sm-12 col-md-12">
						<label class="tit col-sm-2 col-md-4">????????????</label>
						<div class="col-xs-10 col-sm-10 col-md-8">
							<p id="bl_people_p"></p>
							<input type="hidden" id="bl_people" name="bl_people"/>
						</div>
					</div>


					<!-- ????????? -->

					<div id="pay2" class="form-group col-xs-12 col-sm-12 col-md-12">
						<label class="tit col-sm-2 col-md-4">??? ??????</label>
						<div class="col-xs-10 col-sm-10 col-md-8">
							<p id="bl_pay_p"></p>
							<input type="hidden" id="bl_pay" name="bl_pay"/>
						</div>
					</div>
					<input type="hidden" id="pri_num" name="pri_num" value="${list.pri_num}"/>
					<!-- ???????????? ?????? -->

					<div style="text-align: center;">
						<div style="display: inline-block;">
							<button id="result" class="btn btn-o btn-green">????????????</button>
						</div>
					</div>

					<!-- ????????? ?????? ?????? ??? -->
			</div>
			<!-- ????????? ??? -->
		</form>
		<!-- form ??? -->
		</div>
		<!-- End of row -->
	</div>
	<!-- End of home-wrapper -->
</div>
<!-- End of home-content -->
