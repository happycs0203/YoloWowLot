<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
  alert("${message}");
  
  if(${result} > 0 ){
	  location.href="/Yolo/common/main.main";
  }else{
	  history.back();
  }
</script>
