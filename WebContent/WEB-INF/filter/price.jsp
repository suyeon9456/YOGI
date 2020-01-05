<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가격 범위 선택</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>

#price .box{
	width:400px;
	height:250px;
	border-radius: 20px;
	border:1px solid #ccc;
	background-color:#fff;
	color:#484848;
	font-size: 14px;
}

#price .p_top_box{
	text-align: center;
	padding : 16px 0;
	height: 145px;
}

#price .p_type{
	width: 85%;
	margin:10px auto;
	overflow: hidden;
}
#price .p_type_tit{
	text-align: left;
	height: 25px;
	line-height: 25px;
}
 input[type=range] {
    -webkit-appearance: none; 
    width: 100%; 
    height: 3px;
    background: #eee; 
    cursor: pointer;
    border-radius: 300px; /* iOS */
   transition: background 450ms ease-in;
  }

  input[type=range]:focus {
    outline: none; 
  }

  input[type=range]::-webkit-slider-thumb{
    -webkit-appearance: none;
    width: 12px;
    height: 12px;
    background: #fff;
    border: 2px solid #ccc;
    border-radius:50%;
    cursor: pointer;
  }
  input[type=range]::-moz-range-thumb{
    -webkit-appearance: none;
    width:10px;
    height:10px;
    background: #fff;
    border: 1px solid dodgerblue;
    border-radius:50%;
    cursor: pointer;
  }
  
#price .p_arrow{
	border-radius: 50%;
}

#price #s_bottom_box{
	overflow: hidden;
	margin-top: 20px;
}

#price #s_bottom_box_r{
	display: inline-block;
	width: 50%;
	text-align: left;
	float: left;
}

#price #s_bottom_box_l{
	display: inline-block;
	width: 50%;
	text-align: right;
}

#price .slider_bottom{
 	display:inline-block;
	border-radius:5px;
	width:100px;
	border: 1px solid #ccc;
	height: 50px;
	line-height: 50px;
	margin: 0 auto;
	text-align: center;
}
    
#price .p_bottom_box{
 	text-align: center;
 	padding:10px 0;
}

#price .btns_box{
	width: 85%;
	margin: 0 auto;
	overflow: hidden;
}

#price .btn_left{
	display:inline-block;
	float: left;
	width: 50%;
	text-align: left;
}

#price .btn_right{
	display: inline-block;
	text-align: right;
	width: 50%;
}

#price .p_bottom_box input[type=button]{
	background-color: salmon;
	border:0;
	border-radius: 5px;
	width: 70px;
	height: 35px;
	color: #fff;
	font-weight: bold;
}

#price .p_type_con img{
	position: absolute;
	top:13px;
	left:25px;
}

</style>
</head>
<body>
<div id = "price">
	<div class = "box">
		<div class = "p_top_box">
			<div class = "p_type">
				<div class = "p_type_tit">평균 1박 요금은 <span><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${avgPrice}" /></span>입니다.</div>
				<div class = "p_type_con">
					<!-- 슬라이더 -->
					<div class="price_slider">
						<div id = "s_top_box">
						    <span id="price_arrow" class="p_arrow"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${minPrice}" /></span>
						</div>
					    <input id="p_slider_bar" class="slider_bar" type="range" value="10000" min="${minPrice}" max="${maxPrice}"/> 
					    <div id = "s_bottom_box">
						    <div id = "s_bottom_box_r">
							    <span id = "min_price" class = "slider_bottom" onclick = "priceBtn(1)"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${minPrice}" /></span>
						    </div>
						    <div id = "s_bottom_box_l">
							    <span id = "max_price" class = "slider_bottom" onclick = "priceBtn(2)"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${maxPrice}" /></span>
						    </div>
					    </div>
				  	</div>
				</div><!-- p_type_con close -->
			</div><!-- p_type close -->
		
		</div><!-- p_top_box close -->
		
		<div class = "p_bottom_box">
			<div class = "btns_box">
				<div class = "btn_left">
					<input type = "button" id = "p_type_cancel" value = "취소" />
				</div>
				
				<div class = "btn_right">
					<input type = "button" id = "p_type_save" value = "저장" />
				</div>
			</div><!-- btns_box close -->
			
		</div><!-- p_bottom_box close -->
	</div><!-- box close -->
</div><!-- price close -->

<script>
// $('input[type=range]').on('input', function(){
//     var val = $(this).val();
//     var per = ${maxPrice - minPrice};
//     var perR = (val - '${minPrice}')/per * 100;
//     $(this).css('background', 'linear-gradient(to right, salmon 0%, salmon '+ perR +'%, #ccc ' + perR + '%, #ccc 100%)');
//   });
const price =  document.getElementById("price"); 
  
const pSliderBar = document.getElementById("p_slider_bar");
const priceArrow = document.getElementById("price_arrow");

const pTypeCancel = document.getElementById("p_type_cancel");
const pTypeSave = document.getElementById("p_type_save");

const minPrice = '${minPrice}';

function numbeComma(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

pSliderBar.onchange = function(){
	var val = pSliderBar.value;
	var per = ${maxPrice - minPrice};
    var perR = (val - '${minPrice}')/per * 100;
    pSliderBar.style.background = "linear-gradient(to right, #ccc 0%, #ccc " + perR + "%, #eee " + perR + "%, #eee 100%)";
    var valNow = numbeComma(val);
    priceArrow.innerHTML = "￦" + valNow;
}

function priceBtn(num){
	if(num == 1){
		pSliderBar.value = '${minPrice}';
		pSliderBar.style.background = "linear-gradient(to right, #ccc 100%, #ccc " + 100 + "%, #eee " + perR + "%, #eee 100%)";
	}else {
		pSliderBar.value = '${maxPrice}';
	}
}
  
</script>
</body>
</html>