<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOGI_header</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
<link href = '../css/header.css' type = 'text/css' rel = 'stylesheet'/> 
</head>
<body>
<form method="post" name = "header_frm">
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
			<input type = "button" name = "dDate" id = "d_date" value = "여행 날짜" onclick = "filterBtnsClick(1);"/>
			<input type = "button" name = "hTypeBtn" id = "h_type" value = "집 유형" onclick = "filterBtnsClick(2);"/>
			<input type = "button" name = "dGuestBtn" id = "d_guest" value = "인원" onclick = "filterBtnsClick(3);"/>
			<input type = "button" name = "hPrice" id = "h_price" value = "가격" onclick = "filterBtnsClick(4);"/>
			<input type = "button" name = "etc" id = "etc" value = "필터 추가하기" onclick = "filterBtnsClick(5);"/>
		</div>
		
		<%@include file="./WEB-INF/filter/type.jsp" %>
		<%@include file="./WEB-INF/filter/guest.jsp" %>
	</div>
	<input type = "hidden" name = "hType" value = "${(empty param.hType) ? 0 : param.hType }"/>
	<input type = "hidden" name = "dGuest" value = "${(empty param.dGuest) ? 0 : param.dGuest }"/>
</form>
<%@include file = "./WEB-INF/user/signup.jsp" %>
<%@include file = "./WEB-INF/user/signin.jsp" %>
<script src = "../js/header.js"></script>
</body>
</html>
