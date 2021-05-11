<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>변수, 함수 선언</title>
</head>
<body>

</body>
</html>
<script>
var string ="나는 문자 열입니다."


document.write(string+"<br/>");

var arr1 = new Array("1", "2", "3");

var arr2 = new Array();
arr2[0] = "1";
arr2[1] = "2";
arr2[2] = "3";


document.write(arr1+"<br/>");

document.write(arr2+"<br/>");

console.log(arr1);

function fn_message(msg1, msg2){
	document.write("<br/>")
	document.write(msg1);
	
	document.write("<br/>")
	document.write(msg2);
	

}

fn_message("메세지1입니다.", "메세지2입니다");
</script>