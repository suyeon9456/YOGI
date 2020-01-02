<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>필터 추가하기</title>
<style>
#filter_plus{
 	display: none; 
	position: fixed;
	z-index: 2000;
	top: 0px;
	right: 0px;
	bottom: 0px;
	left: 0px;
	background: rgba(0, 0, 0, 0.75);
	font-family: var(--font-button-font-family, Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif);
}

#filter_plus .box_table{
	width: 100%;
    height: 100%;
	display: table;
}

#filter_plus .box{
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	font-size: 14px;
	color:#484848;
}

#filter_plus .f_top_box{
	width:780px;
	height:65px;
	border-radius: 15px 15px 0 0;
	background-color:#fff;
	margin:0 auto;
	box-sizing: border-box;
	padding : 16px 0;
	border-bottom: 1px solid #eee;
}

#filter_plus .top_tit{
	display:inline-block;
	width: 88%;
	text-align: left;
}

#filter_plus .top_btn{
	display:inline-block;
	width: 10%;
	text-align: right;
}

#filter_plus .f_top_box input[type=button]{
	background-color:#fff;
	border:0;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 35px;
	height: 35px;
	font-weight: bold;
	margin:0 auto;
}

#filter_plus .f_top_box h2{
	display: inline-block;
	height: 35px;
	line-height:35px;
	margin:0 auto;
	text-align: center;
}

#filter_plus .f_center_box{
	width: 780px;
	height: 550px;
	margin:0 auto;
	background-color: #fff;
	overflow-y: scroll; 
	padding: 10px 45px;
	box-sizing: border-box;
}

#filter_plus .f_center_box h2 ,#filter_plus .f_center_box h3{
	text-align: left;
}

#filter_plus .f_type{
	width: 95%;
	margin:10px auto;
	overflow: hidden;
	color:#484848;
}

#filter_plus .f_type_tit{
	display: inline-block;
	width: 50%;
	float: left;
	text-align: left;
	height: 35px;
	line-height: 35px;
}

#filter_plus .f_type_con{
	text-align:right;
	display: inline-block;
	width: 50%;
	height: 42px;
}

#filter_plus .f_center_box input[type=button]{
	border:0;
	background-color:#fff;
	border-radius: 5px;
	border:1px solid #ccc;
	width: 35px;
	height: 35px;
	font-size: 20px;
}

#filter_plus .f_type_num{
	display:inline-block;
	min-width: 30px;
	text-align: center;
}

#filter_plus .f_basic_type{
	width: 95%;
	margin:10px auto;
	overflow: hidden;
}

#filter_plus .f_type_tit{
	height: 35px;
	line-height: 35px;
}

#filter_plus input[type=checkbox]{
	display: none;
}

#filter_plus input[type=checkbox] + label{
	display:inline-block;
	background-color:#fff;
	border-radius: 5px;
	border:1px solid #ccc;
	width: 35px;
	height: 35px;
	cursor: pointer;
}

#filter_plus .f_bottom_box{
	width: 780px;
	height:65px;
	background-color: #fff;
	margin:0 auto;
	border-radius: 0 0 15px 15px;
	padding : 10px 0;
	box-sizing: border-box;
}

#filter_plus .box_contents{
	width: 95%;
	margin: 0 auto;
	overflow: hidden;
}

#filter_plus .btn_left{
	display:inline-block;
	float: left;
	width: 50%;
	text-align: left;
}

#filter_plus .btn_right{
	display: inline-block;
	text-align: right;
	width: 50%;
}

