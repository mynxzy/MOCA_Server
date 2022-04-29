/**
 * 
 */
// 지도
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(map); 

// 카테고리로 은행을 검색합니다
ps.categorySearch('CE7', placesSearchCB, {useMapBounds:true}); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
        }       
    }
}


// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}


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
      
}) // 시작 function 

var images = new Array('./resources/img/cafe1.jpg', './resources/img/cafe2.jpg', './resources/img/cafe3.jpg', './resources/img/cafe4.jpg', './resources/img/cafe5.jpg', './resources/img/cafe6.jpg');

function imgCreate(){
	var ranNum = Math.floor(Math.random()*6);
	
	var x = document.createElement("IMG");
	x.src = images[ranNum];
	document.body.appendChild(x);
}

