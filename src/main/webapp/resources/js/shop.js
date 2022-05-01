/**
 * 
 */
var images = new Array('./resources/img/cafe1.jpg', './resources/img/cafe2.jpg', './resources/img/cafe3.jpg', './resources/img/cafe4.jpg', './resources/img/cafe5.jpg', './resources/img/cafe6.jpg');

$(function(){
	$("#shopChk").on("click", function(){
		var form = document.getElementById('signForm');
		var ran = $('input[name=ransrc]');
		var ranNum = Math.floor(Math.random()*6);
		ran.val(images[ranNum]);
		form.submit();
	})
})