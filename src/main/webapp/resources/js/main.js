/**
 * 
 */
// 지도
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
	};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴



// 헤더 메뉴 클릭
$(function(){
    $('.headerMenu').on('click', function(){
        $('.menu').stop(true).animate({
            'right' : '0'
        },1000)
    })
    $('.closeImg').on('click', function(){
        $('.menu').stop(true).animate({
            'right' : '-70%'
        },1000)
    })
    $('.cafeList').slick({
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        dots : true
      });
      var log = $("#u_id").val();
      if(log != null && log != ""){
      	$('.lastList').show();
      } else{
      	$('.lastList').hide();
      }
      
	// 로그인이 되었을때만 내리뷰를 눌렀을때 리뷰를 볼수있게 
	// 아닐시 login.jsp로 이동

//	$('#myrv').on('click' ,function(){
//		var log = $("#u_id").val();
//		if(log != null && log != ""){
//	         var form = document.createElement("form");
//	
//	         form.setAttribute("charset", "UTF-8");
//	         form.setAttribute("method", "Post");  //Post 방식
//	         form.setAttribute("action", "/review/myReview"); //요청 보낼 주소
//	         
//	         var hiddenField = document.createElement("input");
//	         hiddenField.setAttribute("type", "hidden");
//	         hiddenField.setAttribute("name", "u_id");
//	         hiddenField.setAttribute("value", log);
//	         
//	         form.appendChild(hiddenField);
//	         document.body.appendChild(form);
//	         form.submit();
//		} else{
//			console.log("값저장없음");
//			location.href = "/member/login";
//		}
//		location.href = "/review/myReview";
//	})
      
}) // 시작 function 



