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

        }

        /* 스마트폰 해상도 */
        @media all and (max-width:767px)
                      and (orientation : portrait){
            html{ font-size : 40%; }

            #inputId{
                width : 100%;
                height : 100%;
                display : flex;
                flex-direction : column;
                align-items : center;
                justify-content : center;
            }

            #inputPassword{
                display : flex;
                flex-direction : column;
                align-items : center;
                justify-content : center;
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
            /* height : 80px; */
            height : 100%;
        }

        .navbar-nav > li{
            margin-left : 50px;
            /* font-size : 15px; */
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
        /* join */
        /********/
        #join{
            width : 100%;
            padding : 20px;
        }

        .innerTitle{
            font-size : 2.6rem;
            margin-top : 45px;
            margin-bottom : 15px;
        }

        .innerText{
            font-size : 1.3rem;
            color : #777777;
            margin-bottom : 40px;
        }

        #welcome{
            width : 60%;
            border : 1px solid lightgray;
            margin-bottom : 20px;
        }

        .welcomeTitle{
            font-size : 1.8rem;
            color : black;
            margin-top : 15px;
            margin-bottom : 5px;
        }

        .welcomeContent{
            font-size : 1.5rem;
            color : gray;
            margin-bottom : 15px;
        }

        #checkInfo{
            width : 60%;
            border : 1px solid #afafaf;
            background-color: #f3f3f3;
        }

        #innerCheckInfo{
            width : 35%;
            height : 300px;
        }

        .checkBtn{
            width : 70px;
            height : 70px;
            border : 1px solid #777777;
            margin-top : 15px;
            margin-left : 5px;
            background-color : white;
        }

        .setWidth{
            width : 250px;
            margin : 0;
            padding : 0;
        }

        .checkForm{
            padding : 0;
            margin : 0;
        }

        .inputName{
            font-size : 1.4rem;
            font-weight : bold;
            color : #505050;
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
                    <a class="" href="loginForm">LOGIN</a> &nbsp <a class="" href="joinForm">JOIN</a>
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
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual06.jpg" alt="login slide">
            <div class = "positionSet flexboxAlign">
                <p id = "bannerTitle" class = "colorWhite">MEMBER</p>
                <ol class="breadcrumb flexboxRowAlign noneBackground">
                    <li class = "colorWhite"><a href="index"><img class = "" src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png" alt="home icon"></a>&nbsp>&nbsp</li>
                    <li><a href="joinForm"><span class = "colorWhite">회원가입</span></a></li>
                </ol>
            </div>
    </div>

    <!-- ************** -->
    <!-- * 회원가입 폼 * -->
    <!-- ************** -->
    <div id = "join" class = "flexboxAlign">
        
        <div id = "innerLogin" class = "flexboxAlign">
            <p class = "innerTitle">로그인</p>
            <p class = "innerText">The design and maintenance are excellent.</p>
        </div>

        <div id = "welcome" class = "flexboxAlign">
            <p class = "welcomeTitle">파이브스톤에 오신 것을 환영합니다.</p>
            <p class = "welcomeContent">-이름과 이메일을 입력해주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</p>
        </div>

        <div id = "checkInfo" class = "flexboxAlign">
            <div id = "innerCheckInfo" class = "flexboxAlign">
                <form action="checkJoinInfo" method = "post" name = "member" onsubmit = "return checkValue();" class = "flexboxRowAlign checkForm">
                    <div class = "writeInfo">
                        <p class = "setWidth inputName">이  름</p>
                        <input class = "setWidth" type="text" id = "member_name" name = "member_name">
                        <p class = "setWidth inputName">이메일</p>
                        <input class = "setWidth" type="text" id = "member_email" name = "member_email">
                    </div>

                    <div class = "checkButton">
                       <button class = "checkBtn" type = "submit">확인</button>
                    </div>
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

	<script>

		function checkValue(){
			
			if(!document.member.member_id.value){ // empty : null OR 길이가 0 인 경우
				alert("아이디를 입력해주세요");
				document.getElementById('member_id').focus();
				return false;
			}
			
			if(!document.member.member_email.value){ // empty : null OR 길이가 0 인 경우
				alert("이메일을 입력해주세요");
				document.getElementById('member_email').focus();
				return false;
			}
		}
		
	</script>
	
</body>
</html>