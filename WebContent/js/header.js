/**
 * header 관련 javascript
 */
const headerFrm = document.header_frm;
const findStr = headerFrm.findStr;

const dGuest = headerFrm.dGuest;

function searchEnter (){
	var url = "search";
	headerFrm.action = url;
	headerFrm.submit();
}

function filterBtnsClick(num){
	if(num == 3){
		guest.style.display = "inline-block";
	}
}

gTypeSave.onclick = function(){
	var gNum = Number(adultNum.innerText) + 
			   Number(childNum.innerText) +
			   Number(infantNum.innerText);
	
	dGuest.value = gNum + "명";
	
	guest.style.display = "none";
}
