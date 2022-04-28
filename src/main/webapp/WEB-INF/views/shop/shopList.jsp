<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매장리스트</title>
    <!--웹폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!--css-->
    <link rel="stylesheet" href="../resources/css/reset.css">
        <link rel="stylesheet" href="../resources/css/shopList.css">
    <!--jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>    
</head>
<body>
	<div id="wrap">
		<div class="title">
			<h2>카페리스트</h2>
			<p><a href="/index">홈으로</a>
		</div>
		<hr>
		<div>
			<ul>
		    	<c:forEach items="${slist}" var="list">
					<li>
						<input type="hidden" value="${list.shopno}">
			            <h2>${list.shopname}</h2>
			            <p>영업시간 : ${list.shoptime}</p>
			            <p>${list.shopaddress}</p> 	
			            <p>${list.shoptel}</p>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>