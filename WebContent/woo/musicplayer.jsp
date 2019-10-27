<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    
        var songs = ["Song1.mp3","Song2.mp3","Song3.mp3"];
        var poster = ["sunmiimage/sunmi5.jpg","sunmiimage/sunmi11.jpg","gasinacover.jpg"];
        
        var songTitle = document.getElementById("songTitle");
        var fillBar = document.getElementById("fill");
        
        var song = new Audio();
        var currentSong = 0;    // it point to the current song
        
        window.onload = playSong;   // it will call the function playSong when window is load
        
        function playSong(){
            
            song.src = songs[currentSong];  //set the source of 0th song 
            
            songTitle.textContent = songs[currentSong]; // set the title of song
            
            song.play();    // play the song
        }
        
        function playOrPauseSong(){
            
            if(song.paused){
                song.play();
                $("#play img").attr("src","image/pause.png");
            }
            else{
                song.pause();
                $("#play img").attr("src","image/play.png");
            }
        }
        
        song.addEventListener('timeupdate',function(){ 
            
            var position = song.currentTime / song.duration;
            
            fillBar.style.width = position * 100 +'%';
        });
        
    
        function next(){
            
            currentSong++;
            if(currentSong > 2){
                currentSong = 0;
            }
            playSong();
            $("#play img").attr("src","image/pause.png");
            $("#image img").attr("src",poster[currentSong]);
            $("#bg img").attr("src",poster[currentSong]);
        }
    
        function pre(){
            
            currentSong--;
            if(currentSong < 0){
                currentSong = 2;
            }
            playSong();
            $("#play img").attr("src","image/pause.png");
            $("#image img").attr("src",poster[currentSong]);
            $("#bg img").attr("src",poster[currentSong]);
        } 
    </script>
<style type="text/css">
	body{
		margin: 0px;
		padding: 0px;
	}
	#bg{
		height: 100vh;
		width: 100%;
		position: absolute;
		overflow: hidden;
	}
	#bg img{
		height: 100vh;
		width: 105%;
		-webkit-filter:blur(20px);
		position: absolute;
		left: 50%;
		top: 50%;
		transform: translate(-50%,-50%);
		z-index: 1;
	}
	#blackLayer{
		height: 100vh;
		width: 100%;
		background-color: rgba(0,0,0,.2);
		position: absolute;
		z-index: 99;
	}
	#main{
		width: 25%;
		background-color: #fff;
		border-radius: 15px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		z-index: 999;
	}
	#image img{
		height: 180px;
		width: 100%;
		margin-top: -5px;
		border-top-left-radius: 15px;
		border-top-right-radius: 15px;
	}
	#player{
		padding: 25px;
		color: #333;
	}
	#songTitle{
		width:300px;
		text-align: center;
		font-family: monospace;
		font-size: 18px;
		position: absolute;
		top: 60%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#buttons{
		height: 50px;
		width: 100%;
		margin-top: 50px;
		position: relative;
		top: 10%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#play,#next #pre{
		width: 50px;
		height: 50px;
		border: 0;
		background-color: royalblue;
		border-radius: 50%;
		outline: none;
		cursor: pointer;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#next{
		width: 30px;
		height: 30px;
		left: 70%;
	}
	#pre{
		width: 30px;
		height: 30px;
		left: 70%;
	}
	#play img,#next img,#pre img{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#seek-bar{
		width: 250px;
		height: 5px;
		background-color: gray;
		display: flex;
		border-radius: 50px;
		margin-left: 25px;
		cursor: pointer;
	}
	#fill{
		height: 5px;
		background-color: royalblue;
		border-radius: 20px;
	}
	#handle{
		width: 8px;
		height: 8px;
		background-color: royalblue;
		border-radius: 50%;
		margin-left: -5px;
		transform:scale()
	}
</style>
</head>
<body>
	<div id="bg">
		<div id="blackLayer"></div>
		<img alt="" src="sunmiimage/sunmi5.jpg">
	</div>
		
	<div id="main">
		<div id="image">
			<img alt="" src="sunmiimage/sunmi11.jpg">
		</div>
		<div id="player">
			<div id="songTitle">가시나</div>
			<div id="button">
				<button id="pre" onclick="pre()"><img alt="" src="image/rewind.png" height="90%" width="90%"/></button>
				<button id="play" onclick="playOrPauseSong()"><img alt="" src="image/play.png"/></button>
				<button id="next" onclick="next()"><img alt="" src="image/fast_forward.png" height="90%" width="90%"/></button>
			</div>
			
			<div id="seek-bar">
				<div id="fill"></div>
				<div id="handle"></div>
			</div>
		</div>
	</div>
</body>
 
</html>