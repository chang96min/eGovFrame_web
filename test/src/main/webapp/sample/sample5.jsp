<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>이벤트</title>
</head>
<body>
	<div>
		<input type = "text" id = "text" class = "cls_text" name = "text" placeholder='입력란' onkeypress=""/>
		<input type = "text" id = "text2" class = "cls_text" name = "text2" placeholder='입력란' onkeypress="fn_press();"/>
		<input type = "text" id = "text2" class = "cls_text" name = "text3" placeholder='입력란' onkeypress="fn_press();"/>
		<input type = "button" value = "입력체크" onclick ="fn_check();"/>
		<input type = "button" value = "갑출력" onclick ="fn_print();"/>
	</div>
	<div id="contentsArea">
		콘텐츠영역입니다.
	</div>
	<input type = "button" value = "변경" onclick ="fn_change();"/>
	<input type = "button" value = "추가" onclick ="fn_add();"/>
</body>
</html>


<script>

function fn_check(){
	//alert($("#text").val());
	//$(".cls_text").val("클래스테스트");
	//$("#text").val("!!!!!!!!!!!!!!!!!!!");
	
	//alert($("#text").attr("type"));
	$("#text").attr("type","button");
	$("#text").val("입력체크2")
	$("#text").attr("onclick", "fn_check2();");
}

function fn_check2(){
	alert("버튼으로 변경되었습니다.")
}
function fn_change(){
	$("#contentsArea").html("<a href=http://www.naver.com>네이버</a>")
}
function fn_add(){
	$("#contentsArea").append("추가")
}
function fn_print(){
	var cnt = 0;
	$(".cls_text").each(function(){
		if($(this).attr("id") == "text3"){
			alert("바뀜");
			$(this).attr("id", "text4");
			}
		});
	
}

fn_check();
</script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>