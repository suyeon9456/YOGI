<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOGI_header</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
<!-- <link href = '../css/header.css' type = 'text/css' rel = 'stylesheet'/> -->
<style type="text/css">
    <%@include file="../css/header.css" %>
</style> 

</head>
<body>
<form method="get" name = "header_frm">
	<div id = "header">
		<div id = "main_box">
			<div id = "logo_box">
				로고
<!-- 				<img src=""/> -->
			</div>
			
			<div id = "search_box">
				<div id = "search_div">
					<input type="search" onkeypress="if( event.keyCode==13 ){searchEnter();}" name = "findStr" placeholder="원하는 숙소를 검색하세요." value = "${param.findStr }"/> 
<!-- 					<img src=""/> -->
				</div>
			</div>
			
			<div id = "menu_box">
				<ul>
					<c:choose>
						<c:when test="${sessionScope.mEmail eq null}">
							<li><a href = "#">호스트 등록하기</a></li>
							<li><a onclick="popupSignin()" style="cursor: pointer;">로그인</a></li>
							<li><a onclick="popupSignup()" style="cursor: pointer;">회원가입</a></li>
						</c:when>
						
						<c:when test="${sessionScope.mEmail ne null}">
							<li><a href = "#">호스트 등록하기</a></li>
							<li><a href = "#">찜 목록</a></li>
							<li><a href = "#">여행 관리</a></li>
							<li><a href = "#">메시지</a></li>
						</c:when>
					</c:choose>
				</ul>				
			</div><!-- menu_box close -->
			
			<c:if test="${sessionScope.mEmail ne null }">
				<div id = "mypage_img">
					<img src="../img/icon/user.png"/>
				</div><!-- mypage_img close -->			
			</c:if>
			
		</div><!-- main_box close -->
		
		<div id = "filter_box">
			<c:choose>
				<c:when test="${param.dDate eq null}">
					<input type = "button" name = "dDate" id = "d_date" value = "여행 날짜" onclick = "filterBtnsClick(1);"/>				
				</c:when>
				<c:when test="${param.dDate ne null}">
					<input type = "button" name = "dDate" id = "d_date" value = "${param.dDate }" onclick = "filterBtnsClick(1);"
					style = "background-color:salmon; color:white;border:1px solid salmon;"/>				
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${param.hType eq '' || empty param.hType}">
					<input type = "button" name = "hTypeBtn" id = "h_type" value = "집 유형" onclick = "filterBtnsClick(2);"/>									
				</c:when>
				<c:when test="${param.hType ne ''}">
					<input type = "button" name = "hTypeBtn" id = "h_type" value = "${param.hType }" onclick = "filterBtnsClick(2);"
					style = "background-color:salmon; color:white;border:1px solid salmon;" />
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${param.dPeople eq 0 || empty param.dPeople}">
					<input type = "button" name = "dGuestBtn" id = "d_guest" value = "인원" onclick = "filterBtnsClick(3);"/>															
				</c:when>
				<c:when test="${param.dPeople ne 0}">
					<input type = "button" name = "dGuestBtn" id = "d_guest" value = "${param.dPeople }명" onclick = "filterBtnsClick(3);"
					style = "background-color:salmon; color:white;border:1px solid salmon;"/>			
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${param.hPrice eq null || param.hPrice eq maxPrice || empty param.hPrice}">
					<input type = "button" name = "hPriceBtn" id = "h_price" value = "가격" onclick = "filterBtnsClick(4);"/>				
				</c:when>
				<c:when test="${param.hPrice ne null}">
					<input type = "button" name = "hPriceBtn" id = "h_price" value = "<fmt:formatNumber value='${param.hPrice}' pattern='#,###' />원" onclick = "filterBtnsClick(4);"
					style = "background-color:salmon; color:white;border:1px solid salmon;"/>	
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${empty param.dBedroom && empty param.dBed && empty param.dBathroom 
				&& empty param.dKitchen && empty param.dAc && empty param.dWifi && empty param.dTv &&empty param.dWasher
				&& empty param.dParking && empty param.dAmenity && empty param.dHdrier && empty param.dSelfcheckin}">
					<input type = "button" name = "etc" id = "etc" value = "필터 추가하기" onclick = "filterBtnsClick(5);"/>	
				</c:when>
				
				<c:when test="${param.dBedroom ne 0 || param.dBed ne 0  || param.dBathroom ne 0 
				|| param.dKitchen ne '' || param.dAc ne '' || param.dWifi ne '' || param.dTv ne '' || param.dWasher ne ''
				|| param.dParking ne '' || param.dAmenity ne '' || param.dHdrier ne '' || param.dSelfcheckin ne ''}">
					<input type = "button" name = "etc" id = "etc" value = "필터 추가하기" onclick = "filterBtnsClick(5);"
					style = "background-color:salmon; color:white;border:1px solid salmon;"/>	
				</c:when>
				
				<c:otherwise>
					<input type = "button" name = "etc" id = "etc" value = "필터 추가하기" onclick = "filterBtnsClick(5);"/>
				</c:otherwise>
			</c:choose>
		
		</div>
		
		<%@include file="./WEB-INF/filter/type.jsp" %>
		<%@include file="./WEB-INF/filter/guest.jsp" %>
		<%@include file="./WEB-INF/filter/price.jsp" %>
		<%@include file="./WEB-INF/filter/filter_plus.jsp" %>
	</div>
	<input type = "hidden" name = "hType" value = "${(empty param.hType) ? '' : param.hType }"/>
	<input type = "hidden" name = "dPeople" value = "${(empty param.dPeople) ? 0 : param.dPeople }"/>
	<input type = "hidden" name = "hPrice" value = "${(empty param.hPrice) ? maxPrice : param.hPrice }"/>
	<input type = "hidden" name = "dBedroom" value = "${(empty param.dBedroom) ? 0 : param.dBedroom }"/>
	<input type = "hidden" name = "dBed" value = "${(empty param.dBed) ? 0 : param.dBed }"/>
	<input type = "hidden" name = "dBathroom" value = "${(empty param.dBathroom) ? 0 : param.dBathroom }"/>
	<input type = "hidden" name = "dKitchen" value = "${(empty param.dKitchen) ? '' : param.dKitchen }"/>
	<input type = "hidden" name = "dAc" value = "${(empty param.dAc) ? '' : param.dAc }"/>
	<input type = "hidden" name = "dWifi" value = "${(empty param.dWifi) ? '' : param.dWifi }"/>
	<input type = "hidden" name = "dTv" value = "${(empty param.dTv) ? '' : param.dTv }"/>
	<input type = "hidden" name = "dWasher" value = "${(empty param.dWasher) ? '' : param.dWasher }"/>
	<input type = "hidden" name = "dParking" value = "${(empty param.dParking) ? '' : param.dParking }"/>
	<input type = "hidden" name = "dAmenity" value = "${(empty param.dAmenity) ? '' : param.dAmenity }"/>
	<input type = "hidden" name = "dHdrier" value = "${(empty param.dHdrier) ? '' : param.dHdrier }"/>
	<input type = "hidden" name = "dSelfcheckin" value = "${(empty param.dSelfcheckin) ? '' : param.dSelfcheckin }"/>
</form>
<%@include file = "./WEB-INF/user/signup.jsp" %>
<%@include file = "./WEB-INF/user/signin.jsp" %>
<script src = "../js/header.js"></script>
</body>
</html>
