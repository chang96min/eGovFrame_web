<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>제어문(if, for, while, switch case, do while)</title>
</head>
<body>

</body>
</html>
<script>

function fn_sample1(){
	var money=prompt("자산을 알려주세요")
	if(money>5000){
		alert("부자시네요");
	}else if(money>3000){
		alert("좀 있으시네요");
	}else{
	 	alert("음...");
	}
}
//fn_sample1();
//--------------------------------------------------------------------------------




function fn_sample2(){
	for(var i=1; i<=10; i++){
		document.write(i+"<br/>");
	}
}
//fn_sample2();
//--------------------------------------------------------------------------------




function fn_sample3(){
	for(var i=1; i<=10; i++){
		if(i==4){
			continue;
		}
		
		if(i == 8){
			break;
		}
		document.write(i+"<br/>");
	}
}
//fn_sample3();
//--------------------------------------------------------------------------------




/*
 * 예제)구구단을 출력해보세요(2단~9단까지), 각 단 사이에는 한 줄씩 비워주세요
 */
 function fn_sample4(){
	 for(var i = 2; i < 10; i++){
		 for(l = 1; l < 10; l++){
			 
			 document.write(i + " X " + l + " = " +(i*l) + "<br/>")
			 if(l == 9){
				 document.write("<br/>")
			 }
		 }
	 }
 }
 //fn_sample4();
//--------------------------------------------------------------------------------




/*
 * 예제)prompt를 활용해 입력받은 단수의 구구단을 출력해주세요.
 */
 function fn_sample5(){
	 var first = prompt("첫 번째 숫자를 입력해주세요");
	 var second = prompt("두 번째 숫자를 입력해주세요");
	 alert(first + " X " + second + " = " + (first*second));
	 fn_sample5();
	 }
 }
 
// fn_sample5();
 //--------------------------------------------------------------------------------
 
 
 
 
 
  

 //예제) '네이버, 다음, 구글 중 즐겨쓰는 포털싸이트는?' prompt에서 값을 입력받아 해당되는 사이트로 이동시켜주세요.
		 

  
 
function fn_sample7(){
	 var msg = prompt("네이버, 다음, 구글 중 즐겨쓰는 포털은?");
	 switch(msg){
	 case "네이버" :
			location.href = "http://naver.com";
			break;
	 case "다음" :
			location.href = "http://daum.net";
			break;
	 case "구글" :
			location.href = "http://google.com";
			break;
	default :
		alert("잘못된 입력입니다.")
	 }
 } 
 
// fn_sample7();

 
 
 
</script>