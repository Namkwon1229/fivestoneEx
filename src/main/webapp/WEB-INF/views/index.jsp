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

        /*************/
        /* 대형 화면 */
        /*************/
        @media all and (min-width : 1200px){
            html{ font-size : 72%; }
        }

        /**********/
        /* PC화면 */
        /**********/
        @media all and (max-width : 1199px)
                    and (min-width : 960px){
            html{ font-size : 62.5%; }
        }

        /*****************/
        /* 태블릿 해상도 */
        /*****************/
        @media all and (max-width:959px)
                      and (min-width:768px){
            html{ font-size : 50%; }

            .carousel-caption{
                text-align : left;
                top : 15%;
                color : white;
            }
            
            #productAlign{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #InnerProductImgBox2{
                margin-top : 15px;
            }

            #bigImgFlex{
                width : 460px;
                height : 460px;
            }
            #bigImgHoverFlex{
                width : 460px;
                height : 460px;
            }

            #littleImgFlex1, #littleImgFlex2, #littleImgFlex3, #littleImgFlex4{
                width : 220px;
                height : 220px;
            }
            #littleImgHoverFlex1, #littleImgHoverFlex2, #littleImgHoverFlex3, #littleImgHoverFlex4{
                width : 220px;
                height : 220px;
            }
            
            .csAnnoun{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            .csAnnounBox{
                margin-bottom : 30px;
            }

            #innerCsIcon{
                display : flex;
                flex-direction : column;
                align-items : center;
                justify-content: center;
            }

            #csCenterIcon{
                width : 100%;
                height : 100%;
                margin : 0;
                padding : 0;
            }

            #csCenterQna, #csCenterEmp, #csCenterMap{
                width : 100%;
                height : 100%;
                margin : 0;
                padding : 0;
            }

            #businessImgBox{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }
            /* 280*450 / 280*350 */
            #busiFlex1, #busiFlex2, #busiFlex3, #busiFlex4{
                width : 238px;
                height : 382px;
            }

            #busiImgFlex1, #busiImgFlex2, #busiImgFlex3, #busiImgFlex4{
                width : 238px;
                height : 297px;
            }

            #busiImgHoverFlex1, #busiImgHoverFlex2, #busiImgHoverFlex3, #busiImgHoverFlex4{
                width : 238px;
                height : 297px;
            }

            #busiImgBoxAlign1{
                margin-bottom : 15px;
            }

        }

        /*******************/
        /* 스마트폰 해상도 */
        /*******************/
        @media all and (max-width:767px)
                      and (orientation : portrait){
            html{ font-size : 40%; }

            .carousel-caption{
                text-align : left;
                top : 0;
                color : white;
            }

            #productAlign{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #InnerProductImgBox2{
                margin-top : 15px;
            }

            .csAnnoun{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            .csAnnounBox{
                margin-bottom : 30px;
            }

            #innerCsIcon{
                display : flex;
                flex-direction : column;
                align-items : center;
                justify-content: center;
            }

            #csCenterIcon{
                width : 100%;
                height : 100%;
                margin : 0;
                padding : 0;
            }

            #csCenterQna, #csCenterEmp, #csCenterMap{
                width : 100%;
                height : 100%;
                margin : 0;
                padding : 0;
            }

            #businessImgBox{
                display : flex;
                flex-direction : column;
                justify-content : center;
                align-items : center;
            }

            #bigImgFlex{
                width : 380px;
                height : 380px;
            }
            #bigImgHoverFlex{
                width : 380px;
                height : 380px;
            }

            #littleImgFlex1, #littleImgFlex2, #littleImgFlex3, #littleImgFlex4{
                width : 180px;
                height : 180px;
            }
            #littleImgHoverFlex1, #littleImgHoverFlex2, #littleImgHoverFlex3, #littleImgHoverFlex4{
                width : 180px;
                height : 180px;
            }

            #littleImgBox1{
                display: flex;
                flex-direction : row;
                justify-content : center;
                align-items : center;
            }

            #littleImgBox2{
                display: flex;
                flex-direction : row;
                justify-content : center;
                align-items : center;
            }

            /* 280*450 / 280*350 */
            #busiFlex1, #busiFlex2, #busiFlex3, #busiFlex4{
                width : 196px;
                height : 315px;
            }

            #busiImgFlex1, #busiImgFlex2, #busiImgFlex3, #busiImgFlex4{
                width : 196px;
                height : 245px;
            }

            #busiImgHoverFlex1, #busiImgHoverFlex2, #busiImgHoverFlex3, #busiImgHoverFlex4{
                width : 196px;
                height : 245px;
            }

            #busiImgBoxAlign1{
                margin-bottom : 15px;
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
        	/* text-decoration: none;
            color: #5a5a5a; */
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


        /**********/
        /* 캐러셀 */
        /**********/
        #demo{
            margin : 0;
            padding : 0;
            height : 100%;
        }

        /* 내부 텍스트 위치 설정 */
        .carousel-caption{
            text-align : left;
            top : 35%;
            color : white;
        }

        .carousel-caption > h1{
            font-size : 7rem;
        }

        .carousel-caption > p{
            margin-bottom : 0;
            font-size : 17px;
            font-size : 1.7rem;
        }

        .btn{
            margin-top : 30px;
            width : 150px;
            height : 35px;
            font-size : 1.3rem;
            color : white;
            background-color : navy;
        }

        .btn:hover{
            background-color : black;
        }


        /*************/
        /* 회사 소개 */
        /*************/
        .introBtn{
            margin-top : 30px;
            width : 150px;
            height : 35px;
            font-size : 1.3rem;
            color : #777777;
            background-color : white;
            border : 1px solid #777777;
        }

        .introBtn:hover{
            background-color: navy;
        }

        .innerTitle{
            font-size : 3.2rem;
            margin-bottom : 30px;
            font-weight : 600;
        }

        .innerText{
            font-size : 1.4rem;
            margin-bottom : 0;
            color : #777777;
        }
        
        #intro{
            height : 100%;
            padding : 50px;
        }

        #innerIntro{
            height : 100%;
        }


        /*************/
        /* 상품 소개 */
        /*************/
        #product{
            height : 100%;
            padding : 50px;
            background-color : #f1f1f1;
        }

        #product > .btn{
            width : 80px;
            height : 30px;
        }

        #productText > .innerTitle{
            margin-bottom : 0;
        }

        #productText > .innerText{
            margin-bottom : 50px;
        }

        .bigImg{
            width : 580px;
            height : 580px;
            margin-right : 20px;
        }

        .littleImg{
            width : 280px;
            height : 280px;
            margin-right : 18px;
        }

        #littleImgBox1{
            margin-bottom : 20px;
        }

        .productBtn{
            width : 80px;
            border : 1px solid white;
            color : white;
            background-color : black;
        }

        .productBtn:hover{
            color : white;
            background-color : black;
        }

        .setPosition{
            position : relative;
        }

        .bigHoverEff{            
            width : 580px;
            height : 580px;
            position : absolute;
            background-color : black;
            color : white;
            top:0;
            opacity: 0;
        }
        
        
        .smallHoverEff{
            width : 280px;
            height : 280px;
            position : absolute;
            background-color : black;
            color : white;
            top:0;
            opacity: 0;
        }

        .bigHoverEff  > p{
            font-size : 2rem;
            font-weight : bold;
            margin-bottom : 40px;
        }

        .bigHoverEff:hover{
            opacity : 0.8;
        }

        
        .smallHoverEff  > p{
            font-size : 2rem;
            font-weight : bold;
            margin-bottom : 30px;
        }

        .smallHoverEff:hover{
            opacity : 0.8;
        }
        

        /************/
        /* 비즈니스 */
        /************/
        #business{
            height : 100%;
            padding : 50px;
        }

        #busiIntro > .innerTitle{
            margin-bottom : 0;
        }

        #busiIntro > .innerText{
            margin-bottom : 50px;
        }

        .businessContentBox{
            width : 280px;
            height : 450px;
            position : relative;
            margin : 0 0 20px 20px;
        }

        .businessBoxInnerText{
            height : 100px;
            border : 1px solid #b6b6b6;
            display : flex;
            flex-direction : column;
            align-items : left;
            justify-content : center;
        }

        .businessContentBox img{
            width : 280px;
            height : 350px;
        }

        .businessTitle{
            margin : 10px 10px;
            /* font-size : 15px; */
            font-size : 1.5rem;
        }

        .businessText{
            margin : 0 10px 10px 10px;
            /* font-size : 12px; */
            font-size : 1.2rem;
            color : #777777;
        }

        .busiBox:hover{
            filter:brightness(90%);
        }

        .busiHover{
            width : 280px;
            height : 350px;
            position : absolute;
            top : 0;
            opacity : 0;
            background-color : black;
        }

        .busiHover:hover{
            opacity : 0.6;
        }


        /**********/
        /* 인사말 */
        /**********/
        #greeting{
            margin : 0;
            padding : 0;
            height : 100%;
            width : 100%;
            position : relative;
        }

        #greetingText{
            font-size : 3rem;
            color : white;
            margin-top : 0;
            margin-bottom : 10px;
            position : absolute;
        }

        #greeting .innerText{
            font-size : 1.5rem;
            color : white;
            margin : 0;
        }

        .greetingBtn{
            margin-top : 30px;
            width : 150px;
            height : 35px;
            font-size : 1.3rem;
            color : white;
            background-color: transparent !important;
            border : 1px solid white;
        }


        /************/
        /* 고객센터 */
        /************/
        #csCenter{
            height : 100%;
            padding : 30px;
        }

        #csCenterText .innerTitle{
            margin-bottom : 0;
        }

        .csAnnoun{
            margin-top : 50px;
        }

        .csAnnounBox{
            display : flex;
            flex-direction : column;
            align-items : left;
            justify-content : center;
            border : 1px solid #777777;
            width : 400px;
            height : 180px;
        }

        .csCenterBox{
            width : 250px;
            height : 180px;   
        }

        .csCenterBox > a{
            padding-top : 15px;
        }

        .csCenterBox .img{
            width : 70px;
            height : 70px;
        }

        .csCenterQna{
            background-color : navy;
            margin-right : 15px;
        }

        .csCenterQna:hover{
            background-color : rgb(0, 0, 209);
        }

        .csCenterEmp{
            background-color : skyblue;
            margin-right : 15px;
        }

        .csCenterEmp:hover{
            background-color : rgb(179, 230, 250);
        }

        .csCenterMap{
            background-color : #777777;
        }

        .csCenterMap:hover{
            background-color : #b6b5b5;
        }

        .csCenterIconTitle{
            color : white;
            /* font-size : 15px; */
            font-size : 1.5rem;
            margin-top : 12px;
            margin-bottom : 5px;
        }

        .csCenterIconText{
            color : white;
            /* font-size : 12px; */
            font-size : 1.2rem;
        }

        .csAnnounBar{
            padding-left : 15px;
            border-bottom : 1px solid gray;
        }

        #csAnnounTitle{
            font-size : 1.6rem;
        }

        .announTitle{
            font-size: 1.3rem;
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
            
            <%
            	String member_id = (String)session.getAttribute("member_id");
            	
            	if(member_id == null){
            		// 로그아웃 상태
            %>
            	<span><a href="loginForm">LOGIN</a></span>
            <%	
            	}
            	else{
            		// 로그아웃 상태
            		if(member_id.length() == 0){
            %>
            			<span><a href="loginForm">LOGIN</a></span>
           	<%	
            		}
            		else{
            			// 로그인 상태
            %>
            			<span><a href="logout">LOGOUT</a></span>
            <%
            		}
            	}
            %>
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
                    <a class="" href="loginForm">LOGIN</a> &nbsp; <a href="joinForm">JOIN</a>
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

    <!-- ********** -->
    <!-- * 캐러셀 * -->
    <!-- ********** -->
    <div id="demo" class="carousel slide container-fluid align-center" data-ride="carousel" >
        <div class="carousel-inner"> 
            <!-- 슬라이드 쇼 --> 
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/visual01.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Creative web Design</h1>
                        <p>정직과 신뢰, 디자인을 최우선으로 생각하며 고객과 함께 할 수 있는</p>
                        <p>든든한 파트너가 되도록 최선을 다합니다.</p>
                        <a href="#"><button type="button" class="btn btn-outline-secondary">Learn More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/visual02.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Versatile web Design</h1>
                        <p>다양한 기업환경에 적용이 가능한 디자인으로 보다 큰 만족과 감동을</p>
                        <p>드리도록 최선을 다합니다.</p>
                        <a href="#"><button type="button" class="btn btn-outline-secondary">Learn More</button></a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/visual03.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Responsive web Design</h1>
                        <p>PC 및 모바일에서 접속하는 디바이스 환경에 최적으로 대응하는</p>
                        <p>반응형디자인으로 고객만족을 최우선으로 합니다.</p>
                        <a href="#"><button type="button" class="btn btn-outline-secondary">Learn More</button></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 인디케이터 --> 
        <ul class="carousel-indicators"> 
            <li data-target="#demo" data-slide-to="0" class="active"></li> 
            <!--0번부터시작--> 
            <li data-target="#demo" data-slide-to="1"></li> 
            <li data-target="#demo" data-slide-to="2"></li> 
        </ul> <!-- 인디케이터 끝 --> 
    </div>

    <!-- ************* -->
    <!-- * 회사 소개 * -->
    <!-- ************* -->
    <div id = "intro">
        <div id = "innerIntro" class = "flexboxAlign">
            <p class = "innerTitle">THE SPECIAL DESIGN GROUP</p>
            <p class = "innerText">파이브스톤은 다양한 환경에 적응하며 경쟁하기 위해 디자인 역량과 기술력에 집중하고</p>
            <p class = "innerText">고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고 있습니다.</p>
            <a href="introduceForm"><button type="button" class="introBtn btn-outline-secondary">Learn More</button></a>
        </div>
    </div>

    <!-- ************* -->
    <!-- * 상품 소개 * -->
    <!-- ************* -->
    <div id = "product" class = "flexboxAlign">
        <div id = "innerProduct">
            <div id = "productText" class = "flexboxAlign">
                <p class = "innerTitle">PRODUCT</p>
                <p class = "innerText">파이브스톤은 정직과 신뢰, 디자인으로 고객과 함께 합니다.</p>
            </div>

            <div id = "productAlign" class = "flexboxRowAlign container">

                <!-- 큰 책장 이미지 -->
                <div id = "InnerProductImgBox1">
                    <div class = "setPosition bigSetPosition">
                        <img id = "bigImgFlex" class = "bigImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-op01.jpg" alt="fristImg">
                        <div id = "bigImgHoverFlex" class = "bigHoverEff flexboxAlign">
                            <p>DFSA 101</p>
                            <a href="prod1Form">
                            	<button type="button" class="productBtn btn-outline-secondary">View</button>
                           	</a>
                        </div>
                    </div>
                </div>
                <!-- 작은 이미지들 -->
                <div id = "InnerProductImgBox2" class = "flexboxAlign">
                    <div id = "littleImgBox1" class = "flexboxRowAlign">
                        <div class = "setPosition smallBigPosition">
                            <img id = "littleImgFlex1" class = "littleImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-op02.jpg" alt="secondeImg">
                            <div id = "littleImgHoverFlex1" class = "smallHoverEff flexboxAlign">
                                <p>SAFE 102</p>
                                <a href="prod1Form"><button type="button" class="productBtn btn-outline-secondary">View</button></a>
                            </div>
                        </div>
                        <div class = "setPosition">
                            <img id = "littleImgFlex2" class = "littleImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-op03.jpg" alt="thridImg">
                            <div id = "littleImgHoverFlex2" class = "smallHoverEff flexboxAlign">
                                <p>XPYB 103</p>
                                <a href="prod2Form"><button type="button" class="productBtn btn-outline-secondary">View</button></a>
                            </div>
                        </div>
                    </div>
                    <div id = "littleImgBox2"  class = "flexboxRowAlign">
                        <div class = "setPosition">
                            <img id = "littleImgFlex3" class = "littleImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-op04.jpg" alt="fourthImg">
                            <div id = "littleImgHoverFlex3" class = "smallHoverEff flexboxAlign">
                                <p>ULQV 104</p>
                                <a href="prod3Form"><button type="button" class="productBtn btn-outline-secondary">View</button></a>
                            </div>
                        </div>
                        <div class = "setPosition">
                            <img id = "littleImgFlex4" class = "littleImg" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-op05.jpg" alt="fifthImg">
                            <div id = "littleImgHoverFlex4" class = "smallHoverEff flexboxAlign">
                                <p>ZMEG 105</p>
                                <a href="prod4Form"><button type="button" class="productBtn btn-outline-secondary">View</button></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- ************ -->
    <!-- * 비즈니스 * -->
    <!-- ************ -->
    <div id = "business" class = "flexboxAlign">
        <div id = "busiIntro" class = "flexboxAlign">
            <p class = "innerTitle">BUSINESS</p>
            <p class = "innerText">파이브스톤은 정직과 신뢰, 디자인으로 고객과 함께 합니다.</p>
        </div>

        <!-- 사업소개 & 사진 -->
        <div id = "businessImgBox" class = "flexboxRowAlign">
            <div id = "busiImgBoxAlign1" class = "flexboxRowAlign">
                <div id = "busiFlex1" class = "businessContentBox flexboxAlign busiBox">
                    <a href="busi1Form">
                        <img id = "busiImgFlex1" src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-mb01.jpg" alt="firstBusiness">
                        <div id = "busiImgHoverFlex1" class = "busiHover"></div>
                        <div class = "businessBoxInnerText">
                            <p class = "businessTitle">사업분야01</p>
                            <p class = "businessText">고객의 필요와 사업환경에 따라 맞춤형 디자인으로 보다 큰 감동을 드립니다.</p>
                        </div>
                    </a>
                </div>
                <div id = "busiFlex2" class = "businessContentBox flexboxAlign busiBox">
                    <a href="busi2Form">
                        <img id = "busiImgFlex2"  src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-mb02.jpg" alt="secondBusiness">
                        <div id = "busiImgHoverFlex2" class = "busiHover"></div>
                        <div class = "businessBoxInnerText">
                            <p class = "businessTitle">사업분야02</p>
                            <p class = "businessText">고객의 필요와 사업환경에 따라 맞춤형 디자인으로 보다 큰 감동을 드립니다.</p>
                        </div>
                    </a>
                </div>
            </div>
            <div id = "busiImgBoxAlign2" class = "flexboxRowAlign">
                <div id = "busiFlex3" class = "businessContentBox flexboxAlign busiBox">
                    <a href="busi3Form">
                        <img id = "busiImgFlex3"  src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-mb03.jpg" alt="thirdBusiness">
                        <div id = "busiImgHoverFlex3" class = "busiHover"></div>
                        <div class = "businessBoxInnerText">
                            <p class = "businessTitle">사업분야03</p>
                            <p class = "businessText">고객의 필요와 사업환경에 따라 맞춤형 디자인으로 보다 큰 감동을 드립니다.</p>
                        </div>
                    </a>
                </div>
                <div id = "busiFlex4" class = "businessContentBox flexboxAlign busiBox">
                    <a href="busi4Form">
                        <img id = "busiImgFlex4"  src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-mb04.jpg" alt="fourthBusiness">
                        <div id = "busiImgHoverFlex4" class = "busiHover"></div>
                        <div class = "businessBoxInnerText">
                            <p class = "businessTitle">사업분야04</p>
                            <p class = "businessText">고객의 필요와 사업환경에 따라 맞춤형 디자인으로 보다 큰 감동을 드립니다.</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- ********** -->
    <!-- * 인삿말 * -->
    <!-- ********** -->
    <div id = "greeting" class = "flexboxAlign">
        <img src = "http://bdmp-004.cafe24.com/bizdemo99969/img/main/visual04.jpg" alt="First slide">
        <div id = "greetingText" class = "flexboxAlign">
            <p class = "innerTitle">정직과 신뢰, 디자인</p>
            <p class = "innerText">파이브스톤은 오랫동안 쌓은 전문지식과 노하우를 바탕으로 고객과 함께하겠습니다.</p>
            <a href="greetingForm"><button type="button" class="greetingBtn btn-outline-secondary">Learn More</button></a>
        </div>
    </div>

    <!-- ************ -->
    <!-- * 고객센터 * -->
    <!-- ************ -->
    <div id = "csCenter">
        <div class = "flexboxAlign">
            <div id = "csCenterText" class = "flexboxAlign">
                <p class = "innerTitle">CS CENTER</p>
                <p class = "innerText">파이브스톤은 정직과 신뢰, 디자인으로 고객과 함께 합니다.</p>
            </div>

            <!-- 공지사항 -->
            <div class = "csAnnoun container row">
                <div class = "csAnnounBox col">
                    <div class = "csAnnounBar flexboxRowAlign">
                        <span id = "csAnnounTitle" class = "col">공지사항</span>
                        <a class = "col-3" href="announceForm"><span class = "announTitle">더보기</span></a>
                    </div><br>

                    <div id = "csAnnounList">
                    	<c:forEach var = "nDto" items = "${ nList }">
                    		<a class = "col-8" href="announceContent?notice_idx=${ nDto.notice_idx }">
                    			<span><li class = "announTitle">${ nDto.notice_title }</li></span>
                    		</a>
                    		<span class = "announDate col-4">${ nDto.notice_date }</span>
                    	</c:forEach>
                    </div>
                </div>

                <!-- QnA, 채용, MAP 아이콘 -->
                <div id = "csCenterIcon" class = "col">
                    <div id = "innerCsIcon" class = "csCenterIconAlign container row">
                        <div id = "csCenterQna" class = "csCenterBox csCenterQna col">
                            <a class = "flexboxAlign" href="one2oneForm">
                                <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-os01.png" alt="fristImg">
                                <p class = "csCenterIconTitle">묻고답하기</p>
                                <p class = "csCenterIconText">문의사항을 남기시면 친절히 답변드립니다.</p>
                            </a>
                        </div>
                        <div id = "csCenterEmp" class = "csCenterBox csCenterEmp col">
                            <a class = "flexboxAlign" href="employForm">
                                <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-os02.png" alt="secondImg">
                                <p class = "csCenterIconTitle">채용안내</p>
                                <p class = "csCenterIconText">당사와 함께 할 수 있는 인재를 모집합니다.</p>
                            </a>
                        </div>
                        <div id = "csCenterMap" class = "csCenterBox csCenterMap col">
                            <a class = "flexboxAlign" href="mapsForm">
                                <img src="	http://bdmp-004.cafe24.com/bizdemo99969/img/main/m-os03.png" alt="thirdImg">
                                <p class = "csCenterIconTitle">오시는길</p>
                                <p class = "csCenterIconText">당사의 약도 및 연락처를 보실 수 있습니다.</p>
                            </a>
                        </div>
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
                <a href="one2oneForm"><span class = "footer1Text">묻고답하기</span></a><span class = "footer1Text footer1Slash">|</span>
                <a href="/bootstrap/ex05/company/maps.html"><span class = "footer1Text">오시는길</span><span class = "footer1Text footer1Slash"></span></a>
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

    <!-- 카라셀 설정값 -->
    <script> 
        $('.carousel').carousel({ 
            interval: 2000,
            keyboard: true,
            pause: 'hover',
            slide: false,
            wrap: true,
            touch: true
        }) 
    </script> 
</body>
</html>