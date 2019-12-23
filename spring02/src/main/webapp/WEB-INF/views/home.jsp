<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
<script src="http://code.jquery.com/jquery-latest.js">
</script>
    

<%@ include file="include/header.jsp" %>
		
<style>	
#aaaaa { 
font-size:30px;
position:center;
}

#aab { margin-left:20px;}

.trend{
width: 980px;
height: 1080px;
overflow: hidden;
margin-left:160px;
border: 1px solid;
float:left;

}
.trendherd{
display: flex;
 flex-basis: 100%;
 align-items: center;
 color: rgba(0, 0, 0, 0.35);
 font-size: 12px;
 margin: 8px 0px;
}
.k{
float:left;
height:300px;
padding-left:50px;
padding-right:50px;
text-align:center;

}
.k1{
float:left;
height:300px;
padding-left:57px;
padding-right:50px;
text-align:center;
}

.k2{
float:left;
height:300px;
padding-left:57px;
padding-right:50px;
text-align:center;
}

.trendherd::before,
.trendherd::after {
 content: "";
 flex-grow: 1;
 background: rgba(0, 0, 0, 0.35);
 height: 1px;
 font-size: 0px;
 line-height: 0px;
 margin: 0px 16px;
 }
 
.leftRollBanWrap {
    position: absolute;
    left: 195px;
    top: 600px;
    width: 90px;
    background-color: #fff;
    margin: 0 0 0 -1px;
}
 
.leftRollBanWrap2 {
    position: absolute;
    left: 222px;
    top: 900px;
    width: 90px;
    background-color: #fff;
    margin: 0 0 0 -1px;
}

