<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>파이브스톤</title>

    <style>
        /* font-size : 62.5 => 10px */
        /* 대형 화면 */
        @media all and (min-width : 1200px){
            html{ font-size : 72%; }

        }

        /* PC화면 */
        @media all and (max-width : 1199px)
                    and (min-width : 960px){
            html{ font-size : 62.5%; }

        }

         /* 태블릿 해상도 */
         @media all and (max-width:959px)
                      and (min-width:768px){

            html{ font-size : 55%; }

        }

        /* 스마트폰 해상도 */
        @media all and (max-width:767px)
                      and (orientation : portrait){

            html{ font-size : 48%; }

        }

        * {
            margin: 0; padding: 0;
        }

        a {
            text-decoration: none;
            color: #5a5a5a;
        }
        
        a:link {
            /* color: #5a5a5a; */
        }

        a:hover {
            color: #5a5a5a;
            text-decoration: none;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
            margin-top: 0;
        }

        .dropdown-toggle{
            display: block;
            margin-top : 0;
        }

        .flexboxAlign{
            display : flex;
            flex-direction : column;
            align-items : center;
            justify-content : center;            
        }

        .flexboxRowAlign{
            display : flex;
            flex-direction : row;
            align-items : center;
            justify-content : center;            
        }


        /*******/
        /* top */
        /*******/
        .top {
            /* width: 100%;  */
            height: 30px;
            color: #777777;
            /* font-size: 12px; */
            font-size: 1.2rem;
            font-weight: normal;
            text-align: right;
            background-color: #fff;
            border-bottom: 1px solid #ddd;      
        }

        .topMenu {
            /* width: 81%; */
            text-align: right;
            vertical-align: middle;
            line-height: 30px;  
        }

        .topMenu span {
            padding: 5px;
        }

        .topMenu a {
            margin-bottom: 0px;
            text-decoration: none;
            color: #777777;
        }

        .topMenu .home {
            background-image: url(http://bdmp-004.cafe24.com/bizdemo99969/img/common/home01.png);
            background-repeat: no-repeat; background-position: -10% -50%;
        }

        .home > a {
            padding: 0px 0px 0px 22px;
        }


        /*******/
        /* nav */
        /*******/
        .navbar{
            height : 100%;
        }

        .navbar-nav > li{
            margin-left : 50px;
            font-size : 1.5rem;
        }

        .navbar-brand{
            margin-left : 100px;
        }

        .dropdown-menu{
            background-color : black;
            color : white;
        }

        .navDropText{
            color : white;
            font-size : 1.4rem;
            margin-left : 10px;
        }

        /******************/
        /* 배너(MEMBER) */
        /******************/
        #loginBanner{
            position : relative;
            width : 100%;
            height : 100%;
        }

        .positionSet{
            position : absolute;
        }

        .colorWhite{
            color : white;
        }

        #bannerTitle{
            font-size : 4.5rem;
            font-weight : 400;
        }

        .breadcrumb{
            background-color: transparent !important;
        }

        /********/
        /* nav2 */
        /********/
        #nav2 .navbar{
            height : 70px;
        }

        #nav2{
            width : 100%;
            height : 50px;
            border : 1px solid #777777;
        }

        #nav2 li{
            list-style : none;
        }
        
        .nav2List{
            margin : 0;
            padding : 0;
            width : 200px;
            height : 50px;
            border-right : 1px solid #777777;

            display : flex;
            flex-direction : row;
            justify-content : start;
            align-items : center;
        }

        #innerNav2{
            font-size : 1.4rem;
            left : 30%;
        }

        #nav2 .navbar-nav > li{
            font-size : 1.5rem;
        }

        #nav2 .navbar-brand{
            width : 50px;
            height : 50px;
            background-color : rgb(25, 0, 95);
        }

        .nav2ListTitle{
            padding-left : 20px;
        }

        #nav2 .dropdown-menu{
            width : 100%;
            background-color : white;
            color : white;
            border : 1px solid #777777;
        }

        #nav2 #navbarCollapse{
            text-align : left;
        }

        #nav2Icon{
            color : white;
            text-align : center;
            line-height: 50px;            
        }

        #nav2 .navDropText{
            width : 200px;
            height : 50px;
            font-size : 2rem;
            color : black;
            font-size : 1.4rem;
            margin-left : 10px;
        }

        #nav2 .navDropText:hover{
            margin : 0;
            padding-left: 20px;
            background-color : navy;
            color : white;

            display : flex;
            flex-direction : row;
            justify-content : start;
            align-items : center;

        }



        /* ***************************************************************** */
        /* ************************** 컨텐츠 입력 ************************** */
        /* ***************************************************************** */
        #announce{
            width : 100%;
            height : 100%;

            padding-top : 40px;
            padding-bottom : 40px;
        }

        #announTitleDiv{
            width : 100%;
            margin-top : 20px;
            margin-bottom : 40px;
        }
   
        .numberPercent{
            width : 15%;
        }

        .titlePercent{
            width : 60%;
        }

        .datePercent{
            width : 25%;
        }

        #titleOfTitle{
            font-size : 2.8rem;
        }

        #textOfTitle{
            font-size : 1.4rem;
            color : #777777;
        }
      
        #announTable{
            width : 60%;
            margin-bottom : 80px;
        }

        #innerAnnounTable{
            width : 100%;
        }

        #innerAnnounTable th{
            padding-top : 15px;
            padding-bottom : 15px;

            text-align : center;
            font-size : 1.3rem;
            font-weight : bold;
            color : #777777;
            background-color : #f1f1f1;
            border-top : 3px solid #777777;
            border-bottom : 1px solid #f1f1f1;
        }

        #innerAnnounTable td{
            padding-top : 20px;
            padding-bottom : 20px;
            
            font-size : 1.3rem;
            color : #777777;
            border-bottom : 1px solid #f1f1f1;
        }

        .titleCenterAlign{
            text-align : center;
        }

        .titleLeftAlign{
            text-align: left;
            padding-left : 10px;
        }

        
        #findInput{
            display : flex;
            flex-direction : column;
            justify-content : center;
            align-items : left;
        }

        /**********/
        /* footer */
        /**********/
        #footer{
            height : 250px;
            background-color : rgb(43, 43, 43);
        }

        .innerFooter{
            padding : 30px;
        }

        #footer1{
            color : white;
            margin-top : 30px;
        }

        .footer1Text{
            color : white;
            font-size : 1.4rem;
        }

        .footer1Slash{
            margin : 0 10px;
        }

        #footer2{
            color : gray;
        }

        #footer2 > span {
            margin : 0;
            padding : 0;
        }

        #footer3 > a{
            margin-right : 15px;
        }

        .footerInfo{
            font-size : 1.2rem;
        }

    </style>

