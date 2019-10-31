<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		n=0;
		$("#icon").click(function(){
			if(n==0)
				{
					$("#main").css('box-shadow','inset 0px 0px 0px 30px black,inset 0px -70px 0px 30px black');
					$("#main").css('background-color','rgba(0,0,0,.2)');
					
					$("#m1").animate({top:'40%'},200);
					$("#m2").animate({top:'40%'},200);
					$("#m3").animate({top:'40%'},200);
					$("#m4").animate({top:'40%'},200);
					$("#m5").animate({top:'40%'},200);
						n=1;
				}
			else{
					$("#main").css('box-shadow','inset 0px 0px 0px 0px black,inset 0px 0px 0px 0px black');
					$("#main").css('background-color','rgba(0,0,0,0)');
					
					$("#m1").animate({top:'100%'},200);
					$("#m2").animate({top:'100%'},200);
					$("#m3").animate({top:'100%'},200);
					$("#m4").animate({top:'100%'},200);
					$("#m5").animate({top:'100%'},200);
						n=0;
				}
		});
	});
</script>

<style type="text/css">
	
	 @font-face{
    font-family: PAC-FONT;
    src:url(font/PAC-FONT.TTF) format('truetype');
	} 
	
	body {
		margin: 0px;
		padding: 0px;
		background-color: #3A3B4C;
	}
	
	#text{
		font-family: PAC-FONT;
		font-size: 100px;
		color: #DA3F47;
		text-align: center;
		line-height: 95px;
		letter-spacing: 10px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		cursor: pointer;
	}
	#text::before{
		content: "FourKet WEBZINE";
		background: linear-gradient(#FFC929 10%,#E38C41 35%,#FFC929 40%,#E38C41 65%,#FFC929 70%,#E38C41  95%,#FFC929 100%);
		-webkit-background-clip:text;
		-webkit-text-fill-color:transparent;
		position: absolute;
		top: 7px;
		left: 14px;
		opacity: 0;
		z-index: -1;	
	}
	#text:hover{
		background: linear-gradient(#FFC929 10%,#E38C41 35%,#FFC929 40%,#E38C41 65%,#FFC929 70%,#E38C41  95%,#FFC929 100%);
		-webkit-background-clip:text;
		-webkit-text-fill-color:transparent;
		text-shadow: 0px 0px 10px #DA3F47, 0px 0px 25px #DA3F47;
	}
	#text:hover::before{
		opacity: 1;
	}
	
	#main{
		height: 100vh;
		width: 100%;
		position: absolute;
		overflow: hidden;
		/* z-index: 999; */
		transition: all .3s;
	}
	#icon{
		height: 25px;
		width: 30px;
		position: fixed;
		bottom: 20px;
		left: 50%;
		transform: translate(-50%,-50%);
		z-index: 999;
	}
	#icon:hover {
		cursor: pointer;
	}
	#line{
		height: 5px;
		width: 30px;
		background-color: #fff;
		position: absolute;
		bottom: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#line::before {
		content: '';
		height: 5px;
		width: 30px;
		background-color: #fff;
		position: absolute;
		top: -10px;
	}
	#line::after {
		content: '';
		height: 5px;
		width: 30px;
		background-color: #fff;
		position: absolute;
		top: 10px;
	}
	#menu{
		height: 100px;
		width: 100%;
		position: absolute;
		bottom: 0;
		color: #fff;
		font-family: fantasy;
		letter-spacing: 3px;
	}
	.m{
		font-size: 30px;
		font-family: PAC-FONT;
	}
	#m1{
		height: 100px;
		width: 10%;
		text-align: center;
		float: left;
		position: absolute;
		top: 100%;
		left: 10%;
		cursor: pointer;
	}
	#m2{
		height: 100px;
		width: 10%;
		text-align: center;
		float: left;
		position: absolute;
		top: 100%;
		left: 30%;
		cursor: pointer;
	}
	#m3{
		height: 100px;
		width: 10%;
		text-align: center;
		float: right;
		position: absolute;
		top: 100%;
		right: 35%;
		cursor: pointer;
	}
	#m4{
		height: 100px;
		width: 10%;
		text-align: center;
		float: right;
		position: absolute;
		top: 100%;
		right: 20%;
		cursor: pointer;
	}
	#m5{
		height: 100px;
		width: 10%;
		text-align: center;
		float: right;
		position: absolute;
		top: 100%;
		right: 5%;
		cursor: pointer;
	}
	
	
</style>
</head>
<body>

<div id="text">FourKet WEBZINE</div>

<div id="main">
	<div id="icon">
		<div id="line">
		</div>
	</div>
	
	<div>
		<div id="menu">
			<div id="m1" class="m" onclick="location.href='NewFile.jsp'">SunMi</div>
			<div id="m2" class="m">B-T-S</div>
			<div id="m3" class="m">ChungHa</div>
			<div id="m4" class="m">....</div>
			<div id="m5" class="m">home</div>
		</div>
	</div>
	
</div>
</body>
</html>