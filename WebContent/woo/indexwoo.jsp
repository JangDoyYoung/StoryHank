<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.container div{
			border: 1px solid gray;
	}
	.title{
			width: 1898px;
			height: 810px;
			background-image: url("image/1.PNG");
	
	}
	.title1{
			width: 800px;
			height: 810px;
			left: 900px;

	}
	.title2{
			width: 500px;
			height: 500px;
			left: 300px;
			top: 100px;
	}
	.header{
			width: 1898px;
			height: 870px;
			top: 820px;	
	}
	.header1{
			width: 1898px;
			height: 480px;
	}
	.header1_1{
	
	}
	.header1_2{
	
	}
	.header1_3{
			background-image: url("sunmiimage/sunmi5.jpg");
	}
	.header2{
			top: 480px;
			height: 380px;
			width: 1898px;
	}
	.header2_1{
			width: 949px;
			height: 380px;
			background-image: url("sunmiimage/sunmi11.jpg");
	}
	.header2_2{
			width: 949px;
			height: 380px;
			left: 949px;
	}
	.middle{
			width: 1898px;
			height: 1070px;
			top: 1690px;	
	}
	.middle1{
			width: 1898px;
			height: 500px;
			background-image: url("btsimage/bts13.jpg");
			background-size: cover;
			background-repeat: no-repeat;
	}
	.middle2{
			width: 1898px;
			height: 570px;
			top: 500px;
	}
	.middle2_1{
			width: 949px;
			height: 570px;
	
	}
	.middle2_1_1{
			width: 474px;
			height: 285px;
	}
	.middle2_1_2{
			width: 474px;
			height: 285px;
			left: 474px;
	}
	.middle2_1_3{
			width: 949px;
			height: 285px;
			top: 285px;
			background-image: url("btsimage/bts.PNG");
			background-repeat: no-repeat;
	}
	.middle2_2{
			width: 949px;
			height: 570px;
			left: 949px;
			background-image: url("btsimage/bts.jpg");
	}
	.last{
			width: 1898px;
			height: 1000px;
			top: 2765px;
	}
	.last1{
			width: 1898px;
			height: 535px;
	}	
	.last1_1{
			width: 749px;
			height: 535px;
	}
	.last1_2{
			width: 1149px;
			height: 535px;
			left: 749px;
			background-image: url("chunghaimage/chungha3.jpg");
			}
	.last1_2_1{
			width: 200px;
			height: 200px;
			top: 300px;
			left: 700px;
	}
	.last2{
			width: 1898px;
			height: 465px;
			top: 535px;
	}
	.last2_1{
			width: 949px;
			height: 465px;
	}
	.last2_2{
			width: 949px;
			height: 465px;
			left: 949px;
			background-image: url("chunghaimage/chungha4.jpg");
	}
	.btns{
		width: 200px;
		height: 50px;
		font-family: arial;
		color: #ee3769;
		position: absolute;
		top: 50%;
		left: 20%;
		transform: translate(-50%,-50%);
		cursor: pointer;
		border: 1px solid #ee3769;
		text-align: center;
		line-height: 50px;
		overflow: hidden;
		trnasition: color 0.3s ease-out;
		background-color: #fff;
	}
	#button2{
		width: 200px;		
		height: 50px;
		font-family: arial;
		color: #ee3769;
		position: absolute;
		top: 50%;
		left: 20%;
		transform: translate(-50%,-50%);
		cursor: pointer;
		border: 1px solid #ee3769;
		text-align: center;
		line-height: 50px;
		overflow: hidden;
		trnasition: color 0.3s ease-out;
		background-color: #fff;
	}
	.btns::before{
		position:absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		margin: auto;
		content: '';
		border-radius: 50%;
		display: block;
		width: 300px;
		height: 300px;
		left: -75px;
		transition: box-shadow 0.3s ease-out;
		z-index: -1;
	}
	.btns:hover {
		color: #fff;
	}
	
	#button2:hover{
		color: red;
	}
	.btns:hover::before {
		box-shadow:inset 0 0 0 160px #ee3769;
	}
	
	
</style>
</head>
<body>
<div class="container">
  <div class="title">
  	<div class="title1">사진 (title1)</div>
  	
  	<div class="title2">글 (title2)</div>	
  </div>
  
  <div class="header">
  	<div class="header1">
  		<div style="width: 450px; height: 480px;" class="header1_1">01 (header1_1)</div>
  		<div style="width: 800px; height: 480px; left: 450px;" class="header1_2">기사 (header1_2)
  			<button type="button" class="btns">Read More</button>
  		</div>
  		<div style="left: 1250px; width: 650px; height: 480px;" class="header1_3">앨범커버 (header1_3)</div>
  	</div>
  	
  	<div class="header2">
  		<div class="header2_1" >youtube player (header2_1)</div>
  		<div class="header2_2">music player (header2_2)</div>
  	</div>
  </div>
  
  <div class="middle">
  	<div class="middle1">사진 (middle1)
  		<div class="middle1_1" style="width:250px; height: 200px;left: 150px; top: 100px; ">02 (middle1_1)</div>
  		<div class="middle1_2" style="left: 500px; top: 50px; width: 500px; height: 400px;">글 (middle1_2)
  			<button type="button" class="btns">Read More</button>
  		</div>
  		<div></div>
  	</div>
  	
  	<div class="middle2">
  		<div class="middle2_1">
  			<div class="middle2_1_1">musicplayer middle2_1_1</div>
  			<div class="middle2_1_2">기사 (middle2_1_2)
  				<button type="button" id="button3">Read More</button>
  			</div>
  			<div class="middle2_1_3">youtubeplayer middle2_1_3</div>

  		</div>
  		<div class="middle2_2">사진 (middle2_2)</div>
    </div>
  </div>
  
  <div class="last">
  	<div class="last1">
  		<div class="last1_1">기사 (last1_1)
  			<button type="button" id="button4">Read More</button>
  		</div>
  		<div class="last1_2">사진 (last1_2)
  			<div class="last1_2_1">03 (last1_2_1)</div>
  		</div>
  	</div>
  	<div class="last2">
  		<div class="last2_1">music player (last2_1)</div>
  		<div class="last2_2">youtube player (last2_2)</div>
  	</div>
  </div>
  
  
  
  
  
</div>
</body>
</html>