</head>

<body>
    <!-- *************** -->
    <!-- * top 메뉴 바 * -->
    <!-- *************** -->
    <div class="top">
        <div class="topMenu d-none d-md-block">
            <span class="home"><a href="index">HOME</a></span>
            <span><a href="loginForm">LOGIN</a></span>
            <span><a href="joinForm">JOIN</a> </span>
            <span><a href="mapsForm">CONTACT US</a></span>
        </div>
    </div>

    <!-- ***************** -->
    <!-- * 내비게이션 바 * -->
    <!-- ***************** -->
    <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
        <!-- navbar-brand : 로고나 텍스트 -->
        <a class="navbar-brand" href="index">
            <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/logo.png" alt="로고">
        </a>

        <button class="navbar-toggler" type="button" 
            data-toggle="collapse" data-target="#navbarCollapse" 
            aria-controls="navbarCollapse" aria-expanded="false" 
            aria-label="Toggle navigation">
            <!-- 확장 토글 아이콘(기본: 햄버거 아이콘) -->
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- collapse : 접혔다 폈다 하는 부분 정의 -->
        <!-- navbar-collapse : 접혔다 폈다 하는 내비바 -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav m-auto">
                <li class="nav-item d-sm-block d-md-none">
                    <a class="" href="loginForm">LOGIN</a> &nbsp; <a class="" href="joinForm">JOIN</a>
                </li>

                <li class="dropdown">
                    <a href="introduceForm" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" aria-expanded="true">회사소개</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText" href="introduceForm">회사개요</a></li>
                        <li><a class = "navDropText" href="greetingForm">CEO인사말</a></li>
                        <li><a class = "navDropText" href="mapsForm">오시는길</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="busi1Form" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" aria-expanded="true">사업분야</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText"  href="busi1Form">사업분야01</a></li>
                        <li><a class = "navDropText"  href="busi2Form">사업분야02</a></li>
                        <li><a class = "navDropText"  href="busi3Form">사업분야03</a></li>
                        <li><a class = "navDropText"  href="busi4Form">사업분야04</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="prod1Form" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">제품안내</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText"  href="prod1Form">제품안내01</a></li>
                        <li><a class = "navDropText"  href="prod2Form">제품안내02</a></li>
                        <li><a class = "navDropText"  href="prod3Form">제품안내03</a></li>
                        <li><a class = "navDropText"  href="prod4Form">제품안내04</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="announceForm" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">커뮤니티</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText"  href="announceForm">공지사항</a></li>
                        <li><a class = "navDropText"  href="promotionForm">홍보자료</a></li>
                        <li><a class = "navDropText"  href="employForm">채용안내</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="one2oneForm" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">고객지원</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText"  href="one2oneForm">1:1문의</a></li>
                        <li><a class = "navDropText"  href="qnaForm">묻고답하기</a></li>
                        <li><a class = "navDropText"  href="faqForm">FAQ</a></li>
                    </ul>
                </li>                         
            </ul>
        </div>
    </nav>

    <!-- *************** -->
    <!-- * 배너 Banner * -->
    <!-- *************** -->
    <div id = "loginBanner" class = "flexboxAlign">
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual04.jpg" alt="login slide">
        <div class = "positionSet flexboxAlign">
            <p id = "bannerTitle" class = "colorWhite">COMMUNITY</p>
            <ol class="breadcrumb flexboxRowAlign noneBackground">
                <li class = "colorWhite"><a href="index"><img class = "" src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png" alt="home icon"></a>&nbsp>&nbsp</li>
                <li class = "colorWhite"><a href="announceForm"><span class = "colorWhite">커뮤니티</span></a>&nbsp>&nbsp</li>
                <li><a href="announceForm"><span class = "colorWhite">공지사항</span></a></li>
            </ol>
        </div>
    </div>

    <!-- **************** -->
    <!-- * 내비게이션 2 * -->
    <!-- **************** -->
    <nav id = "nav2" class="navbar navbar-expand-md navbar-light bg-light">
        <div id = "innerNav2" class = "flexboxRowAlign">
            <div class = "flexboxAlign">
                <a class="navbar-brand flexboxAlign" href="index">
                    <span id = "nav2Icon">H</span>
                </a>
            </div>

            <button class="navbar-toggler" type="button" 
                data-toggle="collapse" data-target="#navbarCollapse" 
                aria-controls="navbarCollapse" aria-expanded="false" 
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav">
	                <li class="dropdown nav2List flexboxAlign">
	                    <a href="announceForm" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">커뮤니티</a>
	                    <ul class="dropdown-menu">
	                        <li><a class = "navDropText dropdown-item" href="introduceForm">회사소개</a></li>
	                        <li><a class = "navDropText dropdown-item" href="busi1Form">사업분야</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod1Form">제품안내</a></li>
	                        <li><a class = "navDropText dropdown-item" href="announceForm">커뮤니티</a></li>
	                        <li><a class = "navDropText dropdown-item" href="one2oneForm">고객지원</a></li>
	                    </ul>
	                </li>
	
	                <li class="dropdown nav2List flexboxAlign">
	                    <a href="announceForm" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">공지사항</a>
	                    <ul class="dropdown-menu">
	                        <li><a class = "navDropText dropdown-item" href="announceForm">공지사항</a></li>
	                        <li><a class = "navDropText dropdown-item" href="promotionForm">홍보자료</a></li>
	                        <li><a class = "navDropText dropdown-item" href="employForm">채용안내</a></li>
	                    </ul>
	                </li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- ************************************************************************* -->
    <!-- *******************************컨텐츠 입력******************************* -->
    <!-- ************************************************************************* -->
    <div id = "announce">
        <div id = "innerAnnounce" class = "flexboxAlign">
            <div id = "announTitleDiv" class = "flexboxAlign">
                <p id = "titleOfTitle">공지사항</p>
                <p id = "textOfTitle">The design and maintenance are excellent.</p>
            </div>
            
            <div id = "announTable" class = "flexboxAlign">
                <table id = "innerAnnounTable">
                    <tr>
                        <th class = "numberPercent">번호</th>
                        <th class = "titlePercent">제목</th>
                        <th class = "datePercent">작성일</th>
                    </tr>

            		<c:forEach var = "nDto" items = "${ nList }">
						<tr class = "align">
							<td class = "numberPercent titleCenterAlign">${ nDto.notice_idx }</td>
                            <td class = "titlePercent titleLeftAlign"><a href="announceContent?notice_idx=${ nDto.notice_idx }">${ nDto.notice_title }</a></td>
                            <td class = "datePercent titleCenterAlign">${ nDto.notice_date }</td>
						</tr>
					</c:forEach>					
                </table>
            </div>

            <div id = "findInput">
            	<form action = "announceSearch" method = "post">
            		<select class="selectBox" title="select" name="searchTarget">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>

					<input type="text" id="searchWord" name="searchWord">

					<input type = "image" src = "http://bdmp-004.cafe24.com/bizdemo99969/img/component/board/board_1/search.gif" alt="" />
            	</form>
            </div>

        </div>
    </div>


    <!-- ********** -->
    <!-- * footer * -->
    <!-- ********** -->
    <div id = "footer">
        <div class = "flexboxAlign innerFooter">
            <div id = "footer1 flexboxAlign">
                <a href="introduceForm"><span class = "footer1Text">회사소개</span></a><span class = "footer1Text footer1Slash">|</span>
                <a href="personalPolicyForm"><span class = "footer1Text">개인정보보호정책</span></a><span class = "footer1Text footer1Slash">|</span>
                <a href="emailPolicyForm"><span class = "footer1Text">이메일무단수집거부</span></a><span class = "footer1Text footer1Slash">|</span>
                <a href="qnaForm"><span class = "footer1Text">묻고답하기</span></a><span class = "footer1Text footer1Slash">|</span>
                <a href="mapsForm"><span class = "footer1Text">오시는길</span></a>
            </div>
            <br>
            <div id = "footer2" class = "flexboxAlign">
                <span class = "footerInfo">회사 : 파이브스톤. 주소 : 경기도 고양시 삼송로 193번길 28-3 하준빌딩401호. 대표 : 김성용.</span>
                <span class = "footerInfo">고객지원 : 010-2709-0828. FAX : 070-777-5555. EMAIL : fivestone55@daum.net. 사업자등록번호 : 780-42-00047. 통신판매업 : 제2015-경기-00974호</span>
                <br>
                <p class = "footerInfo">COPYRIGHT(C) 2020 FIVESTONE. ALL RIGHT RESERVED.</p>
            </div>
            <div id = "footer3" class = "flexboxRowAlign">
                <a href="#">
                    <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon01.png" alt="facebook">
                </a>
                <a href="#">
                    <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon02.png" alt="blog">
                </a>
                <a href="#">
                    <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon03.png" alt="insta">
                </a>
                <a href="#">
                    <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon04.png" alt="kakao">
                </a>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>