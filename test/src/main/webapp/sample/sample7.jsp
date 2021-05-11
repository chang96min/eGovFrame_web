<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>이벤트</title>
</head>
<body>
	<div style ="width:100px; height:100px; background-color:black;" id="contentsArea">
		
	</div>
	
	<input type="button" class="btn" value="yellow" w="200px" h="300px" />
	<input type="button" class="btn" value="red"  w="150px" h="200px" />
	<input type="button" class="btn" value="blue"  w="500px" h="1000px"/>
	
	<div>
		<select id ='select' name='select'>
			<option value=''>====사이트를 선택하세요=========</option>
			<option value='http://www.naver.com'>네이버</option>
			<option value='http://www.daum.net'>다음</option>
			<option value='http://www.google.com'>구글</option>
		</select>
	</div>

	<div style ="width:100px; height:100px; background-color:black;" id="contentsArea2">
		
	</div>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
$("#contentsArea2").bind("mouseover",function(){
	$("#contentsArea2").css("background-color", "red");
});
$("#contentsArea2").bind("mouseleave",function(){
	$("#contentsArea2").css("background-color", "blue");
});

$('#select').bind('change',function(){
	alert($(this).val());
	location.href=$(this).val();
});





</script>

