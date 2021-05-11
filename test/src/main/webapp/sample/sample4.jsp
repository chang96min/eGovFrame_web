<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>제어문(if, for, while, switch case, do while)</title>
</head>
<body>
	<div>
		<input type = "text" id = "text" name = "text" placeholder='입력란' onkeypress="fn_press();"/>
		<input type = "button" value = "입력체크" onclick ="fn_check();"/>
	</div>
</body>
</html>
<script>

function fn_check(){
	
	if(document.getElementById('text').value ==""){
		
		alert("입력해주세요")
		
	}else{
		
		alert("저장되었습니다.")
		
	}
}

function fn_press(){
	
	alert(document.getElementById('text').value);
	
}

</script>