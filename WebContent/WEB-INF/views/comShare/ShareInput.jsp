<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- 추가CSS -->
<link href="/Yolo/css_yolo/cssView/comShare/ShareInput.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/comShare/datetimePicker.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/comShare/ShareEdit.css" rel="stylesheet">
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

<script src="/Yolo/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#share_check_ok").click(function(){
		
		
		if($("#sl_title").val() ==""){
		    alert("글제목을 입력해주세요.");
		    return false;
		}
		if($("#sl_content").val() ==""){
		    alert("글내용을 입력해주세요.");
		    return false;
		}
		if( $("input:radio[name=bl_id]:checked").length < 1){
			alert("예약공간을 선택해주세요");
			return false;
		}

		
		
//		if($("input:radio[name=b_id]").val() == "0"){
//			alert($("input[name=b_id]:checked").val());
//			return false;
//		}
		$("#shareInputForm1").submit();
	});
	
	$('#alltime label').click(function(evt){
		evt.preventDefault();
		evt.stopImmediatePropagation();
		$(this).toggleClass("active");
		var label = $("#alltime").find('label[class*=active]');
		var times = '';
		for(var i = 0; i < label.length ; i++){
			if(i==label.length-1){
				times += $(label[i]).text()
			}else{
				times += $(label[i]).text()+"/"
			}
		}
		
		$('#sl_time').val('');
		$('#t_time').val('');
		$('#sl_time').val(times);
		$('#t_time').val(times);
		
	});	
});

</script>
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
							<form id="shareInputForm1" name="shareInputForm1"  method="post" action="ShareInputOk.share" class="form-horizontal" role="form" >
								<!-- 글 제목 입력 -->
								<div class="form-group">
									<label class="col-sm-2 control-label">글 제목</label>
									<div class="col-sm-9">
										<input name="sl_title" id="sl_title" class="form-control input-sm" type="text">
									</div>
								</div>
								<!-- 예약공간 선택 -->
								<div class="form-group">
									<label class="col-sm-2 control-label">예약공간 선택</label>
									<div class="col-sm-9 panel panel-default dd">
										<a href="#ddPanel"
											class="btn btn-o btn-default btn-block btn-lg align-left"
											data-toggle="collapse"><span
											class="fa fa-angle-down pull-right"></span></a>
										<div id="ddPanel" class="panel-collapse collapse">
											<div class="panel-body">
												<!-- 내가 예약한 공간 리스트 -->
												<div class="table-overflow">
													<table class="table" id="inboxTable">
														<tbody class="table">
															<c:choose>
																<c:when test="${fn:length(list) eq 0 }">
																	<tr>
																		<td>예약된 공간이 없습니다.</td>
																	</tr>											
																</c:when>
															<c:otherwise>
																<c:forEach items="${list}" var="a">
																	<tr>
																		<td><div class="radio custom-radio">
																		<label><input type="radio" name="bl_id" value="${a.bl_id }"><span
																			class="fa fa-circle"></span></label>
																			</div></td>
																		<td><img alt="" src="/Yolo/images_yolo/lot/${a.priimg_name}"
																				width="150px;" height="100px;"></td>
																		<td>${a.pri_title}</td>
																		<td>${a.pri_addr}</td>
																		<td>${a.bl_date}</td>
																	</tr>
																</c:forEach>
															</c:otherwise>
															</c:choose>
														</tbody>
													</table>
												</div>
												<!-- 내가 예약한 공간 리스트 END-->
											</div>
										</div>
									</div>
								</div>
								<!-- 시간 선택 -->
								<div class="form-group">
									<label class="col-sm-2 control-label time">공간사용시간</label>
									<div class="col-sm-9">
										<div class="item active">
											<hr>
											<!-- 시간선택 -->
											<div id="propWidget-3" class="carousel slide propWidget-3"
												data-ride="carousel">
												<div class="carousel-inner">
													<div class="item active">
														<hr>
														<div class="btn-group" id="alltime" data-toggle="buttons">
															<c:forEach var='sharetime' begin = '1' end ='16' step ='1'>
																<label id="time${sharetime}" class="btn btn-o btn-warning" for="${sharetime}" autocomplete="off">${sharetime+8}:00</label>
															
															</c:forEach>
															
														</div>
														<hr>
													</div>

												</div>
											</div>
											<!-- 시간보기 끝 -->
											<hr>
										</div>


									</div>
								</div>

								<!-- 예약날짜 -->
								<div id="pay" class="form-group col-xs-12 col-sm-12 col-md-12">
										<input type="hidden" id="sl_time" name="sl_time" /> 
										<input type="hidden" id="t_time" name="t_time" />
								</div>
								<!-- 글 내용 입력 -->
								<div class="form-group">
									<label class="col-sm-2 control-label">글 내용</label>
									<div class="col-sm-9">
										<textarea name="sl_content" id="sl_content" class="form-control" rows="15"
											placeholder="쉐어링 날짜/시간 및 상세 내용 입력"></textarea>
									</div>
								</div>
								<!-- 쉐어링 등록하기 버튼 -->
								<div class="col-md-12">
									<div class="col-md-5"></div>
									<button id="share_check_ok" class="col-md-2 btn btn-round btn-o btn-green">쉐어링
										등록하기</button>
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

<!-- 추가JS -->
<script src="/Yolo/js_yolo/comShare/datetimePicker.js"></script>

		