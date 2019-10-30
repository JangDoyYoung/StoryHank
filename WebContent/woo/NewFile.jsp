<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$("#closeMenu").click(function(){
		$("#main").fadeOut(200);
		$("#closeMenu").animate({left: "100%"});
		$(".menu").animate({left: "-50%"},10);		
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
	}
	#main{
		height: 100vh;
		width: 100%;
		position: fixed;
		//display: none;
	}
	#logoSection{
		height: 100%;
		width: 50%;
		background-color:#FCFCFC;
		box-shadow: 10px 0px 30px rgba(0,0,0,.4);
		position: absolute;
		z-index: 999;
	}
   #logoSection img{
		position: absolute;
	  	top: 50%;
		left: 50%; 
		transform: translate(-50%,-50%);
	}
	#menuSection{
		height: 100%;
		width: 50%;
		background-color: #f1f1f1;
		position: absolute;
		left: 50%;
	}
	#menuSection ul{
		list-style: none;
		margin: 0px;
		padding: 0px;
		position: absolute;
		top: 30%;
		left: -1%;
	}
	#menuSection ul li{
		height: 100px;
		width: 350px;
		font-family: arial black;
		font-size: 60px;
		line-height: 100px;
		cursor: pointer;
	}
	.menu{
		height: 100px;
		width: 0px;
		background-color: #ffc200;
		display: flex;
		position: absolute;
		left: 0%;
		cursor: pointer;
		pointer-events: none;
		transition: all .5s;
	}
	.rotate{
		pointer-events: none;
	}
	#menuSection ul li:hover .menu{
		width: 350px;
	}
	#closeMenu{
		height: 100px;
		width: 100px;
		/* background-color: #262626; */
		position: fixed;
		top: 50%;
		left: 0%;
		transform: translateY(-50%);
 		z-index: 999;
		cursor: pointer;	
	}
	#closeMenu{
		left: 90%;
	}
	

</style>

</head>
<body>

<div id="closeMenu" onclick="location.href='index.jsp'">
	<img alt="" src="image/cross.png"style="width: 100px; height: 100px;"/>
</div>

<div id="main">

	<div id="logoSection">
		<img alt="" src="sunmiimage/sunmi27.jpg"/>
	</div>
	<div id="menuSection">
		<ul>
			<li onmouseover="anim('about')" onclick="location.href='about.jsp'">
				<div id="about" class="menu">
					ABOU
					<div class="rotate">T</div>
				</div>
			</li>	
			<li onmouseover="anim('video')" onclick="location.href='video.jsp'">
				<div id="video" class="menu">
					VIDE
					<div class="rotate">O</div>
				</div>
			</li>
			<li onmouseover="anim('music')" onclick="location.href='music.jsp'">
				<div id="music" class="menu">
					MUSI
					<div class="rotate">C</div>
				</div>
			</li>
			<li onmouseover="anim('photo')" onclick="location.href='photo.jsp'">
				<div id="photo" class="menu" >
					PHOT
					<div class="rotate">O</div>
				</div>
			</li>
		</ul>
	</div>
</div>

</body>
<script type="text/javascript">
		
		function anim(targetedDiv){
			
			var targetedLetter = $("#"+targetedDiv+" .rotate").text();
			
			var asciiValue = targetedLetter.charCodeAt(0); //return ascii value
			
			var pointer = 65; //Ascii of 'A' (Starting Point)
			
			changeChar();
			
			function changeChar(){
				
				if(pointer <= asciiValue){
					$("#"+targetedDiv+" .rotate").text(String.fromCharCode(pointer));
					
					//fromCharCode function conver pointer value in character such as 65=A
					
					pointer++;
					setTimeout(changeChar,20);  //call the function after every 20MS		
				}else{
					$(this).stop;
					
				}
			} 
		}
</script>
</html>