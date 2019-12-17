/**
 * header 관련 javascript
 */
const headerFrm = document.header_frm;
const findStr = headerFrm.findStr;

function searchEnter (){
	alert(findStr.value);
	var url = "search";
	headerFrm.action = url;
	headerFrm.submit();
}