#filter_plus .f_bottom_box input[type=button]{
	background-color:salmon;
	border:0;
	border-radius: 5px;
	width: 100px;
	height: 35px;
	color: #fff;
	font-weight: bold;
}
</style>
</head>
<body>
<div id = "filter_plus">
	<div class = "box_table">
		<div class = "box">
			<div class = "f_top_box">
				<div class = "box_contents">
					<div class = "top_tit">
						<h2>필터 추가하기</h2>
					</div>
					
					<div class = "top_btn">
						<input type = "button" id = "filter_close" value = "x"/>
					</div>
				</div>
			</div><!-- f_top_box close -->
			
			<div class = "f_center_box">
				<div class = "center_box_block">
					<h2>침실과 침대, 욕실</h2>
					<div class = "f_type">
						<div class = "f_type_tit">침실 수</div>
						<div class = "f_type_con">
							<input type = "button" value = "-" id = "bedroom_minus" onclick = "fTypeMinus(1);"/>
							<span class = "f_type_num" id = "bedroom_num">0</span>
							<input type = "button" value = "+" id = "bedroom_plus" onclick = "fTypePlus(1);"/>
						</div><!-- g_type_con close -->
					</div><!-- g_type close -->
					
					<div class = "f_type">
						<div class = "f_type_tit">침대 수</div>
						<div class = "f_type_con">
							<input type = "button" value = "-" id = "bed_minus" onclick = "fTypeMinus(2);"/>
							<span class = "f_type_num" id = "bed_num">0</span>
							<input type = "button" value = "+" id = "bed_plus" onclick = "fTypePlus(2);"/>
						</div><!-- g_type_con close -->
					</div><!-- g_type close -->
					
					<div class = "f_type">
						<div class = "f_type_tit">욕실 수</div>
						<div class = "f_type_con">
							<input type = "button" value = "-" id = "bathroom_minus" onclick = "fTypeMinus(3);"/>
							<span class = "f_type_num" id = "bathroom_num">0</span>
							<input type = "button" value = "+" id = "bathroom_plus" onclick = "fTypePlus(3);"/>
						</div><!-- f_type_con close -->
					</div><!-- f_type close -->
				</div><!-- center_box_block -->
				
				<div class = "center_box_block">
					<h2>편의시설</h2>
					<h3>기본시설</h3>
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">주방</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(0)" id = "kitchen_chk" value = "kitchen"/>
							<label for = "kitchen_chk"><img src="../img/icon/check.png" id = "kitchen_chk_img" class = "check_img" style = "display: none;" for = "kitchen_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">냉난방기</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(1)" id = "ac_chk" value = "ac"/>
							<label for = "ac_chk"><img src="../img/icon/check.png" id = "ac_chk_img" class = "check_img" style = "display: none;" for = "ac_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">무선인터넷</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(2)" id = "wifi_chk" value = "wifi"/>
							<label for = "wifi_chk"><img src="../img/icon/check.png" id = "wifi_chk_img" class = "check_img" style = "display: none;" for = "wifi_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">TV</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(3)" id = "tv_chk" value = "tv"/>
							<label for = "tv_chk"><img src="../img/icon/check.png" id = "tv_chk_img" class = "check_img" style = "display: none;" for = "tv_chk"/></label>
						</div><!-- f_type_con -->
					</div><!-- f_basic_type -->
						
					<h3>추가시설</h3>
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">세탁기</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(4)" id = "washer_chk" value = "washer"/>
							<label for = "washer_chk"><img src="../img/icon/check.png" id = "washer_chk_img" class = "check_img" style = "display: none;" for = "washer_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">주차</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(5)" id = "parking_chk" value = "parking"/>
							<label for = "parking_chk"><img src="../img/icon/check.png" id = "parking_chk_img" class = "check_img" style = "display: none;" for = "parking_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
						
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">욕실용품</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(6)" id = "amenity_chk" value = "amenity"/>
							<label for = "amenity_chk"><img src="../img/icon/check.png" id = "amenity_chk_img" class = "check_img" style = "display: none;" for = "amenity_chk"/></label>
						</div>
					</div><!-- f_basic_type -->	
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">헤어드라이어</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(7)" id = "hair_drier_chk" value = "hair_drier"/>
							<label for = "hair_drier_chk"><img src="../img/icon/check.png" id = "hair_drier_chk_img" class = "check_img" style = "display: none;" for = "hair_drier_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
					<div class = "f_basic_type">
						<div class = "f_type_txt">
							<div class = "f_type_tit">셀프체크인</div>
						</div>
						<div class = "f_type_con">
							<input type = "checkbox" name = "chkFType" onclick = "fCheckClick(8)" id = "self_checkin_chk" value = "self_checkin"/>
							<label for = "self_checkin_chk"><img src="../img/icon/check.png" id = "self_checkin_chk_img" class = "check_img" style = "display: none;" for = "self_checkin_chk"/></label>
						</div>
					</div><!-- f_basic_type -->
					
				</div><!-- center_box_block -->
			</div><!-- f_center_box close -->
			
			<div class = "f_bottom_box">
				<div class = "box_contents">
					<div class = "btn_left">
						<input type = "button" id = "f_type_cancel" value = "전체 취소" />
					</div>
					
					<div class = "btn_right">
						<input type = "button" id = "f_type_save" value = "저장" />
					</div>
				</div><!-- btns_box close -->
			</div><!-- f_bottom_box -->
		</div><!-- box close -->
	</div><!-- box_table close -->
</div><!-- filter_plus close -->
<script>
	const filterPlus = document.getElementById("filter_plus");
	const filterClose = document.getElementById("filter_close");
	
	const bedroomNum = document.getElementById("bedroom_num");
	const bedNum = document.getElementById("bed_num");
	const bathroomNum = document.getElementById("bathroom_num");
	
	const chkFType = document.getElementsByName("chkFType");
	const checkImg = document.getElementsByClassName("check_img");
	
	const fTypeCancel = document.getElementById("f_type_cancel");
	const fTypeSave = document.getElementById("f_type_save");
	
	//닫기 버튼 클릭 시
	filterClose.onclick = function(){
		filterPlus.style.display = "none";
	}
	
	//플러스 버튼 클릭 시
	function fTypePlus(num){
		if(num == 1){
			bedroomNum.innerHTML = Number(bedroomNum.innerHTML) + 1;
		}else if( num == 2){
			bedNum.innerHTML = Number(bedNum.innerHTML) + 1;
		}else{
			bathroomNum.innerHTML = Number(bathroomNum.innerHTML) + 1;
		}
	}
	
	//마이너스 버튼 클릭 시
	function fTypeMinus(num){
		if(num == 1){
			if(bedroomNum.innerHTML != 0){
				bedroomNum.innerHTML = Number(bedroomNum.innerText) - 1;				
			}
		}else if(num == 2){
			if(bedNum.innerHTML != 0){
				bedNum.innerHTML = Number(bedNum.innerHTML) - 1;				
			}
		}else{
			if(bathroomNum.innerHTML != 0){
				bathroomNum.innerHTML = Number(bathroomNum.innerHTML) - 1;				
			}
		}
	}
	
	//체크버튼 클릭 시
	function fCheckClick(num){		
		for(var i = 0; i < chkFType.length; i++){
			if(num == i){
				for(var j = 0; j< chkFType.length; j++){
					if(i == j){
						if(chkFType[j].checked == true){
							checkImg[j].style.display = "inline-block";
						}else {
							checkImg[j].style.display = "none";
						}
					}
				}
			}
		}
	}
	
</script>
</body>
</html>