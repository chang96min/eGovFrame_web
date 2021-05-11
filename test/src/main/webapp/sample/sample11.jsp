<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>animation</title>
</head>
<body>
	<div style="width:1000px;height:500px;border:1px solid;" id="contentsArea">
		<div id="div1" style="width:100px;height:100px;background-color:red;position:absolute;left:50px;top:50px;">
		</div>
	</div>
	<input type="button" id="btn1" value="시작" />
	<textarea id="xy" style="width:1000px;height:300px;"></textarea>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
/*
 * contentsArea에 마우스를 찍으면 textarea에 좌표가 입력되고(여러개 찍을 수 있도록), 시작 버튼을 누르면 좌표를 누른 위치로 순차적으로 이동 후 역순으로 제자리로 돌아오게 구현하세요. 
 */
 
var arr_x = new Array();
var arr_y = new Array();
var arr_cnt = 0;
$('#contentsArea').bind('click', function(event){
	var x = event.pageX;
	var y = event.pageY;
	
	arr_x[arr_cnt] = x;
	arr_y[arr_cnt] = y;
	arr_cnt++;
	
	$('#xy').val($('#xy').val() + ("x = " + x + ", y = " + y + "\n"));
});

$('#btn1').bind('click', function(){
	for(var i = arr_cnt - 2; i >= 0; i--){
		arr_x[arr_cnt] = arr_x[i];
		arr_y[arr_cnt] = arr_y[i];
		arr_cnt++;
	}
	
	arr_x[arr_cnt] = 50;
	arr_y[arr_cnt] = 50;
	arr_cnt++;
	
	console.log(arr_x);
	
	fn_animate();
});

var pointer = 0;
function fn_animate(){
	$('#div1').animate({left : arr_x[pointer] + 'px', top : arr_y[pointer] + 'px'}, 300, 'linear', function(){
		pointer++;
		if(pointer <= arr_cnt - 1){
			fn_animate();	
		}
		
	});
}
</script>