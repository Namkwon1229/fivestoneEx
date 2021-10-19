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

        #checkTheBox{
            width : 60%;
        }

        .ovfSet{
            overflow : auto;
			font-size : 1.3rem;
            width : 100%;
            height : 200px;

            border : 1px solid black;
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

    <!-- ************* -->
    <!-- * 약관 동의 * -->
    <!-- ************* -->
    <div id = "join" class = "flexboxAlign">
        
        <div id = "innerLogin" class = "flexboxAlign">
            <p class = "innerTitle">로그인</p>
            <p class = "innerText">The design and maintenance are excellent.</p>
        </div>

        <div id = "welcome" class = "flexboxAlign">
            <p class = "welcomeTitle">파이브스톤에 오신 것을 환영합니다.</p>
            <p class = "welcomeContent">-이름과 이메일을 입력해주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</p>
        </div>

        <div id = "checkTheBox">
        	<form class = "flexboxAlign" action = "infoWrite" method = "post" name = "memberInfo" onsubmit = "return checkValue();">
	            <div>
	                <p>이용약관</p>
	                <p class = "ovfSet">
	                	[제1장 총칙]
	                	<br><br>
	                    제1조(목적)
	                    <br>
	                    이 약관은 *****가(이) 운영하는 인터넷 사이트(www.*****)의 회원가입과 서비스 이용에 대한 이용자의 권리, 의무와 책임사항을 규정함을 목적으로 합니다. 
	                    <br><br>                     
	                    제2조(정의)
	                    <br>
	                    ① '****'이란 회사가 재화나 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장과 사이트를 운영하는 사업자의 의미로도 사용합니다.   
	                    ② '이용자'란 '****'에 접속하거나 방문하여 이 약관에 따라 '****'가 제공하는 서비스를 받는 회원과 비회원을 말합니다.   
	                    ③ '회원'이라 함은 '****'에 개인정보를 제공하여 회원등록을 한 자로서, '****'의 정보를 지속적으로 제공받으며, '****'이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.   
	                    ④ '비회원'이라 함은 회원에 가입하지 않고 '****'이 제공하는 서비스를 이용하는 자를 말합니다  
	                    <br><br>                   
	                    제3조 (약관의 명시와 개정)
	                    <br>
	                    ① '****'은 이 약관의 내용과 상호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면에 게시합니다.  
	                    ② '****'은 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에 관한 법률, 방문판매등에 관한 법률, 소비자보호법 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.   
	                    ③ '****'이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 사이트의 초기화 면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.   
	                    ④ '****'이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 '****'에 송신하여 '****'의 동의를 받은 경우에는 개정약관조항이 적용됩니다.   
	                    ⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자 보호지침 및 관계 법령 또는 상관례에 따릅니다. 
	                    <br><br>                    
	                    제4조(서비스의 제공 및 변경)
	                    <br>
	                    ① '****'는 다음과 같은 서비스를 제공합니다. 
	                    재화 또는 상품에 대한 정보 제공 및 구매계약의 체결 
	                    구매계약이 체결된 재화 또는 상품의 배송 
	                    기타 ****가 정하는 서비스   
	                    ② '****'은 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·상품의 내용을 변경할 수 있습니다.   
	                    ③ '****'가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 '****'은 이로 인하여 이용자가 입은 손해를 배상하지 아니합니다. 단, '****'에게 고의 또는 과실이 있는 경우에는 그러하지 아니합니다.
	                    <br><br>                    
	                    제5조(서비스의 중단)
	                    <br>
	                    ① '****'은 컴퓨터 등 정보통신설비의 보수점검,교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다  
	                    ② 제1항에 의한 서비스 중단의 경우에는 '****'은 제8조에 정한 방법으로 이용자 에게 통지합니다  
	                    ③ '****'는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상하지 아니합니다. 단 '****'에게 고의 또는 과실이 있는 경우에는 그러하지 아니합니다. 
	                    <br><br>                    
	                    [제2장 회원가입계약]
	                    <br><br>                      
	                    제6조(회원가입)
	                    <br>    
	                    ① '****' 이용자는 '****'가 정한 가입 양식에 따라 이 약관에 동의한다는 의사 표시를 한 후 회원정보를 기입함으로서 회원가입을 신청합니다  
	                    ② '****'은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다. 
	                    가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한적이 있는 경우, 다만 제7조 제3항에 의한 회원자 격 상실후 3년이 경과한 자로서 사이트의 회원 재가입 승낙을 얻은 경우에는 예외로 한다. 
	                    등록 내용에 허위, 기재누락, 오기가 있는 경우 
	                    기타 회원으로 등록하는 것이 ****의 기술상 현저히 지장이 있다고 판단되는 경우   
	                    ③ 회원가입계약의 성립시기는 '****'의 가입신청거절 통보가 없는 이상 이용자가 회원강입 신청절차를 완료한 때로 합니다.  
	                    ④ 회원은 제15조 제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 '****'에 대하여 그 변경사항을 알려야 합니다
	                    <br><br>                       
	                    제7조(회원 탈퇴 및 자격 상실 등)  
	                    <br>
	                    ① 회원은 '****'에게 언제든지 탈퇴를 요청할 수 있으며 ****은 즉시 회원 탈퇴를 처리합니다  
	                    ② 회원이 다음 각 호의 사유에 해당하는 경우, '****'은 회원자격을 제한 및 정지시킬 수 있습니다
	                    가입 신청시에 허위 내용을 등록한 경우 
	                    '****' 을 이용하여 구입한 재화또는상품 등의 대금, 기타 '****' 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 
	                    다른 사람의 '****' 이용을 방해하거나 그 정보를 도용하는 등 전자거래 질서 를 위협하는 경우 
	                    '****' 을 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우   
	                    ③ '****' 회원 자격을 제한,정지 시킨 후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 '****'은회원자격을 상실시킬 수 있습니다.  
	                    ④ '****'가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.
	                    <br><br>                     
	                    제8조(회원에 대한 통지)
	                    <br>    
	                    ① '****'가 회원에 대한 통지를 하는 경우, 회원이 '****'에게 제출한 전자우편 주소로 할 수 있습니다.  
	                    ② '****'는 불특정다수 회원에 대한 통지의 경우 1주일이상 '****' 게시판에게시함으로서 개별 통지에 갈음할 수 있습니다.
	                    <br><br>                                    
	                    [제3장 구매계약]
	                    <br><br>                       
	                    제9조(구매신청)
	                    <br>
	                    '****'이용자는 '****'이용자는'****'상에서 이하의 방법에 의하여 구매를 신청합니다. 
	                    1.성명, 주소, 전화번호 입력 
	                    2.재화 또는 상품의 선택 
	                    3.결제방법의 선택 
	                    4.전화로 구매신청하는 방법 
	                    <br>
	                    구매신청의 취소는 상품 배송 절차가 시작되기 이전까지 해야 합니다. 당회사 영업시간중에 유선으로 통보하여야 합니다.  
	                    <br><br>                   
	                    제10조 (계약의 성립)
	                    <br>
	                    ① ****는 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다. 
	                    신청 내용에 허위, 기재누락, 오기가 있는 경우 기타 구매신청에 승낙하는 것이 **** 기술상, 및 업무 수행상 현저히 지장이 있다고 판단하는 경우   
	                    ② '****' 승낙이 제12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점 에 계약이 성립한 것으로 봅니다. 
	                    <br><br>                                    
	                    [제4장 대금결제]
	                    <br><br>                      
	                    제11조(지급방법)
	                    <br>
	                    '****'에서 구매한 재화 또는 상품에 대한 대금지급방법은 다음 각 호의 하나로 할 수 있습니다. 
	                    1.계좌이체 
	                    2.신용카드결제 
	                    3.온라인무통장입금
	                    <br>
	                    ① 회원이 상품을 구입할 때 사용할 수 있는 결제 수단에는 신용카드, 온라인 송금, 사이버캐시 등이 있습니다.
	                    ② 신용카드는 회원의 동의를 얻어 등록한 후 사용할 수 있습니다. 
	                    ③ 온라인 송금은 회원이 직접 ****(****) 계좌로 돈을 입금하는 방식입니다.
	                    ④ 사이버캐시는 '****'에서 현금처럼 사용할 수 있습니다.
	                    ⑤ 인터넷 뱅킹은 인터넷을 통해 다른 은행 계좌에서 **** 계좌로 직접 계좌 이체해 결제하는 방식입니다.
	                    <br>
	                    4.사이버캐시에 관한 규정 
	                    <br>
	                    ① 사이버캐시는 **** 사이트 내에서 마치 현금처럼 사용할 수 있는 전자 화폐입니다. 
	                    ② 사이버캐시는 '****'에서 물건을 구입할 때 자동으로 적립됩니다. 
	                    ③ 구매할 때 적립된 사이버캐시는 현금으로 환불 되지 않습니다.
	                    ④ 사이버캐시는 현금이나 신용카드와 함께 사용할 수 있습니다. 예를 들어 10,000원 짜리 상품을 구입할 때 1,000원의 사이버캐시가 있다면 9,000원만 현금이나 신용카드로 지불하면 됩니다.
	                    ⑤ 사이버캐시와 다른 결제 수단을 함께 사용할 경우 사이버캐시가 먼저 사용됩니다.
	                    ⑥ 사이버캐시는 1,000원 단위로 사용할 수 있습니다.
	                    ⑦ 회원을 탈퇴할 경우 사이버캐시는 모두 소멸됩니다. 
	                    <br><br>                    
	                    제12조(수신확인통지·구매신청 변경 및 취소)
	                    <br>    
	                    ① '****'은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다  
	                    ② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신 확인 통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.   
	                    ③ '****'은 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체없이 그 요청에 따라 처리합니다  
	                    <br><br>                                    
	                    [제5장 배송, 취소, 환불]
	                    <br><br>                    
	                    제13조(배송)
	                    <br>    
	                    ① 국내배송의 소요기간은 카드결제일 또는 주문후 입금한 익일을 기산일로 합니다. 
	                    일반택배 (주문일,공휴일 제외): 7일이내 
	                    우편배송:우편배송이 가능하다고 판단되는 상품(7일 소요) 
	                    천재지변 등 불가항력적인 사유 발생시 그 해당기간 및 공휴일 등 휴무일은 위 기간에서 제외 됩니다.     
	                    <br><br>                    
	                    제14조(환급, 반품 및 교환)
	                    <br>    
	                    ① '****'은 이용자가 구매 신청한 재화 또는 상품이 품절 등의 사유로 재화 또는 상품의 인도를 할 수 없을 때에는 지체 없이 그 사유를 이용 자에게 통지하고, 사전에 재화 또는 상품의 대금을 받은 경우에는 대금을 받은 날부터 3일이내에, 그렇지 않은 경우에는 그 사유 발생 일로 부터 3일 이내에 계약 해제 및 환급절차를 취합니다.  
	                    ② 다음 각 호의 경우에는 '****'은 배송된 재화일지 라도 재화를 반품받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다.
	                    다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다. 
	                    배송된 상품이 주문내용과 상이하거나 ****가 제공한정보와 상이할 경우 
	                    배송된 상품이 파손, 손상되었거나 오염되었을 경우 (단, 이용자의 책임있는 사유로 상품이 훼손된 경우는 제외합니다.) 
	                    재화가 약관에 명시된 배송기간 보다 늦게 배송된 경우(단, 물품수령자의 부재, 연락 두절등 수령자의 귀책 사유로 수령이 지체된 경우 지체된 기간은 제외 합니다.) 
	                    방문판매등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우 
	                    <br>
	                    제2항에 따라 상품 또는 상품의 하자로 인한 구매가 취소된 경우 그 반환에 필요한 일체의 경비는 '****'에서 부담합니다.단 고객의 단순변심으로 인한 구매취소의 경우에는 고객이 배송비를 부담 하셔야 합니다. 
	                    <br><br>
	                    [제6장 ****와 이용자의 의무사항]
	                    <br><br>
	                    제15조(개인정보보호)
	                    <br>    
	                    ① '****'는 이용자의 정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다. 
	                    성명 
	                    주민등록번호(회원의 경우) 
	                    주소 
	                    전화번호 
	                    <br>  
	                    ② '****' 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 이하 각 호의 경우를 제외하고는 반드시 당해 이용자의 동의를 받습니다. 
	                    법률에 특별한 규정이 있는 경우 
	                    전자거래 계약의 이행을 위해서 필요한 경우 
	                    재화등의 제공에 따른 요금정산을 위하여 필요한 경우 
	                    <br>  
	                    ③ 제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공 할 수 없으며, 이에 대한 모든 책임은 '****'가 책임을 집니다.
	                    다만, 다음의 경우에는 예외로 합니다. 
	                    배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소 ,전화번호)를 알려주는 경우 
	                    통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정개인을 식별할 수 없는 형태로 제공하는 경우 
	                    <br>  
	                    ④ '****'가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공+받는자, 제공목적 및 제공할 정보 의 내용)등 정보통신망 이용 촉진 등에 관한 법률 제16조 제3항이 규정 한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.  
	                    ⑤ 이용자는 언제든지 '****'가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 '****'는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 '****'가 그 오류를 정정 할 때까지 당해 개인정보를 이용하지 않습니다.  
	                    ⑥ '****'는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출,변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.   
	                    ⑦ '****' 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
	                    <br><br>                     
	                    제16조(회사의 의무)
	                    <br>    
	                    ① '****은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다.   
	                    ② '****'은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.   
	                    ③ '****'이 상품이나 용역에 대하여 「표시·광고의공정화에관한법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.   
	                    ④ '****'은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다. 
	                    <br><br> 
	                    제17조( 회원의 ID 및 비밀번호에 대한 의무)
	                    <br>    
	                    ① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.   
	                    ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.   
	                    ③ ID 및 비밀번호의 관리상 불충분, 사용자의 과실, 제3자의 사용 등에 의한 손해의 책임은 회원이 집니다.  
	                    ④   회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 ****에게 통보하고 '****'의 안내가 있는 경우에는 그에 따라 야 합니다. 제18조(이용자의 의무) 이용자는 다음 행위를 하여서는 됩니다. 
	                    <br><br>
	                    제18조(이용자의 의무)
	                    <br>    
	                    이용자는 다음 행위를 하여서는 안됩니다. 
	                    1. 신청 또는 변경시 허위내용의 등록 
	                    2. '****'에 게시된 정보의 변경 
	                    3. '****'이 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 
	                    4. '****' 기타 제3자의 저작권 등 지적재산권에 대한 침해 
	                    5. '****' 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 
	                    6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 사이트에 공개 또는 게시하는 행위 
	                    <br><br>
	                    [제7장 기타]
	                    <br><br>  
	                    제19조(연결'사이트'과 피연결'사이트' 간의 관계)
	                    <br>    
	                    ① '****'은 연결사이트가 독자적으로 제공하는 상품 또는 상품에 의하여 이용자와행하는 거래에 대하서는 보증 책임을 지지 않습니다.
	                    <br><br>
	                    제20조(저작권의 귀속 및 이용제한)
	                    <br>    
	                    ① '****' 작성한 저작물에 대한 저작권 기타 지적재산권은 ****에게 귀속합니다.   
	                    ② 이용자는 '****'를 이용함으로써 얻은 정보를 ****의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다..
	                    <br><br>  
	                    제21조(분쟁해결)
	                    <br>    
	                    ① '****'은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.   
	                    ② '****'은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.   
	                    ③ '****'과 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다. 
	                    <br><br>  
	                    제22조(재판권 및 준거법)
	                    <br>    
	                    ① '****'과 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.   
	                    ② '****'과 이용자간에 제기된 전자거래 소송에는 대한민국 법을 적용합니다.   
	                    <br><br>   
	                    제23조(약관외 준칙)
	                    <br>   
	                    당 약관에 명시되지 않은 사항은 전자거래 기본법, 전자서명법, 방문판매법 및 기타 관련법령의 규정에 의합니다.
	                    (시행일) 위 약관은 200*년 **월 **일 부터 시행합니다.
	                </p>
	                
	                <p><input type = "checkbox" id = "checkBox1" name = "checkBox1" value = "Y"/>위 약관에 동의합니다.</p>
					<br>
	            </div>
	
	            <div>
	                <p>개인정보보호정책</p>
	                <p class = "ovfSet">
	                    ::: 개인정보취급방침 ::::
						<br><br>
	                    OOOOO(이하 '회사'라 합니다.)은 회원의 사생활 및 개인정보를 적극적으로 보호하여 정보화 사회에서의 통신의 자유를 보장하고자 아래와 같이 개인정보취급방침을 명시하여 실천하고 있습니다.
						<br>
	                    회사의 개인정보취급방침은 관련 법률 및 정부 지침의 변경과 회사의 내부 정책 변화에 따라 변경될 수 있으며, 수시로 방문하셔서 그 내용을 확인하여 주시기 바랍니다.
						<br><br>
	                    1. 개인정보의 수집 방법 및 범위
	                    회사는 서비스의 이용을 위하여 회원 가입 시에 회원 정보를 기입하도록 합니다. 회원가입 시에 받는 기본 필수 정보에는 성명, 주민등록번호, 사업자등록번호, 성별, 주소, 핸드폰번호, 전자우편 주소, 연락처가 있습니다. 이외에 보다 나은 서비스를 위해 선택 정보인 직업, 취미, 월소득 등을 수집할 수 있습니다.
						<br><br>
	                    기타 서비스 이용과정 및 처리과정에서 생성되는 서비스 이용기록, 접속 로그, 쿠키, 접속 IP정보, 결재기록 등이 수집될 수 있으며, 추가적인 정보가 필요한 특정 서비스의 이용 시 추가 정보의 제공을 요청할 수 있습니다. 이 경우에도 기입하신 정보는 해당 서비스의 이용 및 사전에 밝힌 목적 이외에는 이용하지 않습니다.
						<br><br>
	                    2. 개인정보의 수집 목적 및 이용
	                    회사가 개인정보를 수집하는 목적은 양질의 서비스 제공 및 회원 개개인의 기호와 필요에 따른 맞춤화된 서비스를 제공해드리기 위한 것입니다.
						<br><br>
	                    회사는 서비스 제공에 따라 회원님의 동의 하에 광고성 정보를 전달할 수 있으며, 회원님 개인에 대한 정보를 바탕으로 좀 더 유용한 정보로서의 가치가 있는 광고를 선별적으로 전달됩니다. 성별, 연령별 기타 특정 조건의 집단에 대한 광고 게재 및 발송 시에도 회원의 개인정보는 광고를 의뢰한 개인이나 단체에 제공되지 않습니다.
						<br><br>
	                    3. 개인정보의 공유 및 제공
	                    회사는 원칙적으로 회원의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만 회원님이 공개 및 제공을 동의한 경우 또는 회사의 이용자 약관을 위배하거나 타인에게 피해를 주는 행위 등으로 법적인 조치가 요구되고 적법한 절차에 의해 관련 정부 기관의 요구가 있을 경우는 예외로 합니다.
						<br><br>
	                    4. 개인정보의 취급위탁
	                    회사는 보다 나은 서비스의 제공을 위해 아래와 같은 업체에 회원의 개인정보를 취급 위탁합니다. 또한 위탁계약 시 개인정보보호의 안전을 기하기 위하여 개인정보보호 관련 법규의 준수, 개인정보에 관한 제3자 공급 금지 및 사고시의 책임부담 등을 명확히 규정하고 있습니다.
	                    - 실명확인 : OO신용평가
	                    - 서버의 운영 및 관리 : 심플렉스인터넷㈜
	                    - 카드결제 : OOOO
						<br><br>
	                    5. 자신의 개인정보 열람, 수정 및 삭제
	                    회사의 회원은 언제든지 자신의 개인정보를 열람하거나 수정할 수 있으며, 회원 등록 해지를 통해서 개인정보의 삭제를 요청할 수 있습니다. 개인정보의 열람, 수정 및 삭제는 홈페이지 내 개인정보관리 페이지에서 하실 수 있습니다.
						<br><br>
	                    6. 개인정보의 보유 및 이용 기간
	                    회사의 서비스를 제공 받는 동안 회원의 개인정보는 회사가 계속 보유하고 서비스의 제공을 위해서 이용합니다.
	                    원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존 합니다.
						<br><br>
	                    (1) 회사 내부방침에 의한 정보보유 사유
	                    회원이 탈퇴한 경우에도 회사는 원활한 서비스의 제공 및 부정한 서비스의 이용을 방지하기 위하여 아래와 같이 회원정보를 보관합니다.
	                    1) 이름, 주민등록번호(여권번호/외국인등록번호), 이메일 주소, 전화번호
	                    - 보존이유 : 서비스 이용의 혼선방지, 분쟁해결 및 수사기관의 요청에 따른 협조
	                    - 보존기간 : 1 년
	                    2) 부정/불량이용기록 (부정/불량이용자의 개인정보 포함)
	                    - 보존이유 : 서비스의 부정 및 불량 이용 방지 및 부정/불량이용자의 재가입 방지
	                    - 보존기간 : 1 년
						<br><br>
	                    (2) 관련 법령에 의한 정보보유 사유
	                    상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계 법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.
	                    1) 계약 또는 청약철회 등에 관한 기록
	                    - 보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률
	                    - 보존기간 : 5년
	                    2) 대금결제 및 재화 등의 공급에 관한 기록
	                    - 보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률
	                    - 보존기간 : 5년
	                    3) 소비자의 불만 및 분쟁처리에 관한 기록
	                    - 보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률
	                    - 보존기간 : 3년
	                    4) 로그기록
	                    - 보존이유 : 통신비밀보호법
	                    - 보존기간 : 3개월
						<br><br>
	                    7. 개인정보의 파기절차
	                    회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.
						<br><br>
	                    종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고, 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
						<br><br>
	                    8. 개인정보 자동 수집 장치의 설치?운영 및 그 거부에 관한 사항
	                    회사는 회원에게 개별적으로 특화된 맞춤서비스를 제공하기 위해서 회원의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)'를 사용합니다. 쿠키는 당사의 웹사이트를 운영하는데 이용되는 서버가 사용자의 브라우저에 보내는 소량의 텍스트 파일로서 사용자의 컴퓨터 하드디스크에 저장되며, 사용자의 컴퓨터는 식별하지만 사용자를 개인적으로 식별하지는 않습니다.
						<br>
	                    (1) 쿠키 등 사용목적
	                    회사는 다음과 같은 목적을 위해 쿠키를 사용합니다.
	                    회원과 비회원의 접속빈도나 방문시간 등을 분석, 회사의 취향과 관심분야를 파악 및 자취 추적과 각종 이벤트 참여 정도 및 방문회수 파악 등을 통한 타겟 마케팅 및 개인맞춤서비스제공
						<br>
	                    (2) 쿠키설정거부방법
	                    회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 회원은 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
	                    설정방법의 예 : (인터넷 익스플로러의 경우) 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보
						<br>
	                    그러나 회사 홈페이지에 접속하여 서비스를 이용하기 위해서는 쿠키를 허용하여야 하며, 이를 거부할 경우 로그인이 필요한 회사의 서비스의 이용이 어려울 수 있습니다.
						<br><br>
	                    9. 개인정보관리책임자
	                    회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보관리책임자를 지정하고 있습니다.
	                    - 개인정보관리책임자
	                    성명 : OOO
	                    전화번호 : OOOO-OOOO
	                    이메일 :
						<br>
	                    회원은 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 에게 신고할 수 있습니다. 회사는 회원들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
						<br><br>
	                    10. 회원 및 법정 대리인의 권리와 그 행사방법
	                    회원 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를 요청할 수도 있습니다.
						<br>
	                    회원 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 가입해지(동의철회)를 위해서는 '회원탈퇴'를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.
						<br>
	                    회사는 회원 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 '회사가 수집하는 개인정보의 보유 및 이용기간'에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
						<br><br>
	                    11. 개인정보보호 관련 대책
	                    회사는 회원 본인의 비밀번호 요청 등에 의해 개인정보를 다룰 때 가능한 최선의 방법으로 본인임을 확인하고 안전하게 정보가 처리될 수 있도록 최선을 다합니다.
						<br>
	                    회사는 개인정보에 대한 접근권한을 개인정보관리책임자 등 개인정보관리업무를 수행하는 자, 기타 업무상 개인정보의 취급이 불가피한 자로 제한하며, 개인정보를 취급하는 직원에 대한 수시 교육을 통하여 개인정보취급방침의 준수를 항상 강조하고 있습니다.
						<br>
	                    위와 같은 회사의 노력 이외에 회원은 아이디와 비밀번호, 주민등록번호 등 개인정보가 인터넷 상에 노출되거나 타인에게 유출되지 않도록 주의하여야 합니다. 회원 본인의 부주의나 관리소홀로 아이디와 비밀번호 등 개인정보가 유출되었다면 이에 대해서 회사는 책임을 지지 않습니다.
	                    따라서, 회원의 아이디와 비밀번호는 반드시 본인만 사용하시고, 비밀번호를 자주 바꿔주시는 것이 좋으며, 비밀번호는 영문자, 숫자를 혼합하여 타인이 유추하기 어려운 번호를 사용하는 것이 좋습니다.
						<br>
	                    또한 서비스의 이용을 마친 후에는 항상 로그아웃을 하여 주시고 웹 브라우저를 종료하는 것이 좋습니다. 특히, 다른 사람과 컴퓨터를 공유하거나, 공공장소에서 이용하는 경우에 개인정보의 보안을 위해서는 이와 같은 절차가 더욱 필요합니다.
						<br>
	                    채팅, 게시판, 이메일 등을 통해 자신이 자발적으로 제공하는 개인정보는 다른 사람들에 의하여 본인의 의도와는 다르게 이용될 수 있다는 사실을 염두에 두어야 합니다. 회원님의 로그인 패스워드에 대한 보안을 유지할 책임은 회원님 자신에게 있으므로, 다른 사람에게도 공개되어 있는 공간에는 자신의 개인정보를 함부로 남겨서는 안됩니다. 또한 PC방이나, 기타 공공장소 등 주변에 다른 사람들이 많은 곳에서는 서비스를 이용하고 있는 동안 다른 사람들이 자신의 컴퓨터 화면을 볼 수도 있다는 사실을 염두에 두고 개인정보가 노출되지 않도록 주의하여야 합니다.
						<br><br>
	                    12. 개인정보관련 신고 및 분쟁조정
	                    개인정보침해에 대한 신고, 상담이 필요하신 경우에는 한국정보보호진흥원(KISA) 개인 정보 침해신고센터로 문의하시기 바랍니다. 또한, 귀하가 개인정보침해를 통한 금전적, 정신적 피해를 입으신 경우에는 개인정보분쟁조정위원회에 피해구제를 신청하실 수 있습니다.
						<br>
	                    개인정보 침해신고센터 (http://www.cyberprivacy.or.kr, 전화 1336)
	                    개인정보 분쟁조정위원회 (http://www.kopico.or.kr, 전화 1336)
	                    정보보호마크 인증위원회 (http://www.privacymark.or.kr, 전화 02-580-0533)
	                    대검찰청 인터넷범죄수사센터 (http://www.spo.go.kr, 전화 02-3480-3600)
	                    경찰청 사이버테러대응센터 (http://www.ctrc.go.kr, 전화 02-392-0330)
	                    경찰청 (http://www.police.go.kr)
						<br><br><br>
	                    시행일자 : 200 년 OO월 OO일
	                </p>

	                <p><input type = "checkbox" id = "checkBox2" name = "checkBox2" value = "Y"/>위 개인정보취급방침에 동의합니다.</p>
					<br>
	            </div>
	
	            <div>
	                <p>개인정보의 수집 및 이용목적</p>
	                <p class = "ovfSet">
	                    ▶ 개인정보의 수집 및 이용목적
	                    - 서비스 이용에 따른 본인식별, 실명확인, 가입의사 확인, 연령제한 서비스 이용
	                    - 고지사항 전달, 불만처리 의사소통 경로 확보, 물품배송 시 정확한 배송지 정보 확보
	                    - 신규 서비스 등 최신정보 안내 및 개인맞춤서비스 제공을 위한 자료
	                    - 기타 원활한 양질의 서비스 제공 등
						<br><br>
	                    ▶ 수집하는 개인정보의 항목
	                    - 이름, 이메일, 주민등록번호, 주소, 연락처, 핸드폰번호, 그 외 선택항목
						<br><br>
	                    ▶ 개인정보의 보유 및 이용기간
	                    - 원칙적으로 개인정보의 수집 또는 제공받은 목적 달성 시 지체 없이 파기합니다.
	                    - 다만, 원활한 서비스의 상담을 위해 상담 완료 후 내용을 3개월간 보유할 수 있으며
	                    전자상거래에서의 소비자보호에 관한 법률 등 타법률에 의해 보존할 필요가 있는 경우에는 일정기간 보존합니다.
	                </p>
	                
	                <p><input type = "checkbox" id = "checkBox3" name = "checkBox3" value = "Y"/>위 개인정보의 수집 및 이용목적에 동의합니다.</p>
	                <br>
	            </div>
	            
	            <input type = "submit" value = "회원가입">
	            
			</form>
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
			
			if( $("#checkBox1").is(":checked") == false ){
				alert("약관에 동의해주세요");
				document.getElementById('checkBox1').focus();
				return false;
			}
			
			if( $("#checkBox2").is(":checked") == false ){
				alert("개인정보취급방침에 동의해주세요");
				document.getElementById('checkBox2').focus();
				return false;
			}
			
			if( $("#checkBox3").is(":checked") == false ){
				alert("개인정보의 수집 및 이용목적에 동의해주세요");
				document.getElementById('checkBox3').focus();
				return false;
			}
			
			return true;
			
		}
	</script>

</body>
</html>