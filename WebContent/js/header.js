/**
 * header 관련 javascript
 */
const headerFrm = document.header_frm;
const findStr = headerFrm.findStr;

const dPeople = headerFrm.dPeople;
const dGuestBtn = headerFrm.dGuestBtn;

const hTypeBtn = headerFrm.hTypeBtn;
const hType = headerFrm.hType;

const hPrice = headerFrm.hPrice;
const hPriceBtn = headerFrm.hPriceBtn;

const etc = headerFrm.etc;
const dBedroom = headerFrm.dBedroom;
const dBed = headerFrm.dBed;
const dBathroom = headerFrm.dBathroom;
const dKitchen = headerFrm.dKitchen;
const dAc = headerFrm.dAc;
const dWifi = headerFrm.dWifi;
const dTv = headerFrm.dTv;
const dWasher = headerFrm.dWasher;
const dParking = headerFrm.dParking;
const dAmenity = headerFrm.dAmenity;
const dHdrier = headerFrm.dHdrier;
const dSelfcheckin = headerFrm.dSelfcheckin;

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

window.onload = function(){
	if(pSliderBar.value != minPrice){
		var val = pSliderBar.value;
		var per = maxPrice-minPrice;
		var perR = (val - minPrice)/per * 100;
		pSliderBar.style.background = "linear-gradient(to right, #ccc 0%, #ccc " + perR + "%, #eee " + perR + "%, #eee 100%)";
	    var valNow = numbeComma(val);
	    priceArrow.innerHTML = valNow + "원";
	}
}

//검색창 엔터
function searchEnter (){
	var url = "search";
	headerFrm.action = url;
	headerFrm.submit();
}

//filter 버튼들 클릭 시
function filterBtnsClick(num){
	if(num == 1){
		cal.style.display = "inline-block";
		guest.style.display = "none";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
		goCalendar();
	}else if(num == 2){
		type.style.display = "inline-block";
		guest.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
		cal.style.display = "none";
	}else if(num == 3){
		guest.style.display = "inline-block";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
		cal.style.display = "none";
	}else if(num == 4){
		guest.style.display = "none";
		type.style.display = "none";
		price.style.display = "inline-block";
		filterPlus.style.display = "none";
		cal.style.display = "none";
	}else{
		guest.style.display = "none";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "inline-block";
		cal.style.display = "none";
	}
}

//집 유형 취소 버튼 클릭 시
tTypeCancel.onclick = function(){
	for(var i = 0; i < chkHType.length; i++){
		if(chkHType[i].checked == true ){
			chkHType[i].checked = false;
			 document.getElementById("house_chk_img").style.display = "none";
			 document.getElementById("room_chk_img").style.display = "none";
		}
	}
	type.style.display = "none";
}
//집 유형 저장 버튼 클릭 시
tTypeSave.onclick = function(){
	if(chkHType[0].checked == true && chkHType[1].checked == false){
		hTypeBtn.value = "집전체";
		hType.value = "집전체";
	}else if(chkHType[1].checked == true && chkHType[0].checked == false){
		hTypeBtn.value = "개인실";
		hType.value = "개인실";
	}else if(chkHType[0].checked == true && chkHType[1].checked == true){
		hTypeBtn.value = "집전체 , 개인실";
		hType.value = "집전체 , 개인실";
	}else{
		hTypeBtn.value = "집 유형";
		hTypeBtn.style.backgroundColor = "#fff";
		hTypeBtn.style.border="1px solid #ccc";
		hTypeBtn.style.color="#484848";
		hType.value = "";
	}
	
	type.style.display = "none";
	
	headerFrm.action = "search";
	headerFrm.submit();
}

//인원 취소 버튼 클릭 시
gTypeCancel.onclick = function(){
	adultNum.innerHTML = 0;
	childNum.innerHTML = 0;
	infantNum.innerHTML = 0;
	
	guest.style.display = "none";
	dGuest.value = "인원";
}

//인원 저장 버튼 클릭 시
gTypeSave.onclick = function(){
	var gNum = Number(adultNum.innerText) + 
			   Number(childNum.innerText) +
			   Number(infantNum.innerText);
	
	dPeople.value = gNum;
	dGuestBtn.value = gNum + "명";
	
	guest.style.display = "none";
	
//	if(gNum == 0){
//		hPriceBtn.style.backgroundColor = "#fff";
//		hPriceBtn.style.border = "1px solid #ccc";
//		hPriceBtn.style.color = "#484848";
//	}
	
	headerFrm.action = "search";
	headerFrm.submit();
}

