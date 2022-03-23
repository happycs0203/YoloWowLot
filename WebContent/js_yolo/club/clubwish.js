
$(function(){
	//찜 이벤트
	$("#bookmarkC").click(function(){
		if( $("#bookmarkC").attr('class') == "fa fa-heart-o"){
			$.ajax({
				type: "POST",
				url: "/Yolo/club/bookmark.club",
				data:{"bm_selnum": $("#c_num").val() ,"bm_category":'모임'},
				dataType : "text",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",			
				success : function(data){
					//채워진 하트로 이미지 변경
					$("#bookmarkC").attr('class','fa fa-heart');
//				alert("c_num:"+ $("#c_num").val());
				}, 
				error : function(request,status, error){
	    			alert("error:"+ error);
	    		}
			});			
		}else if( $("#bookmarkC").attr('class') == "fa fa-heart" ){
			$.ajax({
				type: "POST",
				url: "/Yolo/club/bookmarkdelete.club",
				data:{"bm_selnum": $("#c_num").val()},
				dataType : "text",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",			
				success : function(data){
					//빈 하트로 이미지 변경
					$("#bookmarkC").attr('class','fa fa-heart-o');
				}, 
				error : function(request,status, error){
	    			alert("error:"+ error);
	    		}
			});					
		}

	});
	
});
