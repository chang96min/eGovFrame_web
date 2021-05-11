<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>경고문, 페이지 이동</title>
</head>
<body>

</body>
</html>
<script>

function fn_message(msg){
	alert(msg);
}

//fn_message("안녕하세요");

function fn_message2(msg1, msg2){
	var result = confirm("처음오신건가요?");
	
	if(result){
		alert(msg1);
	}else{
		alert(msg2);
	}
}

//fn_message2("처음뵙겠습니다","또 보네요^^");

function fn_message3(){
	var msg = prompt("이름을 입력해주세요");
	if(msg){
	alert("당신의 이름은 "+ msg +" 입니다.");
	}
}

//fn_message3();

function fn_link(url){
	location.href = url;
}
//fn_link("http://www.naver.com");


/*
 * 예제) prompt에서 '이동하실 url을 입력하세요.' 메세지와 함께 url을 입력받아 예를 클릭시 url로 이동하는 스크립트를 작성하시오.
 */

 function fn_sample(){
	 var msg = prompt("주소를 입력해 주세요");
	 if(msg){
		 var result = confirm("해당 주소로 이동할까요?");
		 if(result){
			 location.href = msg;
		 }else{
			 alert("알겠습니다...")
			 fn_sample();
		 }
	 }
 }

 //fn_sample();
</script>