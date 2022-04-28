<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
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
	       <h1>회원정보수정</h1>
	       <p><a href="/member/delete">회원탈퇴</a></p>
	   </div><!--.title-->
	   
	   <form action="/member/myPage" method="post" id="signForm">
	    <div class="signForm">
	        <ul>
	            <li>
	                <label for="userName">
	                	<span>이름</span><input type="text" id="userName" name="u_name" class="box" value="${mmodify.u_name}" readonly>
	                </label>
	            </li>
	            <li>
	                <label for="userId">
	                	<span>아이디</span><input type="text" id="userId" name="u_id" class="box" value="${mmodify.u_id}" readonly>
	                </label>
	            </li>
	            <li>
	                <label for="userPw">
	                	<span>비밀번호</span><input type="password" id="userPw" name="u_pw" class="box" value="${mmodify.u_pw}">
	                </label>
	            </li>
	            <li>
	                <label for="nickName">
	                	<span>닉네임</span><input type="text" id="nickName" name="u_nick" class="box" value="${mmodify.u_nick}">
	                </label>
	            </li>
	            <li>
	                <label for="userTel">
	                	<span>전화번호</span><input type="text" id="userTel" name="u_tel" class="box" value="${mmodify.u_tel}">
	                </label>
	            </li>
	            <li>
	                <label for="email">
	                	<span>이메일</span><input type="email" id="email" name="u_email" class="box" value="${mmodify.u_email}">
	                </label>
	            </li>  
	            <li>
	                <label for="address">
	                	<span>주소</span><input type="text" id="address" name="u_address" class="box" value="${mmodify.u_address}">
	                </label>
	            </li>
	        </ul>
	        <p><button class="signChk">수정</button></p>
	   	</div><!--.signForm-->
	    </form>
	</div><!--#wrap-->
</body>
</html>