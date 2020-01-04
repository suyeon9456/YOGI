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

window.onload = function(){
	if(dGuest.value != 0){
		dGuestBtn.value = dGuest.value + "명";
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
		guest.style.display = "inline-block";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
	}else if(num == 2){
		type.style.display = "inline-block";
		guest.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
	}else if(num == 3){
		guest.style.display = "inline-block";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "none";
	}else if(num == 4){
		guest.style.display = "none";
		type.style.display = "none";
		price.style.display = "inline-block";
		filterPlus.style.display = "none";
	}else{
		guest.style.display = "none";
		type.style.display = "none";
		price.style.display = "none";
		filterPlus.style.display = "inline-block";
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
		hTypeBtn.value = "집전체 ,개인실";
		hType.value = "집전체 ,개인실";
	}
	
	type.style.display = "none";
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
}

//가격 취소 버튼 클릭 시
pTypeCancel.onclick = function(){
	pSliderBar.value = minPrice;
	pSliderBar.style.background = "linear-gradient(to right, #ccc 0%, #ccc " + 0 + "%, #eee " + 0 + "%, #eee 100%)";
	var valNow = numbeComma(pSliderBar.value);
	priceArrow.innerHTML = "￦" + valNow;
	price.style.display = "none";
	hPrice.value = 0;
}

//가격 저장 버튼 클릭 시
pTypeSave.onclick = function(){
	hPrice.value = pSliderBar.value;
	price.style.display = "none";
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
	if(bedroomNum.innerHTML != 0){
		dBedroom.value = bedroomNum.innerHTML;
	}
	if(bedNum.innerHTML != 0){
		dBed.value = bedNum.innerHTML;
	}
	if(bathroomNum.innerHTML != 0){
		dBathroom.value = bathroomNum.innerHTML;
	}
	
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
		}
	}
}