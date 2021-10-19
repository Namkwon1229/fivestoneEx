<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀글 조회</title>

    <style>
    
	    * {
	      margin: 0; padding: 0;
	    }
	    
	    #wrap {
	      width:410px; height:319px;
	      margin: 10px 10px 10px 15px;
	    }
	    
	    #div1 {
	      width: 410px; height: 50px; background-color: #222; color: #fff; font-size: 16px;
	      vertical-align: middle; line-height: 50px; 
	    }
	    
	    #div1 div {
	      margin-left: 15px;
	    }
	    
	    #div2 {
	      font-size: 13px; margin: 20px 0 2px 0; line-height: 18px;
	    }
	    
	    #div3 {
	      background-color: #f7f3f0; padding: 18px 16px 18px 16px;
	      position: relative;
	    }
	    
	    #div3 input:nth-of-type(1) {
	      width: 145px; height: 14px; padding: 1px 2px;
	      position: absolute;
	    }
	    
	    #div3 input:nth-of-type(2) {
	      width: 215px; height: 14px; padding: 1px 2px;
	      position: absolute;
	    }
	    
	    #div4 {
	      height: 94px; text-align: center; padding: 10px 0 0 0;
	    }
	    
	    #confirm:focus {
	      outline: none;
	    }
	    
	    #div5 {
	      height: 31px; background-color: #f0f0f0; text-align: end; 
	    }
	    
	    #div5 img {
	      margin: 5px 10px;
  	    }
  	    
	</style>

</head>
<body>

	<div id="wrap">
	
		<form method="post" action="qnaPwCheck" name="frm">
			<div id="div1">
				<div>비밀번호 입력</div>
			</div>

			<div id="div2">
				<img src="http://bdmp-004.cafe24.com/cimg/bl.gif" alt="">글 작성
				시 입력한 비밀번호를 입력하세요.
			</div>
			<div id="div3">
				<img src="http://bdmp-004.cafe24.com/cimg/txt_pass.gif" alt="">
				<input type="password" name="qna_pw">
				<input type="hidden" name="qna_idx" value=${ qna_idx }>

			</div>
			<div id="div4">
				<input TYPE="IMAGE" src="http://bdmp-004.cafe24.com/bizdemo99969/img/component/board/board_9/confirm.gif" name="Submit"
					value="Submit" formaction="qnaPwCheck" onclick="popup_close()">
			</div>

			<div id="div5">
				<a href="javascript:window.close();"><img src="http://bdmp-004.cafe24.com/cimg/btn_close.gif" alt=""></a>
			</div>
		</form>
		
	</div>

	<script type="text/javascript">
		function popup_close()
		{
			opener.name="parent";
			document.frm.method = "post";
			document.frm.action = "qnaContent";
			document.frm.target = opener.window.name;
			document.frm.submit();
			window.open("about:blank", "_self").close();
		}
	</script>
	
</body>
</html>