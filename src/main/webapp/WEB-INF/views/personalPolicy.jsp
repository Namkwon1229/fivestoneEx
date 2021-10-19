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
        
        .flexboxLeftAlign{
        	display : flex;
        	flex-direction : column;
        	align-items : center;
        	justify-content : left;
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
        #policyWrap{
            width : 100%;
            height : 100%;

            padding-top : 40px;
            padding-bottom : 40px;
        }

		#policyInner{
			width : 60%;
		}

        #titleOfTitle{
            font-size : 2.8rem;
        }

        #textOfTitle{
            font-size : 1.4rem;
            color : #777777;
        }

		#infoText{
			width : 100%;
			height : 400px;
			border : 1px solid #777777;
			padding : 20px;
		}
		
		#busiTitle{
			width : 100%;
		}
		
		.textOfInfoText{
			width : 100%;
			height : 400px;
			overflow : auto;
			font-size : 1.4rem;
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
                    <a href="busi1Form" class="dropdown-hover" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">제품안내</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText"  href="busi1Form">제품안내01</a></li>
                        <li><a class = "navDropText"  href="busi2Form">제품안내02</a></li>
                        <li><a class = "navDropText"  href="busi3Form">제품안내03</a></li>
                        <li><a class = "navDropText"  href="busi4Form">제품안내04</a></li>
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
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual02.jpg" alt="login slide">
        <div class = "positionSet flexboxAlign">
            <p id = "bannerTitle" class = "colorWhite">BUSINESS</p>
            <ol class="breadcrumb flexboxRowAlign noneBackground">
                <li class = "colorWhite"><a href="index"><img class = "" src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png" alt="home icon"></a>&nbsp>&nbsp</li>
                <li class = "colorWhite"><a href="busi1Form"><span class = "colorWhite">사업분야</span></a>&nbsp>&nbsp</li>
                <li class = "colorWhite"><a href="busi1Form"><span class = "colorWhite">사업분야01</span></a></li>
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
	                    <a href="busi1Form" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">사업분야</a>
	                    <ul class="dropdown-menu">
	                        <li><a class = "navDropText dropdown-item" href="introduceForm">회사소개</a></li>
	                        <li><a class = "navDropText dropdown-item" href="busi1Form">사업분야</a></li>
	                        <li><a class = "navDropText dropdown-item" href="prod1Form">제품안내</a></li>
	                        <li><a class = "navDropText dropdown-item" href="announceForm">커뮤니티</a></li>
	                        <li><a class = "navDropText dropdown-item" href="one2oneForm">고객지원</a></li>
	                    </ul>
	                </li>
                </ul>

                <li class="dropdown nav2List flexboxAlign">
                    <a href="busi1Form" class="nav2ListTitle dropdown-hover" data-hover="dropdown" aria-expanded="true">사업분야01</a>
                    <ul class="dropdown-menu">
                        <li><a class = "navDropText dropdown-item" href="busi1Form">사업분야01</a></li>
                        <li><a class = "navDropText dropdown-item" href="busi2Form">사업분야02</a></li>
                        <li><a class = "navDropText dropdown-item" href="busi3Form">사업분야03</a></li>
                        <li><a class = "navDropText dropdown-item" href="busi4Form">사업분야04</a></li>
                    </ul>
                </li>
            </div>
        </div>
    </nav>


    <!-- ************************************************************************* -->
    <!-- *******************************컨텐츠 입력******************************* -->
    <!-- ************************************************************************* -->
    <div id = "policyWrap" class = "flexboxAlign">
        <div id = "policyInner" class = "flexboxAlign">
            <div id = "busiTitle" class = "flexboxAlign">
                <p id = "titleOfTitle">개인정보보호정책</p>
                <p id = "textOfTitle">The design and maintenance are excellent.</p>
            </div>

  			<div id = "infoText" class = "flexboxLeftAlign">
  				<p class = "textOfInfoText">
	  					1조 총칙
	  					<br>
						ㅇㅇㅇ는 귀하의 개인정보보호를 매우 중요시하며, 「정보통신망이용촉진등에 관한법」상의 개인정보보호 규정 및 정보통신부가 제정한 「개인정보보호지침」을 준수하고 있습니다. ㅇㅇㅇ는 개인정보보호방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
						<br><br>
						2조 개인정보수집에 대한 동의
						<br>
						ㅇㅇㅇ는 귀하께서 홈페이지의 서비스 이용 또는 e-business 사이트의 이용약관의 내용에 대해 「동의한다」버튼 또는 동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 간주합니다.
						<br><br>
						3조 개인정보의 수집목전 및 이용목적
						<br>
						ㅇㅇㅇ는 귀하께서 홈페이지의 서비스 이용 또는 e-business 사이트의 이용약관의 내용에 대해 「동의한다」버튼 또는 동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 간주합니다.
						<br><br>
						4조 개인정보의 열람/정정
						<br>
						귀하는 언제든지 등록되어 있는 귀하의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 로그인 후 를 클릭하여 직접 열람 또는 정정하거나, 개인정보관리관리자에게 (서면, 전화, E-mail)로 연락하시면 즉시 조치하겠습니다.
						<br><br>
						5조 개인정보의 보유기간 및 이용기간
						<br>
						ㅇㅇㅇ 홈페이지는 수집된 개인정의 보유기간은 회원가입 하신 후 해지(탈퇴신청 등)시까지 입니다. 또한 해지시 ㅇㅇㅇ 홈페이지는 회원님의 개인정보를 재생이 불가능한 방법으로 즉시 파기하며 (개인정보가 제3자에게 제공된 경우에는 제3자에게도 파기하도록 지시합니다.) 다만 다음 각호의 경우에는 각 호에 명시한 기간동안 개인정보를 보유합니다.
						<br><br>
						6조 목적외 사용 및 제3자에 대한 제공
						<br>
						ㅇㅇㅇ 홈페이지는 귀하의 개인정보를 에서 고지한 범위내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업/기관에 제공하지 않습니다.
						<br><br>
						7조 개인정보의 위탁처리
						<br>
						ㅇㅇㅇ 홈페이지는 현재 회원의 개인정보를 자체적으로 처리하고 있습니다. 그러나 향상된 서비스의 제공을 위해서 귀하의 개인정보를 외부에 위탁하여 처리할 수 있습니다.
						<br><br>
						8조 쿠키에 의한 개인정보 수집
						<br>
						귀하의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 ㅇㅇㅇ 홈페이지는 개인정보관리담당자를 두어 귀하의 개인정보를 관리하고 있으며 개인정보보호와 관련하여 귀하가 의견과 불만을 제기할 수 있는 창구를 개설하고 있습니다. 귀하의 개인정보와 관련한 문의사항 및 불만 사항이 있으시면 아래의 개인정보관리담당자에게 연락주시기면 즉시 조치하여 처리결과를 통보하겠습니다.
						<br>
  				</p>
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