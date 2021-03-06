<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>문제1</title>
</head>
<body>
	<select id="select1">
		<option value="">시를 선택하세요.</option>
	</select>
	
	<select id="select2">
		<option value="">구를 선택하세요.</option>
	</select>
	<input type="button" id="btn" value="확인" />

</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
/*
 * 문제) 아래 데이터를 활용하여 페이지가 로딩되면 select1에는 시데이터를 option으로 선택할 수 있게 적용
 * select1의 데이터가 변경되면 select2도 자동으로 해당시의 데이터만 보여지도록 적용
 * 확인 버튼 클릭시 '당신의 주소는 대구 북구 입니다.' 형식으로 경고창(alert) 출력(선택된 데이터가 반영되도록)
 * 시, 구를 선택하지 않고 확인버튼 클릭시 '주소를 선택해주세요' 경고창(alert) 출력
 */
 
//시 데이터
var arr1 = new Array("서울", "대구", "대전", "부산", "인천");
 
 //구 데이터
var arr2 = new Array(
	new Array("서울구1", "서울구2", "서울구3", "서울구4", "서울구5"),
	new Array("동구", "서구", "남구", "북구", "중구", "수성구", "달서구"),
	new Array("대전구1", "대전구2", "대전구3"),
	new Array("부산구1", "부산구2", "부산구3", "부산구4"),
	new Array("인천구1", "인천구2")
);
 for(i=0; i<arr1.length; i++){
	$('#select1').append("<option>"+arr1[i]+"</option>");
 }
 
 $('#select1').bind('change', function(){
	 if($('#select1 option:selected').val() == '서울'){
		 $('#select2 option').remove();
		 for(j=0; j<arr2[0].length; j++){
		 	$('#select2').append("<option>"+arr2[0][j]+"</option>");
		 }}else if ($('#select1 option:selected').val() == '대구'){
			 $('#select2 option').remove();
			 for(j=0; j<arr2[1].length; j++){
				 	$('#select2').append("<option>"+arr2[1][j]+"</option>");
		 }}else if ($('#select1 option:selected').val() == '대전'){
			 $('#select2 option').remove();
			 for(j=0; j<arr2[2].length; j++){
				 	$('#select2').append("<option>"+arr2[2][j]+"</option>");
		 }}else if ($('#select1 option:selected').val() == '부산'){
			 $('#select2 option').remove();
			 for(j=0; j<arr2[3].length; j++){
				 	$('#select2').append("<option>"+arr2[3][j]+"</option>");
		 }}else if ($('#select1 option:selected').val() == '인천'){
			 $('#select2 option').remove();
			 for(j=0; j<arr2[4].length; j++){
				 	$('#select2').append("<option>"+arr2[4][j]+"</option>");
		 }
	 };
 });
 
 
	 
$('#btn').bind('click',function(){
	if($('#select1 option:selected').val() =='' && $('#select2 option:selected').val() ==''){
		alert("주소를 선택해주세요");
	}else{
		alert('당신의 주소는 '+$('#select1 option:selected').val()+' '+$('#select2 option:selected').val()+' 입니다.');
	}
});

</script>