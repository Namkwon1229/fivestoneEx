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

            html{ font-size : 50%; }

            #innerInfo{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #introInfoImg{
                width : 472px;
                height : 323px;
            }

            #introPrImg{
                width : 391px;
                height : 391px;
            }
            
            .introInfoAlign{
                margin-top : 30px;
            }

            #visionImgBox{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }
        
            #idOf2017, #idOf2016, #idOf2015{
                width : 100%;
            }

        }

        /* 스마트폰 해상도 */
        @media all and (max-width:767px)
                      and (orientation : portrait){

            html{ font-size : 40%; }

            #innerInfo{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #introInfoImg{
                width : 418px;
                height : 285px;
            }
            
            #introPrImg{
                width : 345px;
                height : 345px;
            }

            .introInfoAlign{
                margin-top : 30px;
            }

            #visionImgBox{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #idOf2017, #idOf2016, #idOf2015{
                width : 100%;
            }

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

        .contentTitle{
            font-size : 3.3rem;
        }

        .contentText{
            font-size : 1.5rem;
            color : #777777;
        }

        .flexboxLeftAlign{
            display : flex;
            flex-direction : column;
            justify-content : center;
            align-items : left;
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
        #lntroBanner{
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


        /********************/
        /* 최상단 회사 개요 */
        /********************/
        #introCom{
            width : 100%;
            height : 100%;
            margin-bottom : 40px;
        }

        #introPrMsg{
            width : 80%;
        }

        #introPr{
            margin-top : 30px;
            margin-bottom : 30px;
        }

        #introPrTitle, #prTitle{
            font-size : 2.4rem;
        }

        #introPrText, #prText{
            font-size : 1.4rem;
            color : gray;
        }

        #introPrImg{
            width : 460px;
            height : 460px;
            margin-top : 50px;
            margin-bottom : 50px;
        }

        /*************/
        /* 회사 소개 */
        /*************/
        #introInfo{
            background-color : #f1f1f1;
        }

        #innerInfo{
            width : 80%;
            margin-top : 100px;
            margin-bottom : 100px;
        }

        #infoTitle1{
            margin-bottom : 0;
        }


        #introInfoImg{
            width : 550px;
            height : 380px;
            margin-right : 25px;
        }

        .introInfoAlign{
            display : flex;
            flex-direction : column;
            justify-content : center;
            align-items : left;
        }

        .infoTitle{
            font-size : 2.5rem;
            margin-bottom : 10px;
        }

        .infoText{
            font-size : 1.4rem;
            color : #777777;
            margin-top : 30px;
            margin-bottom : 30px;
        }

        #infoListDiv{
            margin-left : 20px;
        }

        #introInfoList li{
            font-size : 1.4rem;
            color : gray;
            margin-bottom : 5px;
        }

        .redText{
            font-size : 1.4rem;
            color : red;
        }

        /**********/
        /* Vision */
        /**********/
        #vision{
            width : 100%;
            border-bottom : 1px solid #777777;
        }

        #visionIntro{
            margin-top : 40px;
            margin-bottom : 30px;
        }
        
        .visionContentBox{
            width : 230px;
            height : 320px;
            margin : 0 0 20px 20px;
            background-color : #f1f1f1;
            border : 1px solid #777777;
        }

        .visTitle{
            font-size : 1.8rem;
            font-weight : 500;
            margin-top : 20px;
            margin-bottom : 5px;
        }

        .visText{
            font-size : 1.2rem;
            color : gray;
        }
        
        .visBoxInnerText{
            width : 70%;
        }

        #visionImgBox{
            margin-bottom : 40px;
        }

        /***********/
        /* History */
        /***********/
        #history{
            width : 100%;
        }

        #innerHis{
            margin-top : 60px;
            margin-bottom : 100px;
        }

        .hisYear{
            font-size : 3.3rem;
            font-weight : bold;
            margin-right : 30px;
        }

        .hisMonth{
            margin-right : 20px;
        }

        .hisText{
            font-size : 1.4rem;
            color : gray;
        }

        #idOf2017, #idOf2016{
            border-bottom : 1px dotted #777777;
        }

        #idOf2017, #idOf2016, #idOf2015{
            width : 1000px;
            padding-top : 20px;

            display : flex;
            flex-direction : row;
            justify-content : left;
            align-items : center;
        }

        .lastMonthText{
            margin-bottom : 40px;
        }

        #innerHistoryList{
            margin-top : 30px;
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
            <!-- mr-auto : 마진 오른쪽 자동 -->
            <!-- navbar-nav : 내비바 메뉴 영역 -->
            <ul class="navbar-nav m-auto">
            <!-- active : 현재 선택된 요소 -->
            <!-- nav-item : 메뉴 아이템 -->
            <!-- nav-link : 메뉴 링크(클릭가능) -->
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
    <div id = "introBanner" class = "flexboxAlign">
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual01.jpg" alt="login slide">
            <div class = "positionSet flexboxAlign">
                <p id = "bannerTitle" class = "colorWhite">COMPANY</p>
                <ol class="breadcrumb flexboxRowAlign noneBackground">
                    <li class = "colorWhite"><a href="index"><img class = "" src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png" alt="home icon"></a>&nbsp>&nbsp</li>
                    <li class = "colorWhite"><a href="introduceForm"><span class = "colorWhite">회사소개</span></a>&nbsp>&nbsp</li>
                    <li><a href="introduceForm"><span class = "colorWhite">회사개요</span></a></li>
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
                <ul class="navbar-nav"></ul>
                <li class="dropdown nav2List flexboxAlign">
                    <a href="introduceForm" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">회사소개</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText dropdown-item" href="introduceForm">회사소개</a></li>
                        <li><a class = "navDropText dropdown-item" href="busi1Form">사업분야</a></li>
                        <li><a class = "navDropText dropdown-item" href="prod1Form">제품안내</a></li>
                        <li><a class = "navDropText dropdown-item" href="announceForm">커뮤니티</a></li>
                        <li><a class = "navDropText dropdown-item" href="one2oneForm">고객지원</a></li>
                    </ul>
                </li>

                <li class="dropdown nav2List flexboxAlign">
                    <a href="introduceForm" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">회사개요</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText dropdown-item" href="introduceForm">회사개요</a></li>
                        <li><a class = "navDropText dropdown-item" href="greetingForm">CEO인사말</a></li>
                        <li><a class = "navDropText dropdown-item" href="mapsForm">오시는길</a></li>
                    </ul>
                </li>
            </div>
        </div>
    </nav>

    <!-- ************************************************************************* -->
    <!-- *******************************컨텐츠 입력******************************* -->
    <!-- ************************************************************************* -->

    <!-- ******************** -->
    <!-- * 최상단 회사 개요 * -->
    <!-- ******************** -->
    <div id = "introCom" class = "flexboxAlign">
        <div id = "introTextDiv" class = "flexboxAlign">
            <div id = "introPr" class = "flexboxAlign">
                <p id = "introPrTitle">회사개요</p>
                <p id = "introPrText">The design and maintenance are excellent.</p>
            </div>

            <div id = "introPrMsg" class = "flexboxAlign">
                <p id = "prTitle">고객과의 신뢰와 디자인 가치 창출을, 최우선으로 생각합니다.</p>
                <p id = "prText">디자인을 통한 비지니스 네트워크를 구축하여 고객의 필요와 요구를 파악하고 기존 사업과 연계하여 시너지를 창출하며 고객 감동을 실현해 나갈 것입니다. 파이브스톤은 다양한 환경에 적응하며 경쟁하기 위해 모든 기술과 디자인 역량을 집중하고 고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고 있습니다.</p>
            </div>
        </div>
        <img id = "introPrImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0101.gif" alt="prImg">
    </div>

    <!-- ************* -->
    <!-- * 회사 소개 * -->
    <!-- ************* -->
    <div id = "introInfo" class = "flexboxAlign">
        <div id = "innerInfo" class = "flexboxRowAlign">
            <img id = "introInfoImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0102.jpg" alt="infoImg">
            
            <div class = "introInfoAlign">
                <div id = "infoTitleDiv">
                    <p id = "infoTitle1" class = "infoTitle">파이브스톤은 끊임없는 열정으로</p>
                    <p class = "infoTitle">디자인 가치를 창조합니다.</p>
                </div>
                <p class = "infoText">파이브스톤은 다양한 환경에 적응하며 경쟁하기 위해 모든 기술과 디자인 역량을 집중하고 고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고 있습니다. 오랫동안 쌓은 전문지식과 노하우를 바탕으로 고객과 함께하겠습니다.</p>
                <div id = "infoListDiv">
                    <ul id = "introInfoList">
                        <li>회사 : <span class = "redText">파이브스톤(FIVESTONE Company)</span></li>
                        <li>업 종 : 홈페이지제작</li>
                        <li>사 업 : 기업 홈페이지 구축(반응형웹, 모바일웹), 디자인, 그래픽</li>
                        <li>비 전 : 정직과 신뢰를 기반으로 한 디자인 가치창출</li>
                        <li>대 표 : 김성용</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!-- ************ -->
    <!-- *  Vision  * -->
    <!-- ************ -->
    <div id = "vision" class = "flexboxAlign">
        <div id = "visionIntro" class = "flexboxAlign">
            <p class = "contentTitle">VISION</p>
            <p class = "contentText">파이브스톤은 정직과 신뢰, 디자인으로 고객과 함께 합니다.</p>
        </div>

        <!-- 비젼 이미지 div -->
        <div id = "visionImgBox" class = "flexboxRowAlign">
            <div id = "visImgBoxAlign1" class = "flexboxRowAlign">
                <div id = "visFlex1" class = "visionContentBox flexboxAlign visBox">
                    <img id = "visImgFlex1" class = "visImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0103.png" alt="firstVis">
                    <div id = "visImgHoverFlex1"></div>
                    <div class = "visBoxInnerText flexboxAlign">
                        <p class = "visTitle">CREATIVE</p>
                        <p class = "visText">파이브스톤은 창조적인 디자인으로 고객과 함께합니다.</p>
                    </div>
                </div>
                <div id = "visFlex2" class = "visionContentBox flexboxAlign visBox">
                    <img id = "visImgFlex2" class = "visImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0104.png" alt="SecondVis">
                    <div id = "visImgHoverFlex2"></div>
                    <div class = "visBoxInnerText flexboxAlign">
                        <p class = "visTitle">CONFIDENCE</p>
                        <p class = "visText">파이브스톤은 고객과의 신뢰를 최우선으로 생각합니다.</p>
                    </div>
                </div>
            </div>
            <div id = "visImgBoxAlign2" class = "flexboxRowAlign">
                <div id = "visFlex3" class = "visionContentBox flexboxAlign visBox">
                    <img id = "visImgFlex3" class = "visImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0105.png" alt="thirdVis">
                    <div id = "visImgHoverFlex3"></div>
                    <div class = "visBoxInnerText flexboxAlign">
                        <p class = "visTitle">CONFIDENCE</p>
                        <p class = "visText">파이브스톤은 고객과의 신뢰를 최우선으로 생각합니다.</p>
                    </div>
                </div>
                <div id = "visFlex4" class = "visionContentBox flexboxAlign visBox">
                    <img id = "visImgFlex4" class = "visImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/company/img0106.png" alt="fourthVis">
                    <div id = "visImgHoverFlex4"></div>
                    <div class = "visBoxInnerText flexboxAlign">
                        <p class = "visTitle">PASSION</p>
                        <p class = "visText">파이브스톤은 끊임없는 열정으로 고객과 함께 성장합니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- *********** -->
    <!-- * History * -->
    <!-- *********** -->
    <div id = "history" class = "flexboxAlign">
        <div id = "innerHis">
            <div class = "flexboxAlign">
                <p class = "contentTitle">HISTORY</p>
                <p class = "contentText">설립이후 파이브스톤이 걸어온 길을 알립니다.</p>
            </div>

            <div id = "innerHistoryList">
                <div id = "idOf2017" class = "hisBorder">
                    <p class = "hisYear">2017</p>
                    <div class = "flexboxLeftAlign">
                        <p class = "hisMonthText"><span class = "hisMonth hisText">10</span><span class = "hisText">정직과 신뢰의 기업 파이브스톤</span></p>
                        <p class = "hisMonthText"><span class = "hisMonth hisText">06</span><span class = "hisText">홈페이지 구축을 위한 최고의 선택 파이브스톤</span></p>
                        <p class = "hisMonthText lastMonthText"><span class = "hisMonth hisText">05</span><span class = "hisText">함께 할 수 있는 좋은 친구 파이브스톤</span></p>
                    </div>
                </div>
                <div id = "idOf2016" class = "flexboxRowAlign hisBorder">
                    <p class = "hisYear">2016</p>
                    <div class = "flexboxLeftAlign">
                        <p class = "hisMonthText"><span class = "hisMonth hisText">10</span><span class = "hisText">정직과 신뢰의 기업 파이브스톤</span></p>
                        <p class = "hisMonthText"><span class = "hisMonth hisText">06</span><span class = "hisText">홈페이지 구축을 위한 최고의 선택 파이브스톤</span></p>
                        <p class = "hisMonthText lastMonthText"><span class = "hisMonth hisText">05</span><span class = "hisText">함께 할 수 있는 좋은 친구 파이브스톤</span></p>
                    </div>
                </div>
                <div id = "idOf2015" class = "flexboxRowAlign hisBorder">
                    <p class = "hisYear">2015</p>
                    <div class = "flexboxLeftAlign">
                        <p class = "hisMonthText"><span class = "hisMonth hisText">10</span><span class = "hisText">정직과 신뢰의 기업 파이브스톤</span></p>
                        <p class = "hisMonthText"><span class = "hisMonth hisText">06</span><span class = "hisText">홈페이지 구축을 위한 최고의 선택 파이브스톤</span></p>
                        <p class = "hisMonthText lastMonthText"><span class = "hisMonth hisText">05</span><span class = "hisText">함께 할 수 있는 좋은 친구 파이브스톤</span></p>
                    </div>
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