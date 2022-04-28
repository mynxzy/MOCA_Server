<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOCA_Project</title>
    <!--웹폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!--css-->
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/info.css">
    <!--jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <div id="wrap">
        <div class="logoBox">
            <p class="logo"><img src="./resources/img/premium-icon-coffee-beans-3219333.png"></p>
            <h1><a href="/index">MOCA</a></h1>
        </div>
        <hr>
        <div class="infoBox">
            <div>
                <p class="title t1">MOCA를 만들게 된 이유</p>
                <div class="text tt1">
                    요즘 개인카페가 많이 늘어나고 있습니다<br>
                    저는 카페를 찾아다니는걸 좋아하는데,<br>
                    늘어난만큼 찾아가는 카페가 많아져서 참 좋았지만
                    찾아가면 문이 닫겨있거나 영업시간이 아니더라구요<br>
                    카페들이 영업시간을 인스타그램으로 공지하는데<br>
                    인스타그램을 잘 사용하지않는 저는 매번 공지를 확인하기가 힘들어서<br>
                    공지를 한곳에 모아서 표시하면 어떨까 해서 만들게 되었습니다.<br>
                </div>
            </div>
            <div>
                <p class="title t2">간략한 소개</p>
                <div class="text tt2">
                    회원가입과 로그인 절차를 거쳐 내리뷰를 클릭시<br> 
                    내가 쓴 리뷰만 보이도록 설정하였고,<br>
                    리뷰 수정과 리뷰 삭제가 가능하게 하였습니다.<br>
                    로그인 하였을때만 로그아웃이 표시되는점,<br>
                    로그인을 하지않고 내리뷰, 마이페이지, 1:1채팅을 클릭시<br>
                    로그인페이지로 넘어가게 설정하였습니다.
                </div>
            </div>
            <div>
                <p class="title t3">아쉬운점</p>
                <div class="text tt3">
                    카카오api를 이용하여 지도를 가져와서 좌표를 찾아 그 주변에 카페리스트를<br>
                    띄우고 싶었으나, 내 좌표를 가져오는게 불가능해 주변카페를 띄우지못한점.<br>
                </div>
            </div>
            <div>
                <p class="title t4">프로젝트를 끝낸 소감</p>
                <div class="text tt4">
                    처음 html과 css를 배울땐 별거아니네~ 이런생각이였지만<br>
                    javaScript와 java, jsp, mysql을 배우고난뒤<br>
                    개발 정말 어렵구나.. 생각이 들었습니다<br>
                    나는 이렇게 만들어야지 구상하고, 머릿속으론<br>
                    이건 이런식으로 저건 저런코드로 짜면되겠지?<br>
                    생각하면 내생각과는 다르게 흘러가고, 배치도 망가지고
                    에러투성이가 일상이였지만<br>
                    차근차근 에러나는부분을 타고가서 구글에 검색하여
                    수정하여 잘 돌아갈때!!!!<br>
                    그 짜릿함은 세상이 내껏만같은 느낌이였습니다<br>
                    내가 아무 생각없이 들락날락거리는 사이트들이<br>
                    얼마나 많은생각을 하여 수많은 수정을거치며<br>
                    만들어지는지 쉽게 만들어지는것 하나 없다고 생각하게 되었습니다.<br>
                    화려한 기능은 없지만 이 프로젝트를 끝 마침으로서
                    앞으로 더 많이 배우며 더 성장하는 개발자가 되기를 다짐하며,<br>
                    프로젝트를 봐주셔서 감사합니다 ^.^
                </div>
            </div>
        </div><!--infoBox-->
    </div>
    <script src="./resources/js/info.js"></script>
</body>
</html>