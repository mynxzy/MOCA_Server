<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
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
            <h1>회원가입</h1>
            <p><a href="/index">홈으로</a></p>
        </div><!--.title-->
        <form action="/member/sign" method="post" id="signForm">
	        <div class="signForm">
	            <ul>
	                <li>
	                    <label for="userName"><span>이름</span><input type="text" id="userName" name="u_name" class="box"></label>
	                </li>
	                <li>
	                    <label for="userId"><span>아이디</span><input type="text" id="userId" name="u_id" class="box"></label>
	                </li>
	                <li>
	                    <label for="userPw"><span>비밀번호</span><input type="password" id="userPw" name="u_pw" class="box"></label>
	                </li>
	                <li>
	                    <label for="nickName"><span>닉네임</span><input type="text" id="nickName" name="u_nick" class="box"></label>
	                </li>
	                <li>
	                    <label for="userTel"><span>전화번호</span><input type="text" id="userTel" name="u_tel" class="box"></label>
	                </li>
	                <li>
	                    <label for="email"><span>이메일</span><input type="email" id="email" name="u_email" class="box"></label>
	                </li>  
	                <li>
	                    <label for="address"><span>주소</span><input type="text" id="address" name="u_address" class="box"></label>
	                </li>
	                <li>
	                    <label for="bNum"><span>사업번호</span><input type="text" id="bNum" name="b_number" class="box"></label>
	                </li>
	            </ul>
	            <p><button class="signChk" onclick="checkForm()">확인</button></p>
        	</div><!--.signForm-->
        </form>
    </div><!--#wrap-->
  
    <!-- script -->
    <script type="text/javascript" src="../resources/js/sign.js"></script>
</body>
</html>