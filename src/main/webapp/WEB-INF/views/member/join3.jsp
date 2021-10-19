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

		.flexboxAlignLeft{
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
        
        #infoText{
        	width : 60%;
            background-color : #ddd;
            margin-bottom : 20px;
            padding : 20px;
        }
 	
		.infoTextTitle{
			font-size : 1.6rem;
		}
		
		.infoTextContent{
			font-size : 1.5rem;
			color : #777777;
		}
 
 		#inputFormWrap{
 			width : 60%;
 		}
 		
 		.justInfoTitle{
 			font-size : 1.5rem;
 			color : #777777;
 			margin : 0;
 			padding : 0;
 			text-align : left;
 		}
 		
 		.inputTitle{
 			font-size : 1.3rem;
 			width : 20%;
 			background-color : #ddd;
 			text-align : center;
 		}
 
 		.inputContent{
 			font-size : 1.3rem;
 			width : 80%;
 			margin-left : 15px;
 		}
 
 		#member_id{
 			width : 150px;
 		}
        
        .inputTable{
        	width : 100%;
        	border : 1px solid #777777;
        	margin-bottom : 20px;
        }
        
        .addInfoThing{
        	border-bottom : 1px solid #777777;
        	margin-bottom : 20px;
        }
        
        .borderBottomSet{
        	height : 40px;
        	border-bottom : 1px solid #777777;
        }
        
        .classForMargin{
        	margin-right : 20px;
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
    
    <!-- ********************** -->
    <!-- * 회원가입 정보 입력 * -->
    <!-- ********************** -->
    <div id = "join" class = "flexboxAlign">
    
	    <div id = "innerLogin" class = "flexboxAlign">
	        <p class = "innerTitle">로그인</p>
	        <p class = "innerText">The design and maintenance are excellent.</p>
	    </div>
	
	    <div id = "welcome" class = "flexboxAlign">
	        <p class = "welcomeTitle">파이브스톤에 오신 것을 환영합니다.</p>
	        <p class = "welcomeContent">-이름과 이메일을 입력해주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</p>
	    </div>
	    
	    <div id = "infoText" class = "flexboxAlignLeft">
	    	<p class = "infoTextTitle">회원가입을 위해서 아래의 양식에 있는 내용을 입력해주셔야 합니다.</p>
	    	<p class = "infoTextContent">-회원님의 개인정보를 신중하게 보호하고 있으며 회원님의 동의 없이는 기재하신 회원정보가 누출되지 않습니다. 자세한 내용은 개인정보보호정책에서 확인하세요.</p>
	    </div>
	    
	    <p class = "justInfoTitle">기본정보</p>
	    
	    <div id = "inputFormWrap" class = "flexboxAlign">
		   <form action = "addMember" method = "post" >
	    		<table class = "inputTable">
	    		
					<tr class = "borderBottomSet">
						<td class="inputTitle">아이디</td>
						<td class="inputContent">
							<input type="text" class = "input" id = "member_id" name = "member_id">
							<a href="javascript: idCheck();"><img src="http://bdmp-004.cafe24.com/cimg/btn_iddupl.gif" alt=""></a>
							(영문 소문자, 숫자4~16자)
						</td>
					</tr>
   
					<tr class = "borderBottomSet">
						<td class="inputTitle">비밀번호</td>
						<td class="inputContent">
							<input type="password" class="input" id="member_pw" name="member_pw">
							<span>&nbsp;&nbsp;영문/최소 1개의 숫자 또는 특수문자('~!@^*()-_+[]{}\:,.&lt;&gt;/) 
							조합으로 8~16자리. </span>
						</td>
					</tr>
					
					<tr class = "borderBottomSet">
						<td class="inputTitle">비밀번호 확인</td>
						<td class="inputContent">
							<input type="password" class="input" id="pwForCheck">
							<a href="javascript: pwCheck();"><img src="http://bdmp-004.cafe24.com/cimg/btn_pwdupl.gif" alt="">비밀번호 확인</a>
						</td>
					</tr>
  					
					<tr class = "borderBottomSet">
						<td class="inputTitle">이름</td>
						<td class="inputContent">
							<input type="text" class="name" id="member_name" name="member_name">
						</td>
					</tr>

					<tr class = "borderBottomSet">
						<td class="inputTitle">이메일</td>
						<td class="inputContent">
							<input type="text" class="name" name="member_email_left"> @ 
							<input type="text" class="name" name="member_email_right">
						</td>
					</tr>
  
					<tr class = "borderBottomSet">
						<td class="inputTitle">이메일 수신여부</td>
						<td class="inputContent">
							<span>
								<input type="radio" name="member_email_receive" value="0">수신
							</span>
								
							<span>
								<input type="radio" name="member_email_receive" value="1">수신안함
							</span>
						</td>
					</tr>
  
					<tr class = "borderBottomSet">
						<td class="inputTitle">비밀번호 확인시 질문</td>
						<td class="inputContent">
							<select title="select" id="member_pw_question" name="member_pw_question">
								<option value="">========선택========</option>
								<option value="1">기억에 남는 추억의 장소는?</option>
								<option value="2">자신의 인생 좌우명은?</option>
								<option value="3">자신의 보물 제1호는?</option>
								<option value="4">가장 기억에 남는 선생님 성함은?</option>
								<option value="5">타인이 모르는 자신만의 신체비밀이 있다면?</option>
								<option value="6">추억하고 싶은 날짜가 있다면?</option>
								<option value="7">받았던 선물 중 기억에 남는 독특한 선물은?</option>
								<option value="8">유년시절 가장 생각나는 친구 이름은?</option>
								<option value="9">인상깊게 읽은 책 이름은?</option>
								<option value="10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
								<option value="11">자신이 두 번째로 존경하는 인물은?</option>
								<option value="12">친구들에게 공개하지 않은 어릴적 별명이 있다면?</option>
								<option value="13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
								<option value="14">다시 태어나면 되고 싶은 것은?</option>
								<option value="15">내가 좋아하는 캐릭터는?</option>
								<option value="16">나의 주민등록번호 끝자리는?</option>
							</select>
						</td>
					</tr>

					<tr class = "borderBottomSet">
						<td class="inputTitle">비밀번호 확인시 답변</td>
							<td class="inputContent">
							<input type="text" id="member_pw_answer" name="member_pw_answer">
						</td>
					</tr>
					
					<tr class = "borderBottomSet">
						<td class="inputTitle">성별</td>
						<td class="inputContent">
							<span>
								<input type="radio" name="member_gender" value="male">남자
							</span>
							
							<span>
								<input type="radio" name="member_gender" value="female">여자
							</span>
						</td>
					</tr>
  
					<tr class = "borderBottomSet">
						<td class="inputTitle">생년월일</td>
						<td class="inputContent">
							<select class="birth" title="select" name="member_birth_date_year">
								<option value="00">1900</option>
								<option value="01">1901</option>
								<option value="02">1902</option>
								<option value="03">1903</option>
								<option value="04">1904</option>
								<option value="05">1905</option>
								<option value="06">1906</option>
								<option value="07">1907</option>
								<option value="08">1908</option>
								<option value="09">1909</option>
								<option value="10">1910</option>
								<option value="11">1911</option>
								<option value="12">1912</option>
								<option value="13">1913</option>
								<option value="14">1914</option>
								<option value="15">1915</option>
								<option value="16">1916</option>
								<option value="17">1917</option>
								<option value="18">1918</option>
								<option value="19">1919</option>
								<option value="20">1920</option>
								<option value="21">1921</option>
								<option value="22">1922</option>
								<option value="23">1923</option>
								<option value="24">1924</option>
								<option value="25">1925</option>
								<option value="26">1926</option>
								<option value="27">1927</option>
								<option value="28">1928</option>
								<option value="29">1929</option>
								<option value="30">1930</option>
								<option value="31">1931</option>
								<option value="32">1932</option>
								<option value="33">1933</option>
								<option value="34">1934</option>
								<option value="35">1935</option>
								<option value="36">1936</option>
								<option value="37">1937</option>
								<option value="38">1938</option>
								<option value="39">1939</option>
								<option value="40">1940</option>
								<option value="41">1941</option>
								<option value="42">1942</option>
								<option value="43">1943</option>
								<option value="44">1944</option>
								<option value="45">1945</option>
								<option value="46">1946</option>
								<option value="47">1947</option>
								<option value="48">1948</option>
								<option value="49">1949</option>
								<option value="50">1950</option>
								<option value="51">1951</option>
								<option value="52">1952</option>
								<option value="53">1953</option>
								<option value="54">1954</option>
								<option value="55">1955</option>
								<option value="56">1956</option>
								<option value="57">1957</option>
								<option value="58">1958</option>
								<option value="59">1959</option>
								<option value="60">1960</option>
								<option value="61">1961</option>
								<option value="62">1962</option>
								<option value="63">1963</option>
								<option value="64">1964</option>
								<option value="65">1965</option>
								<option value="66">1966</option>
								<option value="67">1967</option>
								<option value="68">1968</option>
								<option value="69">1969</option>
								<option value="70">1970</option>
								<option value="71">1971</option>
								<option value="72">1972</option>
								<option value="73">1973</option>
								<option value="74">1974</option>
								<option value="75">1975</option>
								<option value="76">1976</option>
								<option value="77">1977</option>
								<option value="78">1978</option>
								<option value="79">1979</option>
								<option value="80">1980</option>
								<option value="81">1981</option>
								<option value="82">1982</option>
								<option value="83">1983</option>
								<option value="84">1984</option>
								<option value="85">1985</option>
								<option value="86">1986</option>
								<option value="87">1987</option>
								<option value="88">1988</option>
								<option value="89">1989</option>
								<option value="90">1990</option>
								<option value="91">1991</option>
								<option value="92">1992</option>
								<option value="93">1993</option>
								<option value="94">1994</option>
								<option value="95">1995</option>
								<option value="96">1996</option>
								<option value="97">1997</option>
								<option value="98">1998</option>
								<option value="99">1999</option>
								<option value="00">2000</option>
								<option value="01">2001</option>
								<option value="02">2002</option>
								<option value="03">2003</option>
								<option value="04">2004</option>
								<option value="05">2005</option>
								<option value="06">2006</option>
								<option value="07">2007</option>
								<option value="08">2008</option>
								<option value="09">2009</option>
								<option value="10">2010</option>
								<option value="11">2011</option>
								<option value="12">2012</option>
								<option value="13">2013</option>
								<option value="14">2014</option>
								<option value="15">2015</option>
								<option value="16">2016</option>
								<option value="17">2017</option>
								<option value="18">2018</option>
								<option value="19">2019</option>
								<option value="20">2020</option>
							</select>
							
							<select class="birth" title="select" name="member_birth_date_month">
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							
							<select class="birth" title="select" name="member_birth_date_day">
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
						</td>
					</tr>
                    
	    		</table>
	    		<p class = "justInfoTitle addInfoThing">부가정보</p>
	    		
	    		<div class = "flexboxRowAlign">
		    		<input class = "classForMargin" type = "image" src = "http://bdmp-004.cafe24.com/bizdemo99969/img/common/btn_confirm.gif" alt="" />
		    		<a href = "index"><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/btn_cancel.gif" alt="" /></a>
	    		</div>
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
		function idCheck(){
			
			var member_id = $('#member_id').val();
			
			$.ajax({
				url: 'idCheckAjax?member_id=' + member_id,
				type: 'get',
				success: function(data){
					console.log("1:중복됨, 0:중복안됨 data : " + data);
					
					if(data == 1){
						alert('중복된 아이디입니다..');
					}else{
						alert('사용할 수 있는 아이디입니다.');
					}
				},
				error: function(){
					alert('통신 실패.');
				}
			});
			
		}
		
		function pwCheck(){
			var first_pw = $('#member_pw').val();
			var sec_pw = $('#pwForCheck').val();
			
			if(first_pw == sec_pw){
				alert('비밀번호가 일치합니다.');
			}else{
				alert('비밀번호가 불일치합니다.');
			}
		}
	</script>

</body>
</html>