//가격 취소 버튼 클릭 시
pTypeCancel.onclick = function(){
	pSliderBar.value = minPrice;
	pSliderBar.style.background = "linear-gradient(to right, #ccc 0%, #ccc " + 0 + "%, #eee " + 0 + "%, #eee 100%)";
	var valNow = numbeComma(pSliderBar.value);
	priceArrow.innerHTML = valNow + "원";
	price.style.display = "none";
	hPrice.value = 0;
}

//가격 저장 버튼 클릭 시
pTypeSave.onclick = function(){
	hPrice.value = pSliderBar.value;
	var valNow = numbeComma(pSliderBar.value);
	price.style.display = "none";
	hPriceBtn.value = valNow + "원";
	hPriceBtn.style.backgroundColor = "salmon";
	hPriceBtn.style.border = "1px solid salmon";
	hPriceBtn.style.color = "#fff";
	
	headerFrm.action = "search";
	headerFrm.submit();
}

//필터 추가하기 취소버튼 클릭 시
fTypeCancel.onclick = function(){
	if(bedroomNum.innerHTML != 0){
		bedroomNum.innerHTML = 0;
		dBedroom.value = 0;
	}
	if(bedNum.innerHTML != 0){
		bedNum.innerHTML = 0;
		dBed.value = 0;
	}
	if(bathroomNum.innerHTML != 0){
		bathroomNum.innerHTML = 0;
		dBathroom.value = 0;
	}
	
	for(var i = 0; i < chkFType.length; i++){
		chkFType[i].checked = false;
		checkImg[i].style.display = "none";
	}
	
	dKitchen.value = "";
	dAc.value = "";
	dWifi.value = "";
	dTv.value = "";
	dWasher.value = "";
	dParking.value = "";
	dAmenity.value = "";
	dHdrier.value = "";
	dSelfcheckin.value = "";
}

//필터추가하기 저장 버튼 클릭 시
fTypeSave.onclick = function(){
	dBedroom.value = bedroomNum.innerHTML;
	dBed.value = bedNum.innerHTML;
	dBathroom.value = bathroomNum.innerHTML;
	
	for(var i = 0; i < chkFType.length; i++){
		if(chkFType[i].checked == true){
			switch (i) {
			case 0: dKitchen.value = "y";
				break;
			case 1: dAc.value = "y";
				break;
			case 2: dWifi.value = "y";
				break;
			case 3: dTv.value = "y";
				break;
			case 4: dWasher.value = "y";
				break;
			case 5: dParking.value = "y";
				break;
			case 6: dAmenity.value = "y";
				break;
			case 7: dHdrier.value = "y";
				break;
			case 8: dSelfcheckin.value = "y";
				break;
			}
		}else if(chkFType[i].checked == false){
			switch (i) {
			case 0: dKitchen.value = "";
				break;
			case 1: dAc.value = "";
				break;
			case 2: dWifi.value = "";
				break;
			case 3: dTv.value = "";
				break;
			case 4: dWasher.value = "";
				break;
			case 5: dParking.value = "";
				break;
			case 6: dAmenity.value = "";
				break;
			case 7: dHdrier.value = "";
				break;
			case 8: dSelfcheckin.value = "";
				break;
			}
		}
	}
	
	if(bedroomNum.innerHTML != 0 || bedNum.innerHTML != 0 || bathroomNum.innerHTML != 0){ 
		etc.style.backgroundColor = "salmon";
		etc.style.border = "1px solid salmon";
		etc.style.color = "#fff";
	}else if(bedroomNum.innerHTML == 0 && bedNum.innerHTML == 0 && bathroomNum.innerHTML == 0){
		for(var i = 0; i < chkFType.length; i++){
			if(chkFType[i].checked == true){
				etc.style.backgroundColor = "salmon";
				etc.style.border = "1px solid salmon";
				etc.style.color = "#fff";
				break;
			}else{
				etc.style.backgroundColor = "#fff";
				etc.style.border = "1px solid #ccc";
				etc.style.color = "#484848";
			}
		}
	}
	
	filterPlus.style.display = "none";
	
	headerFrm.action = "search";
	headerFrm.submit();
}
