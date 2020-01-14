<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>YOGI</title>
    <link href="./css/main.css" type="text/css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <style>
      body {
        margin: 0;
        padding: 0;
        font-family: 'Noto Sans KR', sans-serif;
      }
    </style>
  </head>
  <body>
    <div id="main_header">
      <img alt="main" src="./img/main/test6.jpg" aria-hidden="true" />

      <div id="top_box">
        <div id="logo">
          로고
        </div>
        <div id="top_menu">
          <ul>
            <li><a href="homes/list">숙소 찾기</a></li>
            <li><a onclick="popupSignin()" style="cursor: pointer;">로그인</a></li>
            <li><a onclick="popupSignup()" style="cursor: pointer;">회원가입</a></li>
          </ul>
        </div>
      </div>

      <div id="find_b">
        <div id="find_box">
          <h1>특색 있는 숙소와<br />즐길 거리를 예약하세요.</h1>
          <form name="find_frm" method="post">
            <label>목적지</label><br />
            <input type="text" name="destination" size="54" /><br />
            <label>체크인</label><label>체크아웃</label><br />
            <input type="date" name="checkIn" size="24" />
            <input type="date" name="checkOut" size="34" /><br />
            <label>인원</label><br />
            <input type="text" name="people" size="54" /><br />
            <input type="submit" id="btn_find" value="검색" />
          </form>
        </div>
      </div>
    </div>

<div id = "main_content">
	<div class = "content_title">
		<div>
			<h2>숙소 둘러보기</h2>				
		</div>
	</div>
	
	<div id = "find_type">	
		<div id = "find_type_buttons">
			<div class = "find_box">
				<img src="./img/main/family.png"/>
				<div id = "btn_family">가족과 여행</div>
			</div>
			<div class = "find_box">
				<img src="./img/main/couple.png"/>
				<div id = "btn_couple">연인과 여행</div>
			</div>
			<div class = "find_box">
				<img src="./img/main/freind.png"/>
				<div id = "btn_friend">친구와 여행</div>
			</div>
			<div class = "find_box">
				<img src="./img/main/alone.png"/>
				<div id = "btn_alone">나홀로 여행</div>
			</div>
			<div class = "find_box">
				<img src="./img/main/pets.png"/>
				<div id = "btn_pets">반려동물과 여행</div>
			</div>
		</div>
	</div>
	
	<div id = "find_house">
		<div id = "banner_box">
			<div id = "banner_vertical">
				<div id = "banner_box_content">
					<div id = "banner_title">
						<h1>YONI & WOOGI와<br/>			
						함께하는</h1>
						<p>여행지 숙소찾기</p>
					</div>
					
					<div id = "c_find_button">
						<a href = "/homes/list" id = "">숙소 알아보기</a>
					</div>
				</div>
			</div>
		</div>		
	</div>
	
	<div class = "content_title">
		<h2>추천 도시</h2>
	</div>
	<div id = "find_city">
		
		<div id = "find_citybtns">
			<div class = "city_box">
				<img src = "https://a0.muscache.com/im/pictures/lombard/MtTemplate-1334393-media_library/original/2c860a81-bc7f-4342-933c-e73949505dfb.jpeg?aki_policy=poster"/>
				<div class = "city_name">
					<p>경주</p>
					<div>800개 이상의 검증된 숙소</div>
					<div>1인당</div>
					<div>10000원 부터</div>
				</div>
			</div>
			<div class = "city_box">
				<img src = "https://a0.muscache.com/im/pictures/8d0a8add-0b29-45ad-bf58-ffca8a94d3d7.jpg?aki_policy=poster"/>
				<div class = "city_name">
					<p>서울</p>
					<div>800개 이상의 검증된 숙소</div>
					<div>1인당</div>
					<div>10000원 부터</div>
				</div>
			</div>
			<div class = "city_box">
				<img src = "https://a0.muscache.com/im/pictures/64c23cf2-4833-4506-ab06-c943c7489709.jpg?aki_policy=poster"/>
				<div class = "city_name">
					<p>인천</p>
					<div>800개 이상의 검증된 숙소</div>
					<div>1인당</div>
					<div>10000원 부터</div>
				</div>
			</div>
			<div class = "city_box">
				<img src = "https://a0.muscache.com/im/pictures/lombard/MtTemplate-1276197-media_library/original/4ccf5820-ceea-4f2d-9607-6ff3df9724f8.jpeg?aki_policy=poster"/>
				<div class = "city_name">
					<p>광주</p>
					<div>800개 이상의 검증된 숙소</div>
					<div>1인당</div>
					<div>10000원 부터</div>
				</div>
			</div>
			<div class = "city_box">
				<img src = "https://a0.muscache.com/im/pictures/943d0233-e522-40fe-ac16-d39efd49a0eb.jpg?aki_policy=poster"/>
				<div class = "city_name">
					<p>부산</p>
					<div>800개 이상의 검증된 숙소</div>
					<div>1인당</div>
					<div>10000원 부터</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class = "content_title">
		<h2>BEST 숙소</h2>
	</div>
	<div id = "best_homes">
		<img src = "./img/icon/loading.gif" id = "loading"/>
	</div><!-- best homes close -->
</div>
  <%@include file = "./WEB-INF/user/signup.jsp" %>
  <%@include file = "./WEB-INF/user/signin.jsp" %>
  <%@include file="./js/main_js.jsp" %>
</body>
</html>
