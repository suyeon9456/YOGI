<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOGI_header</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href = '../static_file/css/header.css' type = 'text/css' rel = 'stylesheet'> 
</head>
<body>
<form method="post" name = "header_frm">
	<div id = "header">
		<div id = "main_box">
			<div id = "logo_box">
				로고
				<img src=""/>
			</div>
			
			<div id = "search_box">
				<div id = "search_div">
					<input type="search" onkeypress="if( event.keyCode==13 ){searchEnter();}" name = "findStr" placeholder="원하는 숙소를 검색하세요."/> 
					<img src=""/>
				</div>
			</div>
			
			<div id = "menu_box">
				<ul>
					<li><a href = "#">호스트 등록하기</a></li>
					<li><a href = "#">찜 목록</a></li>
					<li><a href = "#">여행 관리</a></li>
					<li><a href = "#">메시지</a></li>
				</ul>				
			</div><!-- menu_box close -->
			
			<div id = "mypage_img">
				<img src="../static_file/images/icon/user.png"/>
			</div><!-- mypage_img close -->
			
		</div><!-- main_box close -->
		
		<div id = "filter_box">
			<input type = "button" name = "dDate" class = "d_date" value = "여행 날짜"/>
			<input type = "button" name = "hType" class = "h_type" value = "집 유형"/>
			<input type = "button" name = "dPeople" class = "d_people" value = "인원"/>
			<input type = "button" name = "hPrice" class = "h_price" value = "가격"/>
			<input type = "button" name = "etc" class = "etc" value = "필터 추가하기"/>
		</div>
	</div>
</form>
<script src = "../static_file/js/header.js"></script>
</body>
</html>