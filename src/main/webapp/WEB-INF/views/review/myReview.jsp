<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--웹폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">    
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/review.css">
</head>
<body>
    <div id="wrap">
        <div class="row1">
            <h1>내리뷰</h1>
            <p><a href="reviewWrite">리뷰쓰기</a></p>
        </div>
        <div class="row2">
            <div class="reviewList">
                <ul>
                	<c:forEach items="${rlist}" var="list">
						<li>
                            <h2>${list.title}</h2>
                            <h3>${list.content}.</h3>
                            <p class="text">${list.regdate}</p>
                        	<a href="/review/reviewModify?rno=${list.rno}">수정</a>
		                    <a href="/review/reviewRemove?rno=${list.rno}&u_id=${list.u_id}">삭제</a>    	
                    </li>
					</c:forEach>
                </ul>
            </div>
        </div>
    </div><!--#wrap-->
</body>
</html>