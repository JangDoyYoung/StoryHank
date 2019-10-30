<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

	$(document).scroll(function() {
	
		var scroll = $(window).scrollTop();
		
		$("span").css({top:100+(scroll*0.40)+"px"});
	
	});


</script>
<style type="text/css">
	
	 @font-face{
    font-family: Gloss_And_Bloom;
    src:url(font/Gloss_And_Bloom.ttf) format('truetype');
	} 
	
	body {
		margin: 0px;
		padding: 0px;
		background-color: lightpink;
		height: 200%;
	}
	#main{
		height: 100vh; 
		width: 130px;
		background-color: white;
		position: fixed;
		top: 0;
		left: 0;
	}
	span{
		font-family: Gloss_And_Bloom;
		font-size: 60px;
		position: fixed;
		top: 100px; 
		left:-360px;
		transform: rotate(-90deg);	
		transition: all .25s linear;
	}
</style>
</head>
<body>
	<div id="main">
		<span>it's time for a new adventure</span>
	</div>
</body>
</html>