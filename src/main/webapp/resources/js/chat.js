/**
 * 
 */
$("#sendBtn").click(function(){
	sendMessage();
	$("#message").val('');
})
let sock = new SockJS("http://localhost:8080/");
sock.onmessage = onMessage;
sock.onclose = onClose;

// 메세지 전송
function sendMessage(){
	sock.sendMessage($("#message").val());
}
// 서버로부터 메세지를 받았을 때
function onMessage(msg){
	var data = msg.data;
	$("#messageArea").append(data + "<br>");
}
// 서버와 연결을 끊었을 때
function onClose(evt){
	$("#messageArea").append("연결 끊김");
}
