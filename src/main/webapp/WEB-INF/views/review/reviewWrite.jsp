<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- css -->   
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/myreview.css">
</head>
<body>
	<div id="wrap">
        <h2>리뷰작성</h2>
        <form action="/review/reviewWrite" method="post">
        	<input type="hidden" name="u_id" value="${session.u_id}">
            <input type="hidden" name="nick" value="${session.u_nick}">
            <div>
                <p>제목</p>
                <input type="text" name="title" class="title">
            </div>
            <div>
                <p>내용</p>
                <textarea rows="20" name="content" class="content"></textarea>
            </div>
            <p><input type="submit" value="등록" class="rBtn"></p>
        </form>
    </div>
</body>
</html>