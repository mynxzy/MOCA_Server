/**
 * 
 */

var regExp = /^[a-zA-Z0-9]{4,12}$/; //id, password 
var regName = /^[가-힝]{2,}$/; //name 
var regMail = /[a-z0-9]{2,}@[a-z0-9-]{2,}.[a-z0-9]{2,}/i; //mail


function checkForm(){
	// input 가져오기
	var name = document.getElementById('userName');
	var id = document.getElementById('userId');
	var pw = document.getElementById('userPw');
	var nick = document.getElementById('nickName');
	var email = document.getElementById('email');
	
	var form = document.getElementById('signForm');
	
	if(!regName.test(name.value)) { //이름 확인 
		alert("이름을 다시입력해주세요"); 
		name.value=""; 
		name.focus(); 
		return false; 
	}
	if(!regExp.test(id.value)) { //id 
		alert("아이디를 다시 설정해주세요");
		id.value ="";
		id.focus();
		return false;
	}
	if(!regExp.test(pw.value)) { //password
		alert("비밀번호를 다시 설정해주세요"); 
		pw.value=""; 
		pw.focus(); 
		return false; 
	}
	if(nick.value == null && nick.value == ""){
		alert("닉네임을 다시 작성해주세요");
		nick.focus();
		return false;
	}
	if(!regMail.test(email.value)){ //메일주소 확인 
		alert("이메일 형식이 틀렸습니다"); 
		email.value=""; 
		email.focus(); 
		return false;
	}
	if(true){
		alert("회원가입이 되었습니다."); 
		form.submit();
	}

};