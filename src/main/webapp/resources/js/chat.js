/**
 * 
 */
$(function(){
	var nick = $("#nick").val();
	
	if(nick != null && nick != ""){
		$("#wrap").show();
	} else{
		location.href="/member/login";
	}
	
	
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
		$("#messageArea").append("<p class='mytext'>"+nick+ " : " + data + "</p>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt){
		$("#messageArea").append("연결 끊김");
	}
})
