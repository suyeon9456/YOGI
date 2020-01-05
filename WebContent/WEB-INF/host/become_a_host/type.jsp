<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>남는방이나 공간 전체를 숙소로 등록하고 YOGI 호스트가 되세요</title>
</head>
<body>
${sessionScope.mEmail }
${sessionScope.p_img }
<div id="b_host_type">
	<div id="content">
		<h2>숙소 등록을 시작해볼까요?</h2>
		<div>
			<strong>1단계</strong>
			<div>등록하시려는 숙소의 유형을 선택하세요.</div>
			<form name="house_type" method="post">
				<div id="type1_2">
					<div id="type_1">
						<select name="house_type" id="h_type">
							<option selected="selected" value="집 전체">집 전체</option>
							<option value="개인실">개인실</option>
							<option value="다인실">다인실</option>
						</select>
					</div>
					<div id="type_2">
						<select name="max_people" id="m_people">
							<option value="1">최대 1명 숙박 가능</option>
							<option value="2">최대 2명 숙박 가능</option>
							<option value="3">최대 3명 숙박 가능</option>
							<option selected="selected" value="4">최대 4명 숙박 가능</option>
							<option value="5">최대 5명 숙박 가능</option>
							<option value="6">최대 6명 숙박 가능</option>
							<option value="7">최대 7명 숙박 가능</option>
							<option value="8">최대 8명 숙박 가능</option>
							<option value="9">최대 9명 숙박 가능</option>
							<option value="10">최대 10명 숙박 가능</option>
						</select>
					</div>
				</div>
				<div id="type_3">
					<input type="text" placeholder="예)인천시 남동구" id="h_local"/>
				</div>
				<button id="">계속</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>