.leftRollBanWrap3 {
    position: absolute;
    top: 600px;
    width: 90px;
	right:150px;
    background-color: #fff;
    margin: 0 0 0 -1px;
}
 

 
.all{
margin-top:78px;
width:100%;
height:350px;
display:inline-block;
background:#FBFBEF;
}
.in{
position:relative;
float:left;
margin-top:140px;

}
    .slider {
        width:800px;
        height:350px; 
        overflow:hidden;
        position:relative;
        float:left;
        z-index:1;
        margin-left:160px;
    }

    .slider img {
        width: 100%;
        height: 100%;
    }
    .slick-prev { position:absolute; z-index:999; top:50%; left:5%; border:0; padding:10px; background: #000; color:#fff; box-shadow:0 0 10px rgba(255,255,255,0.8);}
    .slick-next { position:absolute; z-index:999; top:50%; right:5%; border:0; padding:10px; background: #000; color:#fff; box-shadow:0 0 10px rgba(255,255,255,0.8)}

.content{
width:250px;
height:350px;
background:	#000000;
position:absolute;
opacity:0.7;
float:right;
display:inline;
}
.content p{
font-size:12px;
color:white;
}


h1{
font-size:15px;
color:#FFF29C;
border-top:1px solid gray;
border-bottom:1px solid gray;
}

.footer{
border-top:0.1px solid #ACACAC;
width:100%;
height:40px;
position:fixed;
left:0;
right:0;
background:#F4F5F7;
bottom:0;
text-align:center;
font-family:'굴림';
font-size:12px;
font-color:black;
}

</style>
<link href="${path}/css/slick.css" rel="stylesheet">
<script src="${path}/js/slick.js"></script>
<script src="${path}/js/jquery.easing.js"></script> 
</head>
<body>
<%@ include file="include/menu.jsp" %>


<c:if test="${msg == 'success'}">
<script language="javascript" type="text/javascript">
    setTimeout(function() {
    opener.location.reload(); //부모창 리프레쉬
    self.close(); //현재창 닫기
    }, 100);
</script>
</c:if>



	<c:if test="${result == null}">
<div id="main-wrapper">
<div class="wrapper style1">
	<div class="inner">
		<!-- Feature 1 -->
					<section class="container box feature1">
						<div class="row">
							<div class="col-12">
								
									<h2>About Investing</h2>				
								
<iframe src="${path}/hif" width="1200px" height="500px" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0"></iframe>
<div class="poweredBy" style="font-family: Arial, Helvetica, sans-serif;"> 
<a href="${path }/include/iframe23.jsp" target="_blank" rel="nofollow"></a></div>

	
							<BR>				
							</div>
							<div class="col-4 col-12-medium">

								<section>

									<a href="${path}/introduce/introduce1.do" class="image featured"><img src="images/11.png" height="250px" /></a>
									<header class="second icon solid fa-cog">
										<h3>가상화폐 소개</h3>
										<div id="aab"><p>10가지의 종목</p></div>
									</header>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section>
									<a href="${path }/prediction/pre0.do" class="image featured"><img src="images/22.png" height="250px"  /></a>
									<header class="second icon solid fa-chart-bar">
										<h3>가상화폐 시세 예측</h3>
										<div id="aab"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실시간 분석</p></div>
									</header>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section>
									<a href="${path }/mypage/calendar.do" class="image featured"><img src="images/33.png"  height="250px" /></a>
									<header class="second icon solid fa-user">
										<h3>나만의 스케줄 관리</h3>
										<div id="aab"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;꼼꼼한 관리</p></div>
										
									</header>
								</section>
							</div>
												
								<div class="col-12">

							<br>
							</div>	
							
							<c:if test="${sessionScope.userId != null}"   >
							<div class="col-4 col-12-medium">

								<section>
						
									<a href="${path}/mypage/filtering.do" onclick="window.name='MemberServlet.do';window.open(this.href, 'insert',
                    'width=480,height=624,resizable=no,scrollbars=no,status=no,left=630px,top=110px'  );return false;" class="image featured"><img src="${path}/images/44.jpg" height="250px" /></a>
									<header class="second icon solid fas fa-hand-holding-usd">
										<h3>매도시기 조회</h3>
										<div id="aab"><p>&nbsp;&nbsp;종목 조회</p></div>
									</header>
								</section>
							</div>
							</c:if>	
						
							<div class="col-4 col-12-medium">
								<section>
									<a href="#" class="image featured"><img src="${path}/images/55.jpg" height="250px"  /></a>
									<header class="second icon solid fas fa-bell">
										<h3>매도시기 푸시 알람</h3>
										<div id="aab"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실시간 푸시</p></div>
									</header>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section>
									<a href="${path}/board/list.do" class="image featured"><img src="${path}/images/66.jpg"  height="250px" /></a>
									<header class="second icon solid fas fa-chalkboard">
										<h3>사용자 자유 게시판</h3>
										<div id="aab"><p>&nbsp;&nbsp;&nbsp;사용자들의 게시판&nbsp;&nbsp;</p></div>
										
									</header>
								</section>
							</div>
												
								<div class="col-12">

							<br><br><br><br><br>
							</div>	
						
						
						</div>
					</section>
					
					<div class="container">
					<div class="row">
						<div class="col-8 col-12-medium">
							<!-- Article list -->
						<section class="box article-list">
							<h2 class="icon fa-file-alt">지난 소식들</h2>

							<!-- Excerpt -->
								<article class="box excerpt">
									<a href="https://www.mk.co.kr/premium/special-report/view/2019/10/26919/" class="image left"><img src="images/how.jpeg" height="180px" alt="" /></a>
									<div>
										<header>
											<span class="date">October 22</span>
											<h3><a href="#">암호화폐는 대한민국법률에서 어떻게 정의돼 있나? </a></h3>
										</header>
										<p> 현재까지는 암호화폐를 정의하고 있거나, 암호화폐를 규율대상으로 하고 있는 법률이 없다. 대한변호사협회는 협회 소속 변호사들로 구성된 IT, 블록체인특별위원회(필자도 위 위원회에서 활동하고 있다)를 발족하여 블록체인, 
										암호화폐와 관련된 사안의 가이드라인을 만들고 입법화하려는 노력을 하고 있다.</p>
									</div>
								</article>

							<!-- Excerpt -->
													<article class="box excerpt">
														<a href="http://news1.kr/articles/?3704862" class="image left"><img src="images/pic02.jpg" alt="" height="180px"/></a>
														<div>
															<header>
																<span class="date"a href="http://news1.kr/articles/?3732291" >September 30</span>
																<h3><a href="http://news1.kr/articles/?3732291">비트코인 900만원선도 무너지나…끝모를 '패닉셀'</a></h3>
															</header>
															<p >지난 26일 1000만원선이 붕괴된 비트코인 가격이 또 다시 흔들리고 있다. 이젠 900만원선도 안심할 수 없는 상황이다. 이는 전일대비 3% 하락한 가격으로 지난 26일 1000만원선이 붕괴된 이후 연일 하락세다.
</p>
														</div>
													</article>
	
												<!-- Excerpt -->
								<article class="box excerpt">
									<a href="http://news.tf.co.kr/read/economy/1760342.htm" class="image left"><img src="images/pic1.jpg" height="180px"/></a>
									<div>
										<header>
											<span class="date">August 11</span>
											<h3><a href="http://news.tf.co.kr/read/economy/1760342.htm">[가상화폐 요즘은下] 글로벌 기업도 뛰어든 가상화폐, 전망은?</a></h3>
										</header>
										<p>'존버', '흑우' 등 여러 유행어를 낳기도 했던 가상화폐(암호화폐) '열풍'이 다소 잠잠해지면서 안정세를 되찾았다. 한때 '위험자산'의 대표로 꼽히던 가상화폐(암호화폐)가 급등하는 현상을 보이면서 적극 투자에 나서는 이들도 생겨났다.  </p>
									</div>
								</article>

						</section>
				</div>
				<div class="col-4 col-12-medium">

					<!-- Spotlight -->
						<section class="box spotlight">
							<h2 class="icon fa-file-alt">Spotlight</h2>
							<article>
								<a href="http://moneys.mt.co.kr/news/mwView.php?no=2019093008368055830" class="image featured"><img src="images/sise.jpg" alt=""></a>
								<header>
									<h3><a href="#">[가상화폐 시세] </a></h3>
									<p>'비트코인 900만원대'… 주요 암호화폐 하락세</p>
								</header>
								<p>주요 가상화폐(암호화폐)가 30일 오전 8시30분 기준으로 하락세다.

이날 암호화폐거래소 빗썸에 따르면 암호화폐 대장격인 비트코인은 전날 같은 시간대 대비 16만1000원(1.63%) 내린 969만원에 거래되고 있다.
</p>

<p> 또한 ▲이더리움(20만4600원, -2.01%) ▲리플(289원, -0.69%) ▲비트코인캐시(26만2500원, -4.20%) ▲라이트코인(6만5050원, -2.18%) ▲이오스(3355원, -1.58%) ▲모네로(6만4700원, -2.71%) ▲대시(8만2800원, -3.21%) ▲이더리움클래식(5495원, -2.22%) ▲퀀텀(2085원, -3.70%) ▲비트코인골드(1만130원, -1.36%) ▲오미세고(957원, -2.35%) ▲더마이다스터치골드(1.03원, -5.50%) ▲카이버네트워크(210원, 6.25%) 등이 하락세다.

<p>
								<footer>
									<a href="http://moneys.mt.co.kr/news/mwView.php?no=2019093008368055830" class="button alt icon solid fa-file-alt">Continue Reading</a>
								</footer>
							</article>
						</section>

				</div>
			</div>
		</div>

	</div>
</div></div>
	</c:if>
	${result}
	

	
	
<%@ include file="include/footer.jsp" %>
</body>
</html>
