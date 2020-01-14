<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙박 날짜 등록</title>
<style>
#calendar .c_bottom_box{
 	text-align: center;
 	padding:10px 0;
}
#calendar .btns_box{
	width: 85%;
	margin: 0 auto;
	overflow: hidden;
}
#calendar .btn_left{
	display:inline-block;
	float: left;
	width: 50%;
	text-align: left;
}
#calendar .btn_right{
	display: inline-block;
	text-align: right;
	width: 50%;
}
#calendar .c_bottom_box input[type=button]{
	background-color:salmon;
	border:0;
	border-radius: 5px;
	width: 70px;
	height: 35px;
	color: #fff;
	font-weight: bold;
}
#calendar .c_type_con img{
	position: absolute;
	top:13px;
	left:25px;
}
</style>
</head>
<body>
<div id = "calendar">
	<div class = "box">
		<div class = "c_top_box">
			
		</div>
	
		<div class = "c_bottom_box">
			<div class = "btns_box">
				<div class = "btn_left">
					<input type = "button" id = "c_type_cancel" value = "취소" />
				</div>
				
				<div class = "btn_right">
					<input type = "button" id = "c_type_save" value = "저장" />
				</div>
			</div><!-- btns_box close -->
		</div><!-- c_bottom_box close -->
	</div>
</div>
<script>
const cal = document.getElementById("calendar");


</script>
</body>
</html>