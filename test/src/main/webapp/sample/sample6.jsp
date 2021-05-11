<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>이벤트</title>
</head>
<body>
	<div style ="width:100px; height:100px; background-color:black;" id="contentsArea">
		
	</div>
	
	<input type="button" class="btn" value="yellow" w="200px" h="300px" onclick="fn_colorChange($(this))"/>
	<input type="button" class="btn" value="red"  w="150px" h="200px" onclick="fn_colorChange($(this))"/>
	<input type="button" class="btn" value="blue"  w="500px" h="1000px" onclick="fn_colorChange($(this))"/>
</body>
</html>


<script>
	$(document).ready(function(){
		
	});

	function fn_colorChange(obj){
		$("#contentsArea").css("background-color", obj.val());
		$("#contentsArea").css("width", obj.attr("w"));
		$("#contentsArea").css("height",obj.attr("h"));
	}





</script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>