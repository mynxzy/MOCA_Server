<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
	<!--웹폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!--css-->
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/chat.css">
    <!--jquery-->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- socket -->
    <script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
</head>
<body>
	<div id="wrap">
		<input type="hidden" value="${session.u_nick}" id="nick">
        <h2>1:1 채팅</h2>
        <div id="messageArea"></div>
        <div class="msgBox">
            <p>메세지 : 	<input type="text" id="message">
            <input type="button" value="전송" id="sendBtn">
        </div>
   </div>
</body>
<script type="text/javascript">
	var nick = $("#nick").val();
	$("#sendBtn").on("click", function(){
		console.log($("#message").val());
		sendMessage();
		$("#message").val('');
	})
	let sock = new SockJS("http://localhost:8080/chat");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	// 메세지 전송
	function sendMessage(){
		sock.send($("#message").val());
	}
	// 서버로부터 메세지를 받았을 때
	function onMessage(msg){
		var data = msg.data;
		$("#messageArea").append(nick+ " : " + data + "<br>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt){
		$("#messageArea").append("연결 끊김");
	}
</script>
</html>