<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게스트 인원 수 </title>

<style>

#guest .box{
	width:350px;
	height:250px;
	border-radius: 20px;
	border:1px solid #ccc;
	background-color:#fff;
}

#guest .g_top_box{
	text-align: center;
	padding : 16px 0;
}

#guest .g_type{
	width: 85%;
	margin:10px auto;
	overflow: hidden;
	font-size: 14px;
}

#guest .g_type_tit{
	display: inline-block;
	width: 50%;
	float: left;
	text-align: left;
	color:#484848;
	height: 35px;
	line-height: 35px;
}

#guest .g_type_con{
	text-align:right;
	display: inline-block;
	width: 50%;
	color:#484848;
}

#guest .g_top_box input[type=button]{
	border:0;
	background-color:#fff;
	border-radius: 5px;
	border:1px solid #ccc;
	width: 35px;
	height: 35px;
	font-size: 20px;
}

#guest .g_type_num{
	display:inline-block;
	min-width: 30px;
	text-align: center;
}

#guest .g_bottom_box{
 	text-align: center;
 	padding:10px 0;
}

#guest .btns_box{
	width: 85%;
	margin: 0 auto;
	overflow: hidden;
}

#guest .btn_left{
	display:inline-block;
	float: left;
	width: 50%;
	text-align: left;
}

#guest .btn_right{
	display: inline-block;
	text-align: right;
	width: 50%;
}

#guest .g_bottom_box input[type=button]{
	background-color:salmon;
	border:0;
	border-radius: 5px;
	width: 70px;
	height: 35px;
	color: #fff;
	font-weight: bold;
}

</style>
</head>
<body>
<div id = "guest">
	<div class = "box">
		<div class = "g_top_box">
			<div class = "g_type">
				<div class = "g_type_tit">성인</div>
				<div class = "g_type_con">
					<input type = "button" value = "-" id = "adult_minus" onclick = "gTypeMinus(1);"/>
					<span class = "g_type_num" id = "adult_num">0</span>
					<input type = "button" value = "+" id = "adult_plus" onclick = "gTypePlus(1);"/>
				</div><!-- g_type_con close -->
			</div><!-- g_type close -->
			
			<div class = "g_type">
				<div class = "g_type_tit">어린이</div>
				<div class = "g_type_con">
					<input type = "button" value = "-" id = "child_minus" onclick = "gTypeMinus(2);"/>
					<span class = "g_type_num" id = "child_num">0</span>
					<input type = "button" value = "+" id = "child_plus" onclick = "gTypePlus(2);"/>
				</div><!-- g_type_con close -->
			</div><!-- g_type close -->
			
			<div class = "g_type">
				<div class = "g_type_tit">유아</div>
				<div class = "g_type_con">
					<input type = "button" value = "-" id = "infant_minus" onclick = "gTypeMinus(3);"/>
					<span class = "g_type_num" id = "infant_num">0</span>
					<input type = "button" value = "+" id = "infant_plus" onclick = "gTypePlus(3);"/>
				</div><!-- g_type_con close -->
			</div><!-- g_type close -->	
		</div><!-- g_top_box close -->
		
		<div class = "g_bottom_box">
			<div class = "btns_box">
				<div class = "btn_left">
					<input type = "button" id = "g_type_cancel" value = "취소" />
				</div>
				
				<div class = "btn_right">
					<input type = "button" id = "g_type_save" value = "저장" />
				</div>
			</div><!-- btns_box close -->
		</div>	<!-- g_bottom_box close -->
	</div><!-- box close -->
</div><!-- guest close -->

<script>
	const guest = document.getElementById("guest");
		
	const adultNum = document.getElementById("adult_num");
	const childNum = document.getElementById("child_num");
	const infantNum = document.getElementById("infant_num");
	
	const gTypeCancel = document.getElementById("g_type_cancel");
	const gTypeSave = document.getElementById("g_type_save");
	
	//플러스 버튼 클릭 시
	function gTypePlus(num){
		if(num == 1){
			adultNum.innerHTML = Number(adultNum.innerText) + 1;			
		}else if(num == 2){
			childNum.innerHTML = Number(childNum.innerText) + 1;
		}else{
			infantNum.innerHTML = Number(infantNum.innerText) + 1;
		}
	}
	
	//마이너스 버튼 클릭 시
	function gTypeMinus(num){
		if(num == 1){
			if(adultNum.innerHTML != 0){
				adultNum.innerHTML = Number(adultNum.innerText) - 1;				
			}
		}else if(num == 2){
			if(childNum.innerHTML != 0){
				childNum.innerHTML = Number(childNum.innerText) - 1;				
			}
		}else{
			if(infantNum.innerHTML != 0){
				infantNum.innerHTML = Number(infantNum.innerText) - 1;				
			}
		}
	}
	
	
</script>
</body>
</html>