
$(function(){
	//후기 작성 
	$("#Reviewbtn").click(function(){
		alert( $("#Repri_num").val() );
			$.ajax({
				type: "POST",
				url : "/Yolo/lot/LotViewRe.lot",
				data : { "ps_star" : $("input:radio[name=ps_star]:checked").val(), "pri_num": $("#Repri_num").val(), "ps_content" : $("#ps_content").val() },
				dataType : "text",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success : function(data){
					//받아온 데이터 json으로 바꿔줌
					var r = jQuery.parseJSON(data);
					var divl = $('#ReviewList');
					divl.append(' <div class="row commentContent" style="margin-bottom: 7px; padding:10px;">'+
							'<div class="commentTitle">'+ r.u_id +
							'</div><div class="commentBody col-md-12>'+
							'<div id="writereview" class="col-md-9" >'+ r.ps_content +
							'</div> <div class="col-md-3"><div class="stars">');
					for( var i = 5; i >= 1; i--){
						if( i >= r.ps_star ){
							divl.append('<span class="fa fa-star text-yellow"></span></div>');
						
						}else{
							divl.append('<span class="fa fa-star-o text-yellow"></span></div>');
						
						}
					}
					divl.append('</div></div>');
					divl.append('<div class="regdate">'+ r.ps_regdate +'</div>');
					divl.append('</div>');
	
					$("#ps_content").val("");
				}, 
				error : function(request,status, error){
	    			alert("error:"+ error);
	    		}
			});
	});
	
	//찜 이벤트
	$("#bookmark").click(function(){
		if( $("#bookmark").attr('class') == "fa fa-heart-o"){
			$.ajax({
				type: "POST",
				url: "/Yolo/lot/bookmark.lot",
				data:{"bm_selnum": $("#Repri_num").val() ,"bm_category":'공간'},
				dataType : "text",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",			
				success : function(data){
					//채워진 하트로 이미지 변경
					$("#bookmark").attr('class','fa fa-heart');
				}, 
				error : function(request,status, error){
	    			alert("error:"+ error);
	    		}
			});			
		}else if( $("#bookmark").attr('class') == "fa fa-heart" ){
			$.ajax({
				type: "POST",
				url: "/Yolo/lot/bookmarkdelete.lot",
				data:{"bm_selnum": $("#Repri_num").val()},
				dataType : "text",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",			
				success : function(data){
					//빈 하트로 이미지 변경
					$("#bookmark").attr('class','fa fa-heart-o');
				}, 
				error : function(request,status, error){
	    			alert("error:"+ error);
	    		}
			});					
		}

	});
	
});
