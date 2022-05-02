<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
        <!--웹폰트-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">    
        <link rel="stylesheet" href="../resources/css/reset.css">
        <link rel="stylesheet" href="../resources/css/shopDetail.css">
</head>
<body>
    <div id="wrap">
        <ul>
            <li class="cafe">
                <h2>${sdetail.shopname}</h2>
                <p class="rw">
                	<a href="/index">홈으로</a>
                	<a href="/review/reviewWrite?shopno=${sdetail.shopno}">리뷰쓰기</a>
                </p>
                <p class="img"><img src=".${sdetail.ransrc}"></p>
                <p>운영시간 : ${sdetail.shoptime}</p>
                <p>전화번호 : ${sdetail.shoptel}</p>
                <p>매장주소 : ${sdetail.shopaddress}</p>
            </li>
        </ul>
        <h3>리뷰</h3>
        <ul> 
            <c:forEach items="${srlist}" var="list">
	            <li>
	                <p>${list.content}</p>
	            </li>
	        </c:forEach>
        </ul>
    </div>
</body>
</html>