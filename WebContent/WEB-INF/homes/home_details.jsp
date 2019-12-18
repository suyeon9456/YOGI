<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 상세정보</title>
<link href = '../css/details.css' type = 'text/css' rel = 'stylesheet'> 
</head>
<body>
<!-- header -->
<%@ include file="../../header.jsp" %>

<!-- content -->
<div id="home_details">
	
	<!-- main -->
	<div id="main">
		<div id="headline">
			<div id="contnet">
				<div>
					<span>
						로고
					</span>
				</div>
				<div>
					<span>
						${data.hName }
					</span>					
				</div>
			</div>
		</div>
		<div id="main_img" style="background-image: url('../img/homes/'${data.fileList})">
			
		</div>
	</div>
	
	<!-- explain & host -->
	<div id="host">
	
	</div>
	
</div>
</body>
</html>