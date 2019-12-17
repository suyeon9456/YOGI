<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 리스트</title>
<link href = '../css/homes.css' type = 'text/css' rel = 'stylesheet'> 
</head>
<body>
<%@include file="../../header.jsp" %>
<div id = "search_list">
	<div class = "content_title">
		<h2>
			<c:choose>
				<c:when test="${list_size > 10}">
					${list_size - list_size % 10}개 이상의 모든 숙소
				</c:when>
				<c:otherwise>${list_size }개 모든 숙소</c:otherwise>
			</c:choose>
		</h2>
	</div>
	
	<div class = "home_box">
		<c:forEach var = "data" items="${list}">
			<div class = "cont">
				<div class = "container">
					<div class = "slide_wrap">
						<div class = "slide_box">
							<div class = "slide_list clearfix">
								<c:forEach var = "photo" items="${data.fileList }" varStatus="status">
									<div class = "slide_content slide${status.count }">
										<img src="../img/homes/${photo.fPhoto }" />
									</div>
								</c:forEach>
							</div><!-- .slide_list -->
						</div><!-- .slide_box -->
						
<!-- 						<div class = "slide_btn_box"> -->
							<div class = "slide_btn_p">
								<button type = "button" class = "slide_btn_prev">
									<img src="../img/icon/prev.png" />
								</button>
							</div>
							<div class = "slide_btn_n">
								<button type = "button" class = "slide_btn_next">
									<img src="../img/icon/next.png" />
								</button>														
							</div>
<!-- 						</div> -->
						
						<div class = "slide_pagination_box">
							<ul class = "slide_pagination"></ul>						
						</div>
					</div><!-- .slide_wrap -->
				</div><!-- .container -->
				
				<div class = "h_content_box">
					<div class = "h_name">${data.hName}</div>
					<div class = "h_grade">
						<img src="../img/icon/star.png"/>
						<span>${data.grade}</span>
					</div>
					<div class = "h_content">${data.hContent}</div>
					<div class = "h_address">${data.hAddress}</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<script src = "../js/homes.js"></script>
</body>
</html>