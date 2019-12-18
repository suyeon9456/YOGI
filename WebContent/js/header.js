/**
 * header 관련 javascript
 */
const headerFrm = document.header_frm;
const findStr = headerFrm.findStr;

const dGuest = headerFrm.dGuest;
const dGuestBtn = headerFrm.dGuestBtn;

window.onload = function(){
	if(dGuest.value != 0){
		dGuestBtn.value = dGuest.value + "명";
	}
}

function searchEnter (){
	var url = "search";
	headerFrm.action = url;
	headerFrm.submit();
}

//filter 버튼들 클릭 시
function filterBtnsClick(num){
	if(num == 1){
		guest.style.display = "inline-block";
	}else if(num == 2){
		type.style.display = "inline-block";
		guest.style.display = "none";
	}else if(num == 3){
		guest.style.display = "inline-block";
		type.style.display = "none";
	}else if(num == 4){
		guest.style.display = "inline-block";
	}else{
		guest.style.display = "inline-block";
	}
}

//집 유형 취소 버튼 클릭 시
tTypeCancel.onclick = function(){
	for(var i = 0; i < chkHType.length; i++){
		if(chkHType[i].checked == true ){
			chkHType[i].checked == false;
			 document.getElementById("house_chk_img").style.display = "none";
			 document.getElementById("room_chk_img").style.display = "none";
		}
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
	
	dGuest.value = gNum;
	dGuestBtn.value = gNum + "명";
	
	guest.style.display = "none";
}
