<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOCA</title>
    <!--웹폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!--slick-->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <!--css-->
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/main.css">
    <!--jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!--slick jquery-->
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<body>
	<input type="hidden" value="${session.u_id}" id="u_id">
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1>
                    <a href="#" class="logo">
                        <img src="./resources/img/premium-icon-coffee-beans-3219333.png" alt="" class="headerLogo">
                        <p class="title">MOCA</p>
                    </a>
                </h1>
                <div>
                    <a href="#">
                        <img src="./resources/img/icons8-menu-50.png" alt="" class="headerMenu">
                    </a>
                </div>
            </div><!--.headerIn-->
            <div class="menu">
                <div class="close">
                    <a href="#" class="closeImg">
                        <img src="./resources/img/icons8-close-window-50.png" alt="">
                        <h1>MOCA</h1>
                    </a>
                </div>
                <div class="navi">
                    <ul id="navi">
                        <li>
                            <a href="/member/login">로그인/회원가입</a>
                        </li>
                        <li>
                            <a href="/review/myReview" id="myrv">내리뷰</a>
                        </li>
                        <li>
                            <a href="chat">1 : 1 채팅</a>
                        </li>
                        <li>
                        	<a href="/member/myPage">마이페이지</a>
                        </li>
                        <li>
                        	<a href="/shop/shopList">매장목록</a>
                        </li>
                        <li>
                        	<a href="/shop/shop">매장등록</a>
                        </li>
                        <li class="lastList">
                        	<a href="/member/logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
            </div><!--.menu-->
        </header>

        <div id="container">
            <div class="row1">
            	<form action="" class="searchBox">
                    <input type="text" name="search" placeholder="검색하실 카페명을 입력해주세요" class="searchInput">
                    <input type="button" value="검색" class="scBtn">
                </form>
                <div id="map"></div>
            </div><!--.row1-->
            <div class="row2">
                <h2>주변카페 LIST</h2>
                <ul class="cafeList">
	                <c:forEach items="${slist}" var="list">
						<li>
							<a href="/shop/shopDetail">
								<input type="hidden" value="${list.shopno}">
								<img src="./resources/img/cafe"+${list.shopno}+".jpg">
								<div id="imgBox"></div>
								<p>${list.shopname}</p>
							</a>
						</li>
					</c:forEach>
                </ul>
            </div><!--.row2-->
            <div class="row3">
                <a href="review/reviewWrite">
                    <h2>리뷰작성</h2>
                    <img src="./resources/img/right-arrow.png" alt="">
                </a>
            </div><!--.row3-->
        </div><!--#container-->

        <footer id="footer">
			<div class="fbox1">
                <ul>
                    <li>
                        copyrightⓒ
                    </li>
                    <li>
                        만든이 | 강민지
                    </li>
                    <li>
                        전화번호 | 010-6419-3100
                    </li>
                    <li>
                        email | alswl7742.naver.com
                    </li>
                </ul>
            </div>
            <div class="fbox2">
                <ul>
                    <li>
                        <a href="projectInfo">프로젝트 소개</a>
                    </li>
                    <li class="gitimg">
                        <a href="https://github.com/mynxzy/MOCA_Server.git"><img src="./resources/img/icons8-github-100.png"></a>
                    </li>     
                </ul>
            </div>
        </footer>
    </div><!--#wrap-->

	<!-- 카카오 aip -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8f9b7dd2b1b2b09aed9f6abe9a0cb94&libraries=services,clusterer"></script>
	<!--script-->
    <script src="./resources/js/main.js"></script>
</body>
</html>