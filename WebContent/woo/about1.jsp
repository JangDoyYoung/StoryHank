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
		
/* 		$("#title1").css({top:1500+(scroll*0.40)+"px"});
		
		$("#title2").css({top:2100+(scroll*0.40)+"px"});
		
		$("#title3").css({top:2750+(scroll*0.40)+"px"}); */
		
		$("#title4").css({top:0+(scroll*0.30)+"px"});
	
	});
	
	$(window).scroll(function(){
		var scrollval = $(this).scrollTop();
		
		$("#logo").css("transform",'translate(0px,-'+scrollval/2+'%)');
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
		background-color: #FFF;
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
		left: -360px;
		transform: rotate(-90deg);	
		transition: all .25s linear;
	}
	.title{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: absolute;
		color: black;
		text-align: center;
		
	}
	#title1{
		top: 1400px;
		left: 1200px;
		transform: rotate(10deg);	
	}
	#title2{
		top: 2100px;
		left: 170px;
		transform: rotate(-10deg);	
	}
	#title3{
		top: 2750px;
		left: 900px;
		transform: rotate(10deg);
	}
	#title4{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: fixed;
		top: 0px; 
		left: 700px;
		transform: rotate(-10deg);	
		transition: all .30s linear;
		color: black;
		
	}
	#main1{
		width: 92%;
		height: 560px;
		background:  linear-gradient(#66FFD,#FFF);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		overflow: visible;
	}
	#btsimage{
		height: 350px;
		width: 100%;
		position: absolute;
		left: 55%;
		transform:translateX(-50%);
		top: 250px;
	}
	.about{
		
		position: absolute;
		border: 10px solid black;
				
	}
	#about1{
		width: 1200px;
		height: 450px;
		top: 1550px;
		left: 500px;
	}
	#about2{
		width: 1200px;
		height: 450px;
		top: 2200px;
		left: 300px;
		font-style: normal;
		
	}
	#about3{
		width: 1200px;
		height: 450px;
		top: 2900px;
		left: 500px;
	}
	
	#about1_2{
		left: 70px;
		text-align: center;	
		height: 100%;
	}
	#about2_2{
		text-align: center;
		border: 0px solid black;	
	}
	#about3_2{
		text-align: center;
		left: 300px;
		height: 100%;
		width: 900px;	
		position: absolute;
	}
	
	.img{
		border: 0px solid black;
		width: 350px;
		height: 500px;
		
	}
	#img1{
		left: 370px;
		top: 1450px;	
		position: absolute;	
		width: 400px;
		height: 400px;
	}
	#img2{
		left: 1300px;
		top: 2050px;	
		position: absolute;	
	}
	#img3{
		left: 370px;;
		top: 2770px;	
		position: absolute;	
		width: 600px;
		height: 400px;
	}
	
</style>
</head>
<body>
<div>
	<div id="main">
		<span>it's time for a new adventure</span>
	</div>
	
	<div id="title1" class="title">D&nbsp;N&nbsp;A</div>
	<div id="title2" class="title">Blood&nbsp;Sweat&nbsp;Tear</div>	
	<div id="title3" class="title">Boy With Luv</div>
	<div id="title4" class="title"><h2>B-T-S</h2></div>
	
	<div id="main1">
		<div id="btsimage"><img alt="" src="btsimage/bts16.jpg" style="height: 900px; width: 1700px;"/></div>
	</div>
	
	<div class="about" id="about1">
		<div id="about1_2">
				<h4> LOVE YOURSELF 結 ‘Answer’</h4>
		<pre style="text-align: left; font-size: 17px;">
		              방탄소년단은 리패키지 앨범 LOVE YOURSELF 結 ‘Answer’을 발매하고, 2년 반 동안 이어진 LOVE YOURSELF
		              시리즈의 대미를 장식한다.2016년 3월부터 시작된 방탄소년단의 LOVE YOURSELF 시리즈는 앨범의 주요수록 
		              곡들이 하나의 주제로 연결되어, ‘나 자신을 사랑하는 것이 진정한 사랑’이라는 메시지를 전해왔다.
		              또한, 데뷔 초부터 음악적 완성도를 위해 충분한 곡들을 매 앨범에 담아 온 방탄소년단은 이번 앨범이
		              리패키지 앨범 임에도 불구하고 7곡의 신곡을 포함했다.
			      이번 LOVE YOURSELF 結 ‘Answer’ 앨범은 치밀한 기획 아래 LOVE YOURSELF 시리즈의 정수를 담은
			     ‘콘셉트 앨범’이다.
			      CD A에 수록된 16곡들은 음악, 스토리, 가사 등이 유기적으로 연결되어, 만남과 사랑으로부터 자아를 찾아가는
                              감정의 흐름을 따른다. 이번 앨범에서는 서사와 세계관을 강조해온 방탄소년단의 아티스트적 면모뿐 아니라,
                              잘 구성된 소설을 읽는 것 같은 높은 앨범 완성도를 느낄 수 있다.
			      모든 것의 결론, 비밀이 드러나다.방탄소년단의 LOVE YOURSELF 시리즈는 기승전결(起承轉結)의 구조로 하나의
			      주제의식을 관통한다. 짜임새 있는 스토리, 영상, 앨범 트랙, 디자인 등 LOVE YOURSELF의 서사를 따라온
