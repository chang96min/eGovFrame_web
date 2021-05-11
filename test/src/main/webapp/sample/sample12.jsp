<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>ajax</title>
</head>
<body>
	<div id="contentsArea">
	
	</div>
	
	<div>
		<input type="button" id="btn1" value="1번 페이지" />
		<input type="button" id="btn2" value="2번 페이지" />
	</div>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
$('#btn1').bind('click', function(){
	fn_getPage('./sample12_1.jsp');
});
$('#btn2').bind('click', function(){
	fn_getPage('./sample12_2.jsp');
});

function fn_getPage(url){
	$.ajax({
		url : url,
		type : 'post',				//get, post
		data : {test : '1', test2 : '2'},
		dataType : 'html',				//html, json, xml
		beforeSend : function(){
			//로딩............show
		},
		success : function(data){
			$('#contentsArea').html(data);
		},
		error : function(){
			//alert('오류가 발생하였습니다.');
		},
		complete : function(){
			//........hide
		}
	});
}
</script>