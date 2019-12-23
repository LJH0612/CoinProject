<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


		

<%@ include file="../include/header.jsp" %>
<meta charset="UTF-8">
<title>Investing</title>
<link rel="stylesheet" href="${path}/css/assets/css/main.css" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">	
	<style>
		#aaaaa { font-size:30px;
		position:center;
			}
		#aab { margin-left:20px;}
		
		a { text-decoration:none;
				
		 }
		
			#log {
			color:white;
	
			
	
			}
		
	</style>
</head>
<body>

               
<div id="header-wrapper">

			<div class="container">			
				<!-- Header -->
				<div id="log" >
<c:choose>
        <c:when test="${sessionScope.userId == null}">                               
        <div style="float:right;"> 
        <a href="${path}/member/login.do" onclick="window.name='MemberServlet.do';window.open(this.href, 'insert',
                    'width=620,height=780,resizable=no,scrollbars=no,status=no,left=630px,top=110px' ) ;return false;" >로그인  &nbsp; &nbsp;/ &nbsp; &nbsp; 회원가입 &nbsp; &nbsp;</a>         
        
                 </div>
                     
           </c:when>
           <c:otherwise>  
            
           <div style="float:right;"> 
        		<a href="${path}/logout.do">/&nbsp;&nbsp;&nbsp;로그아웃 </a>
        	</div>   
        	                  
        		<div style="float:right;"> 
        		<p>${sessionScope.userName}님 환영합니다. &nbsp; &nbsp;</p>
        		     </div>   		 
        		             
           </c:otherwise>                                                                
           </c:choose>				
					</div>
							<br>
					<header id="header">
						<div class="inner">
							<!-- Logo -->
								<h1><a href="${path}" id="logo">&nbsp;&nbsp; &nbsp;&nbsp;Investing</h1>
							&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<img src="${path}/images/nn.png" width="100" style="margin: 0px 0px 0px -20px;"></a>	

								

							
							<!-- Nav -->
							
								<nav id="nav">
									<ul>
										<li class="current_page_item"><a href="${path}">HOME</a></li>
									
										<li>
										<a href="#">입문자 가이드</a>
										<ul>
											<li><a href="${path}/introduce/introduce1.do">가상화폐 소개</a></li>
											<li><a href="${path}/introduce/introduce2.do">거래소 정보 </a></li>
											<li><a href="${path}/introduce/introduce3.do">거래 방법</a></li>
										</ul>
										</li>
										<li><a href="${path}/crypto/sub0.do">암호 화폐</a>
										<ul>
											<li><a href="${path}/crypto/sub0.do">비트코인</a></li>
											<li><a href="${path}/crypto/sub1.do">이더리움</a></li>
											<li><a href="${path}/crypto/sub2.do">리플</a></li>
											<li><a href="${path}/crypto/sub3.do">비트코인 캐쉬</a></li>
											<li><a href="${path}/crypto/sub4.do">라이트코인</a></li>
											<li><a href="${path}/crypto/sub5.do">Tether</a></li>
											<li><a href="${path}/crypto/sub0.do">EOS</a></li>
											<li><a href="${path}/crypto/sub0.do">Binance Coin</a></li>
											<li><a href="${path}/crypto/sub0.do">비트코인 SV</a></li>
											<li><a href="${path}/crypto/sub0.do">Monero</a></li>
										</ul>
										</li>
								
		   <c:if test="${sessionScope.userId != null}"   >
           									<li><a href="${path}/mypage/calendar.do">마이페이지</a>
           										<ul>
           											<li><a href="${path}/mypage/calendar.do">마이페이지</a></li>
           											<li><a href="${path}/mypage/filtering.do"  onclick="window.name='MemberServlet.do';window.open(this.href, 'insert',
                    'width=480,height=624,resizable=no,scrollbars=no,status=no,left=630px,top=110px'  );return false;">매도시기 조회</a></li>
           											<li><a href="${path}/mypage/alert.do">매도시기 푸쉬기능</a>
           										</ul>
           									</li>
       
           						</c:if>      
								
										<li><a href="${path}/board/list.do">자유게시판</a></li>
											
									</ul>
								</nav>
						</div>
					</header>							
				<!-- Banner -->
					<div id="banner">
					
			<h7>스마트한 예측률을 자랑하는</h7>
						<span id="aaaaa" ><p>가상화폐 투자의 시작</p></span>		

			</div>
	</div></div>
	<!-- Scripts -->
	<script src="${path}/css/assets/js/jquery.min.js"></script>
	<script src="${path}/css/assets/js/jquery.dropotron.min.js"></script>
	<script src="${path}/css/assets/js/browser.min.js"></script>
	<script src="${path}/css/assets/js/breakpoints.min.js"></script>
	<script src="${path}/css/assets/js/util.js"></script>
	<script src="${path}/css/assets/js/main.js"></script>
</body>
</html>





