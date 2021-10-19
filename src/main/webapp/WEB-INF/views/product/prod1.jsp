<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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



        /* ***************************************************************************************************** */
        /* ******************************************** 컨텐츠 입력 ******************************************** */
        /* ***************************************************************************************************** */
        .flexboxLtAlign{
            display : flex;
            flex-direction : column;
            justify-content : center;
            align-items : left;
        }

        #product{
            width : 100%;
            height : 100%;

            padding-top : 40px;
            padding-bottom : 40px;
        }

        #titleOfTitle{
            font-size : 2.8rem;
        }

        #textOfTitle{
            font-size : 1.4rem;
            color : #777777;
        }
        
        #mainTextDiv{
            width : 70%;
            margin-top : 40px;
            margin-bottom : 70px;
        }

        #mainTitle{
            font-size : 2.4rem;
        }

        #mainText{
            font-size : 1.3rem;
            color : #777777;
        }
      
        #mainContentDiv{
            width : 70%;
            margin-top : 70px;
        }

        .contentBox{
            width : 20%;
        }

        .contentImg{
            width : 100%;
        }
        
        .contentTitle{
            font-size : 1.6rem;
        }

        .contentText{
            font-size : 1.6rem;
            color : #777777;
            margin-top : 10px;
            margin-bottom : 30px;
        }

        .innerMainContent{
            margin-bottom : 40px;
        }

        #content1, #content2, #content3, #content5, #content6, #content7{
            margin-right : 40px;
        }

        #product .dropdown-menu{
            background-color : white;
            color : black;
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
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual03.jpg" alt="login slide">
        <div class = "positionSet flexboxAlign">
            <p id = "bannerTitle" class = "colorWhite">PRODUCT</p>
            <ol class="breadcrumb flexboxRowAlign noneBackground">
                <li class = "colorWhite"><a href="index"><img class = "" src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png" alt="home icon"></a>&nbsp>&nbsp</li>
                <li class = "colorWhite"><a href="prod1Form"><span class = "colorWhite">제품안내</span></a>&nbsp>&nbsp</li>
                <li class = "colorWhite"><a href="prod1Form"><span class = "colorWhite">제품안내01</span></a></li>
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
	                    <a href="prod1Form" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">제품안내</a>
	                    <ul class="dropdown-menu">
	                        <li><a class = "navDropText dropdown-item" href="introduceForm">회사소개</a></li>
	                        <li><a class = "navDropText dropdown-item" href="busi1Form">사업분야</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod1Form">제품안내</a></li>
	                        <li><a class = "navDropText dropdown-item" href="announceForm">커뮤니티</a></li>
	                        <li><a class = "navDropText dropdown-item" href="one2oneForm">고객지원</a></li>
	                    </ul>
	                </li>
	
	                <li class="dropdown nav2List flexboxAlign">
	                    <a href="prod1Form" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">제품안내01</a>
	                    <ul class="dropdown-menu">
	                        <li><a class = "navDropText dropdown-item" href="prod1Form">제품안내01</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod2Form">제품안내02</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod3Form">제품안내03</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod4Form">제품안내04</a></li>
	                    </ul>
	                </li>
                </ul>
                
            </div>
        </div>
    </nav>


    <!-- ***************************************************************************************************************************** -->
    <!-- ********************************************************컨텐츠 입력********************************************************** -->
    <!-- ***************************************************************************************************************************** -->
    <div id = "product">
        <div id = "innerProd" class = "flexboxAlign">
            <div id = "prodTitle" class = "flexboxAlign">
                <p id = "titleOfTitle">제품안내01</p>
                <p id = "textOfTitle">The design and maintenance are excellent.</p>
            </div>

            <div id = "mainContentDiv" class = "flexboxAlign">
                <div class = "innerMainContent flexboxRowAlign">
                    <div id = "content1" class = "contentBox flexboxAlign">
                        <a href="item1Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/57/460188342_bar-2421302.jpg" alt="content1">
                            <p class = "contentText">FS108</p>
                        </a>
                    </div>

                    <div id = "content2" class = "contentBox flexboxAlign">
                        <a href="item2Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/56/1300573813_product02.jpg" alt="content2">
                            <p class = "contentText">FS107</p>
                        </a>
                    </div>

                    <div id = "content3" class = "contentBox flexboxAlign">
                        <a href="item3Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/55/1275897643_whisky-2387726.jpg" alt="content3">
                            <p class = "contentText">FS106</p>
                        </a>
                    </div>

                    <div id = "content4" class = "contentBox flexboxAlign">
                        <a href="item4Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/54/1117905290_product04.jpg" alt="content4">
                            <p class = "contentText">FS105</p>
                        </a>
                    </div>
                </div>

                <div class = "innerMainContent flexboxRowAlign">
                    <div id = "content5" class = "contentBox flexboxAlign">
                        <a href="item5Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/53/1869299380_macbook-767806.jpg" alt="content5">
                            <p class = "contentText">FS104</p>
                        </a>
                    </div>

                    <div id = "content6" class = "contentBox flexboxAlign">
                        <a href="item6Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/52/350176467_fashion-1478813.jpg" alt="content6">
                            <p class = "contentText">FS103</p>
                        </a>
                    </div>

                    <div id = "content7" class = "contentBox flexboxAlign">
                        <a href="item7Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/51/740729943_product07.jpg" alt="content7">
                            <p class = "contentText">FS102</p>
                        </a>
                    </div>

                    <div id = "content8" class = "contentBox flexboxAlign">
                        <a href="item8Form" class = "flexboxAlign">
                            <img class = "contentImg" src="http://bdmp-004.cafe24.com/bizdemo99969/component/board/board_10/u_image/50/1691838651_product08.jpg" alt="content8">
                            <p class = "contentText">FS101</p>
                        </a>
                    </div>
                </div>
            </div>

            <div id = "findInput">
                <div class="input-group flexboxRowAlign">
                    <div class="input-group-btn">
                        <li class="dropdown">
                            <!-- <a href="#" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" aria-expanded="true">제목</a> -->
                            <a href="#" class="dropdown" data-toggle="dropdown" aria-expanded="true">제목</a>
                            <ul class="dropdown-menu">
                                <li>제목</li>
                                <li>내용</li>
                                <li>작성자</li>
                            </ul>
                        </li>
                    </div>
                    <input type="text" class="form-control" aria-label="...">
                </div>
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