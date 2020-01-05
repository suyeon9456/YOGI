<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집 유형</title>
<style>
#type .box{
	width:350px;
	height:250px;
	border-radius: 20px;
	border:1px solid #ccc;
	background-color:#fff;
	color:#484848;
	font-size: 14px;
}
#type .t_top_box{
	text-align: center;
	padding : 16px 0;
}
#type .t_type{
	width: 85%;
	margin:10px auto;
	overflow: hidden;
}
#type .t_top_box_txt{
	width: 80%;
	float: left;
}
#type .t_type_tit{
	text-align: left;
	height: 35px;
	line-height: 35px;
	font-size: 14px;
}
#type .t_type_ex{
	text-align: left;
	color:#717171;	
	font-size: 13px;
}
#type .t_type_con{
	position:relative;
	text-align:right;
	display: inline-block;
	width: 20%;
	padding: 10px 0;
}
#type input[type=checkbox]{
	display: none;
}
#type input[type=checkbox] + label{
	display:inline-block;
	background-color:#fff;
	border-radius: 5px;
	border:1px solid #ccc;
	width: 35px;
	height: 35px;
	cursor: pointer;
}
#type .t_bottom_box{
 	text-align: center;
 	padding:10px 0;
}
#type .btns_box{
	width: 85%;
	margin: 0 auto;
	overflow: hidden;
}
#type .btn_left{
	display:inline-block;
	float: left;
	width: 50%;
	text-align: left;
}
#type .btn_right{
	display: inline-block;
	text-align: right;
	width: 50%;
}
#type .t_bottom_box input[type=button]{
	background-color:salmon;
	border:0;
	border-radius: 5px;
	width: 70px;
	height: 35px;
	color: #fff;
	font-weight: bold;
}
#type .t_type_con img{
	position: absolute;
	top:13px;
	left:25px;
}
</style>
</head>
<body>
<div id = "type">
	<div class = "box">
		<div class = "t_top_box">
			<div class = "t_type">
				<div class = "t_top_box_txt">
					<div class = "t_type_tit">집전체</div>
					<div class = "t_type_ex">집전체를 사용합니다.</div>
				</div><!-- t_top_box_txt close -->
				
				<div class = "t_type_con">
					<c:choose>
						<c:when test="${param.hType eq '집전체' || param.hType eq '집전체 ,개인실'}">
							<input type = "checkbox" name = "chkHType" onclick = "checkClick(1)" id = "house_chk" value = "house" checked="checked"/>
							<label for = "house_chk"><img src="../img/icon/check.png" id = "house_chk_img" style = "display: inline-block;" for = "house_chk"/></label>
						</c:when>
						<c:otherwise>
							<input type = "checkbox" name = "chkHType" onclick = "checkClick(1)" id = "house_chk" value = "house"/>
							<label for = "house_chk"><img src="../img/icon/check.png" id = "house_chk_img" style = "display: none;" for = "house_chk"/></label>						
						</c:otherwise>
					</c:choose>
				</div><!-- t_type_con close -->
			</div><!-- t_type close -->
			
			<div class = "t_type">
				<div class = "t_top_box_txt">
					<div class = "t_type_tit">개인실</div>
					<div class = "t_type_ex">집의 일부분이나 개인방을 사용합니다.</div>
				</div><!-- t_top_box_txt close -->
				
				<div class = "t_type_con">
					<c:choose>
						<c:when test="${param.hType eq '개인실' || param.hType eq '집전체 ,개인실'}">
							<input type = "checkbox" name = "chkHType" onclick = "checkClick(2)" id = "room_chk" value = "room" checked="checked"/>
							<label for = "room_chk"><img src="../img/icon/check.png" id = "room_chk_img" style = "display: inline-block;"/></label>
						</c:when>
						<c:otherwise>
							<input type = "checkbox" name = "chkHType" onclick = "checkClick(2)" id = "room_chk" value = "room"/>
							<label for = "room_chk"><img src="../img/icon/check.png" id = "room_chk_img" style = "display: none;"/></label>
						</c:otherwise>
					</c:choose>
				</div><!-- t_type_con close -->
			</div><!-- t_type close -->
			
		</div><!-- t_top_box close -->
		
		<div class = "t_bottom_box">
			<div class = "btns_box">
				<div class = "btn_left">
					<input type = "button" id = "t_type_cancel" value = "취소" />
				</div>
				
				<div class = "btn_right">
					<input type = "button" id = "t_type_save" value = "저장" />
				</div>
			</div><!-- btns_box close -->
		</div><!-- g_top_box close -->
	</div><!-- box -->
</div><!-- type -->

<script>
	 const type = document.getElementById("type");
	
	 const houseChk = document.getElementById("house_chk");
	 const roomChk = document.getElementById("room_chk");
	 
	 const chkHType = document.getElementsByName("chkHType");
	 
	 const tTypeCancel = document.getElementById("t_type_cancel");
	 const tTypeSave = document.getElementById("t_type_save"); 
	 
	 function checkClick(num){
		 if(num == 1){
			 if(chkHType[0].checked == true){
				 document.getElementById("house_chk_img").style.display = "inline-block";				 
			 }else{
				 document.getElementById("house_chk_img").style.display = "none";
			 }
		 }else{
			 if(chkHType[1].checked == true){
			 	 document.getElementById("room_chk_img").style.display = "inline-block";				 
			 }else{
				 document.getElementById("room_chk_img").style.display = "none";
			 }
		 }
	 }
</script>
</body>
</html>
