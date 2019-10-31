<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$(".content1").addClass("content_b");
		// 날짜 클릭 이벤트
		$("#day1").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content1").addClass("content_b");
			$(".content2").removeClass("content_b");
			$(".content3").removeClass("content_b");
		});
		$("#day2").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content2").addClass("content_b");
			$(".content1").removeClass("content_b");
			$(".content3").removeClass("content_b");
		});
		$("#day3").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content3").addClass("content_b");
			$(".content2").removeClass("content_b");
			$(".content1").removeClass("content_b");
		});
						
	});
	
	$(function(){
		$("#route1").click(function(){
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route1");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check")!=null)
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}
					$("#route1_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route2").click(function(){
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route2");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check")!=null)
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}
					$("#route2_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route3").click(function(){
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route3");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check")!=null)
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}				
					$("#route3_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route4").click(function(){
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route4");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check")!=null)
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}				
					$("#route4_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		
	});
	
</script>

<style>
	*
	{
		margin: 0;
		padding: 0;
	}
	#main div
	{
		border: 0px solid gray;
	}
 	.mimg
 	{
 		border: 2px double gray;
 		width: 100%;
 		height: 500px;
 		background-image: url('image/main2.jpg');
 		background-repeat: no-repeat;
 		background-size: cover;

 	}
 	.mimg_title
 	{
 		position: relative;
 		top: 370px;
 		width: 100%;
 		height: 80px;
 		background-color: #ffffff;
        opacity: 0.5;
 	}
 	h1
 	{
 		position: relative;
 		top: 310px;
 		color: white;
 		margin-right: 150px;
 		text-align: right;
 		text-shadow: 4px 2px 2px #3F3E40;
 	}
 	/* .schedual
 	{
 		width: 1000px;
 		margin: 0 auto;
 	} */
 	.days
 	{
 		position: relative;
 		top: 28px;
 		height: 100px;
 		margin-top: 40px;
 		text-align: center;
 	}
 	.daylist>a
	{
		color: #E2E1E6;
		text-decoration: none;
		cursor: pointer;
		font-size: 20px;
	}
	.daylist>a:hover
	{
		cursor: pointer;
		text-shadow: 2px 1px 1px #E2E1E6;
	}
	#daylist .selected_day
	{
		color: black;
		font-size: 2em;
		font-weight: bold;
		text-shadow: 2px 1px 1px gray;
	}
	
 	.day_contents
 	{
 		width: 100%;
 		text-align: center;
 	}
	.content1
 	{
 		display: none;
 	}
 	.content2
 	{
 		display: none;
 	}
 	.content3
 	{
 		display: none;
 	}
 	.content_b
 	{
 		display: block;
 	}
 	.day_title
 	{
 		height: 50px;
 		margin-top: 30px;
 		text-align: center;
 	
 	}
 	.daytitletext
 	{
 		position: relative;
 		top: 15px;
 		font-size: 20px;
 		color: #7E7D80;
 	}
 	.day_route
 	{
 		height: 300px;
 		text-align: center;
 	}
 	
 	.r_plane
 	{
 		position: relative;
 		width: 50px;
 		height: 50px;
 		top: 85px;
 		left: -161px;
 	}
 	.routeicon:hover
 	{
 		cursor: pointer;
 	}
 	/* .r_bus
 	{
 		position: relative;
 		width: 50px;
 		height: 50px;
 		top: 105px;
 		left: -27px;
 	} */
 	.r_train
 	{
 		position: relative;
 		width: 50px;
 		height: 50px;
 		top: 85px;
 		left: -54px;
 	}
 	.r_taxi
 	{
 		position: relative;
 		width: 50px;
 		height: 50px;
 		top: 85px;
 		left: 53px;
 	}
 	.r_walk
 	{
 		position: relative;
 		width: 48px;
 		height: 48px;
 		top: 85px;
 		left: 162px;
 	}
 	.rp
 	{
 		position: relative;
 		margin-left: 3px;
 		margin-right: 3px;
 		display: inline-block;
 	}
 	.circle
 	{
 		top: 60px;
 		width: 80px;
 		height: 80px;
 		border-radius: 50%;
 		background: #5C5858;	
  	}
  	.line
  	{
  		top: 25px;
  		width: 60px;
 		height: 10px;
 		background: #5C5858;
  	}
  	.rtext
  	{
	  	position: absolute;
	    top: 50%; 
	    left: 50%;
	    transform: translate(-50%,-50%);
  		color: white;
 		font-weight: bold;	
 		font-size: 0.6em;
  	}
  	
 	.day_content
 	{
 		margin: 0 auto;
 		width: 800px;
	}
	
</style>

</head>
<body>
	<div id="main">
		<div class="mimg">
			<div class="mimg_title">
			</div>
			<h1>교토 가을 산책</h1>
		</div>
		<div class="schedual">
			<div  class="days">
				<div id="daylist" class="daylist">
					<a id="day1" class="selected_day">Day 1</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a id="day2">Day 2</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a id="day3">Day 3</a>
				</div>
			</div>
			<div class="day_contnets">
				<div class="content1">
					<div class="day_title">
						<p class="daytitletext"><strong>동네산책</strong></p>
					</div>
					<div class="day_route">
						<div class="routeday1">
							<div class="routeicon">
								<img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="route1">
								<!-- <img alt="버스" src="image/bus.png" class="r_bus" title="버스" r_bus> -->
								<img alt="기차" src="image/train.png" class="r_train" title="기차" id="route2">
								<img alt="택시" src="image/taxi.png" class="r_taxi" title="택시" id="route3">
								<img alt="도보" src="image/walk1.png" class="r_walk" title="도보" id="route4">
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">인천국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">칸사이국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">교토역</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">카모강변</div></div>
							</div>
						</div>
						
					</div>
				
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				<div class="content2">
					<div class="day_title">
						<p class="daytitletext"><strong>단풍이 빨갛게 된 곳으로</strong></p>
					</div>
					<div class="day_route">
						<div class="routeday2">
							<div class="routeicon">
								<img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="r_plane">
								<!-- <img alt="버스" src="image/bus.png" class="r_bus" title="버스" r_bus> -->
								<img alt="기차" src="image/train.png" class="r_train" title="기차" id="r_train">
								<img alt="택시" src="image/taxi.png" class="r_taxi" title="택시" id="r_taxi">
								<img alt="도보" src="image/walk1.png" class="r_walk" title="도보" id="r_walk">
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">인천국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">칸사이국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">교토역</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">카모강변</div></div>
							</div>
						</div>
						
					</div>
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				<div class="content3">
					<div class="day_title">
						<p class="daytitletext"><strong>집에 가자</strong></p>
					</div>
					<div class="day_route">
						<div class="routeday3">
							<div class="routeicon">
								<img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="r_plane">
								<!-- <img alt="버스" src="image/bus.png" class="r_bus" title="버스" r_bus> -->
								<img alt="기차" src="image/train.png" class="r_train" title="기차" id="r_train">
								<img alt="택시" src="image/taxi.png" class="r_taxi" title="택시" id="r_taxi">
								<img alt="도보" src="image/walk1.png" class="r_walk" title="도보" id="r_walk">
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">인천국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">칸사이국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">교토역</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">카모강변</div></div>
							</div>
						</div>
						
					</div>
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div id="route1_out"></div>
	<div id="route2_out"></div>
	<div id="route3_out"></div>
	<div id="route4_out"></div>
</body>
</html>