팬들에게 ‘모든 비밀이 풀리는 열쇠’ 역할을 한다.
LOVE YOURSELF 起 ‘Wonder’ 영상과 承 ‘Her’ 앨범이 사랑의 설렘과 두근거림을 표현했다면, 轉 ‘Tear’ 앨범은 이별을 마주한 소년들의
아픔을 담았다. 이번 발표되는 結 ‘Answer’에서는 수많은 모습의 자아 속에서 나를 찾는 유일한 해답은 결국 ‘나’ 자신에게 있다는 내용을
담았다.
멤버 진이 부른 컴백 트레일러 'Epiphany'는 정국의 ‘Euphoria’, 지민의 ‘Serendipity’, 뷔의 ‘Singularity’로
이어져 온 서사의 흐름을 이어 받으며, LOVE YOURSELF 시리즈의 진짜 주제를 명확하게 드러낸다.
특히, L-O-V-E-Y-O-U-R-S-E-L-F 버전의 앨범 커버를 모두 합쳤을 때 나타나는 디자인과 슬리브 꽃 그림은 만남에서 자아를 찾는 과정까지 감정의
흐름을 보여준다.
		</pre>					
		</div>
	</div>
	
	<div class="img" id="img1">
		<img alt="" src="btsimage/bts.jpg" style=" width: 400px; height: 400px;"/>
	</div>
	
	<div class="about" id="about2">
		<div id="about2_2">
				<h3>금주의 HOT!</h3>
					<h4>만개한 4차원의 매력! 안 보고 가시나?</h4>
	<pre style="text-align: left; font-size: 17px;">
알고 계신가요? 선미의 영상을 찾다 보면 유독 엉뚱하고 흥이 많은, 정말 모태부터 그대로 이어받은 듯 특이한(!)
선미만의 캐릭터를 확인할 수 있다는 사실! 솔로 이후의 커리어가 섹시 콘셉트에 집중되어 있어 희미해진 감은
있지만 그녀가 그룹 시절에 보여준 캐릭터가 엉뚱함을 넘어4차원에 가까웠다는 것을, 원더걸스부터의 오랜 팬들은
잘 알고 있습니다.

JYP에서 메이크어스엔터테인먼트로 이적한 후 처음 선보이는 '가시나'는 이전까지 솔로 커리어에서 내보이던 
도발적인 매력을일면 접어둔 채, 선미의 본모습에 더 가까운 4차원 캐릭터를 그대로 담아내고 있습니다.
이는 음원보다도 뮤직비디오와 무대 퍼포먼스 등 보여지는 영역에서 더욱 선명히 드러나지요.
덕분에 콘셉트와 퍼포먼스가 많이 회자되고 있는 상황입니다만, 음악을 집중해서 들어보면 음악 자체도 상당한변화를
꾀한 것을 알 수 있습니다. 
선미가 처음 시도하는 트로피컬 사운드도 그렇지만, 보컬의 운용법도 상당히 달라졌다는 점도 포인트로 들리네요.

선미의 트레이드마크, 스트레이트한 중음 보컬은 '가시나'에서 꽤나 신경질적인 느낌으로 녹음되었음을 확인할수있습니다.
고혹적인 느낌으로 녹음된 '24시간이 모자라'와 비교해 들어보면 그 차이를 뚜렷하게 느낄 수 있죠.
곡의 분위기에 맞게 보컬을 이렇게나 달리하는 그녀를 보고 있자면 선미가 상당히 다채로운 음색을 가진 가수라는 사실을
한 번 더 깨닫게 됩니다.
노래도 노래지만, 선미의 노력에도 감탄하게 되는 곡이라고 할까요.
		</pre>
		</div>
	</div>
	
	<div class="img" id="img2">
		<img alt="" src="btsimage/bts13.jpg" style="width: 500px; height: 500px ;"/>
	</div>
	
	<div class="about" id="about3"/>
		<div id="about3_2">
					<h1>지금이 최고의 전성기</h1>
		<pre style="text-align: left; font-size: 17px;">
           "가시나", "주인공"의 연이은 대히트에이어 8개월만에 새 앨범으로 돌아온
           유일무이한 20대 솔로 여가수 "선미".이번 신보 "WARNING"은 "가시나","주인공"에
           이어 이어지는3부작 프로젝트의 완성이자 4년만에"선미"가 내놓는 정식 음반이다.
           매번 독보적인 컨셉과 눈을 뗄 수 없는 치명적인 퍼포먼스로 인기를 끌었던"선미"
           는 요번에도 신곡 "사이렌"으로엄청난 인기몰이를 했는데,일주일 이상 음원차트
           1위를 기록하며주간차트 1위까지 달성하는 등"가시나"와 "주인공"을 넘어서는
           커리어 내 역대급 성적을 얻어냈다.솔로 여자 가수 중에서,그것도 댄스 장르로
           PK 기록을 달성할 수 있는 가수는현재로서는 "선미"가 유일할 듯 하다.
           사실 "가시나"의 임팩트가 워낙 강했어서"사이렌"이 그 이상이라고는 말을 못하겠지만
	   몽환적인 분위기와 강렬한 베이스 사운드, 그리고 "선미" 특유의 중독성 강한 안무로
	   많은 대중들의 눈과 귀를 사로잡을 수 있었다.또한 지난 활동곡 "주인공"의 표절
	   논란을종식시키기라도 하려는 것마냥 당당하게 본인이 작사-작곡한 곡을타이틀곡으로
	   들고 나와 그녀의 퍼포먼스 실력뿐 아니라 프로듀싱 실력 역시또 한 번 인정받을 수 있게
	   되었다.
		</pre>	
		</div>
	</div>
	
	<div class="img" id="img3">
		<img alt="" src="btsimage/bts2.jpg" style="width: 500px; height: 450px;"/>
	</div>
	
</div>
</body>
</html>