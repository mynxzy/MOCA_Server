/**
 * 
 */
var form = document.getElementById('signForm');

$(".signChk").on("click", function(){
	alret('정보수정이 완료되었습니다.');
	form.submit();
})