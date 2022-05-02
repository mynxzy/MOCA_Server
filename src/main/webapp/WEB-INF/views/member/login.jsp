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
    <!--css-->
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/sign.css">
    <!--jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>        
</head>
<body>
    <div id="wrap">
        <div class="title">
            <h1>로그인</h1>
            <p>
            	<a href="/index">홈으로</a>
            	<a href="/member/sign">회원가입</a>
            </p>
        </div><!--.title-->
        <form action="/member/login" method="post">
	        <div class="signForm">
	            <ul>
	                <li>
	                    <label for="userId"><span>아이디</span><input type="text" id="userId" class="box" name="u_id"></label>
	                </li>
	                <li>
	                    <label for="userPw"><span>비밀번호</span><input type="password" id="userPw" class="box" name="u_pw"></label>
	                </li>
	            </ul>
	            <p><button class="signChk">로그인</button></p>
	        </div><!--.signForm-->
        </form>
    </div><!--#wrap-->

</body>
</html>