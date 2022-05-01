<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매장등록</title>
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
            <h1>매장등록</h1>
            <p><a href="/index">홈으로</a></p>
        </div><!--.title-->
        <form action="/shop/shop" method="post" id="signForm">
	        <div class="signForm">
	            <ul>
	            	<li>
	            		<input type="hidden" name="ransrc" id="ran" value="">
	            	</li>
	                <li>
	                    <label for="shopName"><span>매장명</span><input type="text" id="shopName" name="shopname" class="box"></label>
	                </li>
	                <li>
	                    <label for="shopTel"><span>전화번호</span><input type="text" id="shopTel" name="shoptel" class="box"></label>
	                </li>
	                <li>
	                    <label for="address"><span>매장주소</span><input type="text" id="address" name="shopaddress" class="box"></label>
	                </li>
	                <li>
	                    <label for="time"><span>운영시간</span><input type="text" id="time" name="shoptime" class="box"></label>
	                </li>
	            </ul>
	            <p><button class="signChk" id="shopChk">확인</button></p>
        	</div><!--.signForm-->
        </form>
    </div><!--#wrap-->
  
    <!-- script -->
    <script type="text/javascript" src="../resources/js/shop.js"></script>
</body>
</html>