/**
 * 
 */

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