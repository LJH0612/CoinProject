<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>거래소</title>
<%@ include file="../include/header.jsp" %>
		<style>

a { text-decoration:none }

			
		
		#aaaaa { font-size:30px;
		position:center;
	}
		#aab { margin-left:20px;}






<!-- 가격표 -->
	
	#about {
		text-align: center;
		color: #fafafa;
		font: normal small Arial, Helvetica;
	}
	
	#about a {
		color: #777;
	}
	
	/* --------------- */
		
	#pricing-table {
		margin: 10px auto 50px auto;
		text-align: center;
		width: 1000px; /* total computed width = 222 x 3 + 226 */
	}

	#pricing-table .plan {
		font: 12px 'Lucida Sans', 'trebuchet MS', Arial, Helvetica;
		text-shadow: 0 1px rgba(255,255,255,.8);        
		background: #fff;      
		border: 1px solid #ddd;
		color: #333;
		padding: 20px;
		width: 150px; /* plan width = 180 + 20 + 20 + 1 + 1 = 222px */      
		float: left;
		position: relative;
	}
	
	#pricing-table #most-popular {
		z-index: 2;
		top: -13px;
		border-width: 3px;
		padding: 30px 20px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		border-radius: 5px;
		-moz-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);
		-webkit-box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);
		box-shadow: 20px 0 10px -10px rgba(0, 0, 0, .15), -20px 0 10px -10px rgba(0, 0, 0, .15);    
	}

	#pricing-table .plan:nth-child(1) {
		-moz-border-radius: 5px 0 0 5px;
		-webkit-border-radius: 5px 0 0 5px;
		border-radius: 5px 0 0 5px;        
	}

	#pricing-table .plan:nth-child(4) {
		-moz-border-radius: 0 5px 5px 0;
		-webkit-border-radius: 0 5px 5px 0;
		border-radius: 0 5px 5px 0;        
	}
	
	/* --------------- */	

	#pricing-table h3 {
		font-size: 20px;
		font-weight: normal;
		padding: 20px;
		margin: -20px -20px 50px -20px;
		background-color: #eee;
		background-image: -moz-linear-gradient(#fff,#eee);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee));    
		background-image: -webkit-linear-gradient(#fff, #eee);
		background-image: -o-linear-gradient(#fff, #eee);
		background-image: -ms-linear-gradient(#fff, #eee);
		background-image: linear-gradient(#fff, #eee);
	}
	
	#pricing-table #most-popular h3 {
		background-color: #ddd;
		background-image: -moz-linear-gradient(#eee,#ddd);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#eee), to(#ddd));    
		background-image: -webkit-linear-gradient(#eee, #ddd);
		background-image: -o-linear-gradient(#eee, #ddd);
		background-image: -ms-linear-gradient(#eee, #ddd);
		background-image: linear-gradient(#eee, #ddd);
		margin-top: -30px;
		padding-top: 30px;
		-moz-border-radius: 5px 5px 0 0;
		-webkit-border-radius: 5px 5px 0 0;
		border-radius: 5px 5px 0 0; 		
	}
	
	#pricing-table .plan:nth-child(1) h3 {
		-moz-border-radius: 5px 0 0 0;
		-webkit-border-radius: 5px 0 0 0;
		border-radius: 5px 0 0 0;       
	}

	#pricing-table .plan:nth-child(4) h3 {
		-moz-border-radius: 0 5px 0 0;
		-webkit-border-radius: 0 5px 0 0;
		border-radius: 0 5px 0 0;       
	}	

	#pricing-table h3 span {
		display: block;
		font: bold 25px/100px Georgia, Serif;
		color: #777;
		background: #fff;
		border: 5px solid #fff;
		height: 100px;
		width: 100px;
		margin: 10px auto -65px;
		-moz-border-radius: 100px;
		-webkit-border-radius: 100px;
		border-radius: 100px;
		-moz-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
		-webkit-box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
		box-shadow: 0 5px 20px #ddd inset, 0 3px 0 #999 inset;
	}
	
	/* --------------- */

	#pricing-table ul {
		margin: 20px 0 0 0;
		padding: 0;
		list-style: none;
	}

	#pricing-table li {
		border-top: 1px solid #ddd;
		padding: 10px 0;
	}
	
	/* --------------- */
		
	#pricing-table .signup {
		position: relative;
		padding: 8px 20px;
		margin: 20px 0 0 0;  
		color: #fff;
		font: bold 14px Arial, Helvetica;
		text-transform: uppercase;
		text-decoration: none;
		display: inline-block;       
		background-color: #72ce3f;
		background-image: -moz-linear-gradient(#72ce3f, #62bc30);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#72ce3f), to(#62bc30));    
		background-image: -webkit-linear-gradient(#72ce3f, #62bc30);
		background-image: -o-linear-gradient(#72ce3f, #62bc30);
		background-image: -ms-linear-gradient(#72ce3f, #62bc30);
		background-image: linear-gradient(#72ce3f, #62bc30);
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		border-radius: 3px;     
		text-shadow: 0 1px 0 rgba(0,0,0,.3);        
		-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0 rgba(0, 0, 0, .7);
		-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0 rgba(0, 0, 0, .7);
		box-shadow: 0 1px 0 rgba(255, 255, 255, .5), 0 2px 0 rgba(0, 0, 0, .7);
	}

	#pricing-table .signup:hover {
		background-color: #62bc30;
		background-image: -moz-linear-gradient(#62bc30, #72ce3f);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#62bc30), to(#72ce3f));      
		background-image: -webkit-linear-gradient(#62bc30, #72ce3f);
		background-image: -o-linear-gradient(#62bc30, #72ce3f);
		background-image: -ms-linear-gradient(#62bc30, #72ce3f);
		background-image: linear-gradient(#62bc30, #72ce3f); 
	}

	#pricing-table .signup:active, #pricing-table .signup:focus {
		background: #62bc30;       
		top: 2px;
		-moz-box-shadow: 0 0 3px rgba(0, 0, 0, .7) inset;
		-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, .7) inset;
		box-shadow: 0 0 3px rgba(0, 0, 0, .7) inset; 
	}
	
	/* --------------- */

	.clear:before, .clear:after {
	  content:"";
	  display:table
	}

	.clear:after {
	  clear:both
	}

	.clear	{
	  zoom:1
	}	
    </style>






<!-- top5 -->



<style>
#indented ul{
	margin: 20px 0; padding: 0; 
	list-style: none;
}
#indented ul li {
	border-top: 1px solid #333; 
	border-bottom: 1px solid #111;
}
#indented ul li:first-child {border-top: none;}
#indented ul li:last-child {border-bottom: none;}
#indented ul li a {
	padding: 10px;	
	display: block;
	color: #111;
	text-decoration: none;
}

</style>

		




<!-표-->
<style>

.header {
  background-color: #241f1f; /* 원래색은 #327a81; */
  color: white;
  font-size: 1.5em;
  padding: 1rem;
  text-align: center;
  text-transform: uppercase;
}

table img {
  border-radius: 50%;
  height: 120px;
  width: 120px;
}

.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 2000px;
}

table {
  width: 100%;
}
table td, table th {
  color: #2b686e;
  padding: 10px;
}
table td {
  text-align: center;
  vertical-align: middle;
}
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: left;
}
table th {
  background-color: #daeff1;
  font-weight: 300;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table, tr, td {
    display: block;
  }

  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
  td:nth-child(2):before {
    content: 'Name:';
  }
  td:nth-child(3):before {
    content: 'Email:';
  }
  td:nth-child(4):before {
    content: 'Phone:';
  }
  td:nth-child(5):before {
    content: 'Comments:';
  }

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 2em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }

  img {
    border: 3px solid;
    border-color: #daeff1;
    height: 100px;
    margin: 0.5rem 0;
    width: 100px;
  }

  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: .8em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
  }

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}

</style>

	</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div id="main-wrapper">
					<div class="wrapper style2">
						<div class="inner">

	<!-- 거래소 소개 -->
<div id="dark" class="container">
    <div id="indented" class="box"><BR><BR>
        <h2><CENTER>국내 가상화폐 거래소 사이트</CENTER></h2>
        <ul>
        	<li><a  ><CENTER><strong> TOP 5</strong>&nbsp;&nbsp;&nbsp;    (2019년 9월 기준)</CENTER></a></li>
       <li></a></li>
          
        </ul>
    </div>
</div>

<br><br>







<!-- 사이트 방문페이지-->
<div id="pricing-table" class="clear">
    <div class="plan">
        <h3>코인원<span>4위</span></h3>
        <a class="signup" href="https://coinone.co.kr/">사이트 방문</a>         
        <ul>
            <li>거래량  <b>4위</b></li>
             <li>최근 30일간 거래금액 관련<b>  0.02% ~ 0.1%</b> </li>
            <li><b> 국내 최초</b>  다중서명 지갑 </li>
			<li>2일 경과 이후 비대면 본인인증 영상 통화 진행 필요</li>		
        </ul> 
    </div >
    <div class="plan" id="most-popular">
        <h3>빗썸<span>1위</span></h3>
        <a class="signup" href="https://www.bithumb.com/">사이트 방문</a>        
        <ul>
          <li>거래량  <b>1위</b></li>
            <li>거래 기본 수수료 <b> 0.25%</b> </li>
            <li>신규 가입 시 가입 축하금 3,000원 지급 </li>
			<li>실명인증, 농협 가상계좌 발급 필요</li>			
        </ul>    
    </div>
    <div class="plan" >
        <h3>코빗<span>3위</span></h3>
		<a class="signup" href="https://www.korbit.co.kr/">사이트 방문</a>
        <ul>
             <li>거래량  <b>3위</b></li>
             <li>최근 30일간의 거래액 관련<b>  차등 부과</b> </li>
            <li>원화 출금 수수료 <b>1,000원</b> </li>
			<li>본인 명의의 주민등록증, 운전면허증, 인터넷뱅킹에 가입된 신한은행 계좌 필요</li>			
        </ul>
    </div>
    <div class="plan" id="most-popular">
        <h3>업비트<span>2위</span></h3>
        <a class="signup" href="https://upbit.com/home">사이트 방문</a>		
        <ul>
             <li>거래량  <b>2위</b></li>
             <li>거래 기본 수수료 <b>  0.05%</b> </li>
            <li>BitGo 이중월렛, Bittrex와 제휴, 카카오페이로 2채널 추가인증</li>
			<li> 실명확인 입출금 계좌 필요</li>			
        </ul>
    </div> 	
 <div class="plan" >
        <h3>고팍스<span>5위</span></h3>
		<a class="signup" href="https://www.gopax.co.kr/">사이트 방문</a>
        <ul>
             <li>거래량  <b>5위</b></li>
             <li>거래 수수료 <b>  Maker Fee 0.040%, Taker Fee 0.040%</b> </li>
            <li><b>국내 최초</b> 워치 앱 출시  </li>
			<li>고팍스 법인계좌에 원화 송금으로 고팍스 지갑에 원화 입금 가능</li>			
        </ul>
    </div>
</div>





<!--가상화폐 소개-->


<BR>
	<!-- 가상화폐 종목 소개 -->
<div id="dark" class="container">
    <div id="indented" class="box"><BR><BR>
        <h2><CENTER>가상화폐 종목 세부정보</CENTER></h2>
        <ul>
        	<li><a ><CENTER><strong>TOP 10</strong>  &nbsp;&nbsp;&nbsp;  (2019년 9월 기준)</CENTER></a></li>
       <li></a></li>
          
        </ul>
    </div>
</div>
<BR><BR>



<div class="table-users">
   <div class="header">cryptocurrency</div>

   <table>
      <tr>
         <th>Picture</th>
         <th>Name  (Symbol)</th>
         <th>Feature</th>
         <th >Maximum Issue Amount</th>
         <th width="190">Note</th>
      </tr>

      <tr>
         <td><a href="https://bitcoin.org/ko/"><img src="../images/bit.png" alt="" /></td>
         <td><a href="https://bitcoin.org/ko/">비트코인 (BTC)</td>
         <td>1. 비트코인(bitcoin)은 블록체인 기술을 기반으로 만들어진 온라인 암호화폐이다. <br> 2. 중앙은행이 없이 전 세계적 범위에서 P2P 방식으로 개인들 간에 자유롭게 송금 등의 금융거래를 할 수 있게 설계되어 있다. <br>3. 거래장부는 블록체인 기술을 바탕으로 전 세계적인 범위에서 여러 사용자들의 서버에 분산하여 저장하기 때문에 해킹이 사실상 불가능하다. <br>4. 비트코인은 SHA-256 기반의 암호 해시 함수를 사용하며 여러 알트코인들 사이에서 일종의 기축통화 역할을 하고 있다.</td>
         <td>21,000,000 BTC</td>
         <td></td>
      </tr>

      <tr>
         <td><a href="https://www.ethereum.org/"><img src="../images/eth.png" alt="" /></td>
         <td><a href="https://www.ethereum.org/">이더리움 (ETH)</td>
         <td>1. 이더리움은 블록체인 기술을 기반으로 스마트 계약 기능을 구현하기 위한 분산 컴퓨팅 플랫폼이다.<br>
		     2. 이더리움은 가상 머신을 통해 만들고 SNS, 이메일, 전자투표 등 다양한 정보를 기록하는 것이 가능하다.<br>
			 3. 비트코인 이후에 등장한 알트코인 중 시가 총액이 가장 높은 대표적인 알트코인이다.</td>
         <td>현재 정해지지 않음</td>
         <td></td>
      </tr>

      <tr>
         <td><a href="https://www.ripple.com/"><img src="../images/rip.png" alt="" /></td>
         <td><a href="https://www.ripple.com/">리플 (XRP)</td>
         <td>1. 리플(ripple)은 전 세계 여러 은행들이 실시간으로 자금을 송금하기 위해 사용하는 프로토콜 겸 암호화폐이다.<br>
		 2. 타원곡선 디지털서명 알고리즘(ECDSA)을 사용하며, 채굴이 없이 합의에 의해 운영된다.<br>
		 3. XRP 프로토콜은 무료 오픈 소스로 개방되어 있어 누구든지 개발에 참여할 수 있다.</td>
         <td>1000억 XRP</td>
         <td> </td>
      </tr>

      <tr>
         <td><a href="https://www.choosebitcash.com/"><img src="../images/bitcash.jpg" alt="" /></td>
         <td><a href="https://www.choosebitcash.com/">비트캐시 (BCH)</td>
         <td>1. 비트코인 캐시(Bitcoin Cash, BCH/BCC)는 암호화폐 비트코인의 하드 포크이다.<br>
		 2. 한계 속도를 극복하기 위해 블록 크기를 2~8MB까지 유동적으로 늘리는 편법 정책을 적용했다.<br>
		 </td>
         <td>17,487,613 BCH</td>
         <td></td>
      </tr>

	   <tr>
         <td><a href="https://litecoin.com/en/" ><img src="../images/litecoin.png" alt="" /></td>
         <td><a href="https://litecoin.com/en/" >라이트 코인 (LTC)</td>
         <td>1. 라이트코인(Litecoin, LTC)은 P2P 암호화폐의 하나로서 MIT/X11 라이선스로 배포된 오픈 소스 소프트웨어 프로젝트이다.<br>
		 2. 비트코인이 최대 채굴량이 약 2,100만 개인 것에 비해 라이트코인은 약 8,400만 개로 4배가 많다. <br>
		 3. 다른 코인에 비해 간편한 채굴이 가능하며 .PC용 GPU로도 채굴이 가능하.다.</td>
         <td>84,000,000 LTC</td>
         <td>	
</td>
      </tr>

	   <tr>
         <td><a href="https://tether.to/"><img src="../images/tether.jpg" alt="" /></td>
         <td><a href="https://tether.to/">테더 (USDT)</td>
         <td>1. 비트코인의 블록체인 또는 이더리움 블록체인을 이용하여 발행한다.<br>
		 2. 테더를 교환하는 방법은 직접 테더사에 달러를 입금하고 교환받거나, 자회사인 비트파이넥스를 통해 입금 후 교환하거나<br> 또는 자국의 법정화폐를 통해 비트코인을 매수한 후 이를 테더마켓에서 매수,매도하여 얻을 수 있다.<br>
		 3. 은행과의 거래관계가 불안정해 자주 입출금이 중단되고 계열사에 예치금을 대출해준 사실이 드러나는 등 여러 문제를 가지고있다.</td>
         <td>은행에 예치된 달러 만큼</td>
         <td></td>
      </tr>

	   <tr>
         <td><a href="https://www.binance.com/en"><img src="../images/binance.jpg" alt="" /></td>
         <td><a href="https://www.binance.com/en">바이낸스 코인 (BNB)</td>
         <td>1. 바이낸스 코인은 중국 홍콩의 암호화폐 거래소 바이낸스(Binance)에서 사용되는 기축통화용 코인이다.<br>
		 2.  암호화폐 간 상호교환만 가능해 명목화폐로는 교환할 수 없다.<br>
		 3.바이낸스 코인은 이더리움 블록체인 기반으로 ERC-20을 사용하며 바이낸스 체인의 가스 요금 체계로 결정되었다.<br>
		</td>
         <td>187,536,713 BNB</td>
         <td></td>
      </tr>

	   <tr>
         <td><a href="https://eos.io/" ><img src="../images/eos.jpg" alt="" /></td>
         <td><a href="https://eos.io/" >이오스 (EOS)</td>
         <td>1. 이오스(EOS.IO)는 위임지분증명(DPoS) 방식을 사용하는 제3세대 암호화폐이다.<br>
		 2. 이오스는 이더리움의 느린 처리 속도와 높은 수수료 문제를 해결하기 위한 대안으로 등장하였다. <br>
		 3. 분산 애플리케이션인 디앱(DApp)을 구동할 수 있는 플랫폼을 제공함으로써 범용적인 블록체인 운영체제(OS)를 만드는 것을 목표로 한다.</td>
         <td>10억 EOS</td>
         <td></td>
      </tr>

	   <tr>
         <td><a href="https://bitcoinsv.io/"><img src="../images/bitsv.png" alt="" /></td>
         <td><a href="https://bitcoinsv.io/">비트코인 SV (BSV)</td>
         <td>1. 비트코인캐시(BCH)에서 하드포크 방식으로 분리된 암호화폐로 안정성, 보안성 및 즉각적인 트랜잭션에 대한 개선점을 강조하고 있다.<br>
		 2. 안정적인 프로토콜과 대규모 온체인 확장성으로 글로벌 비즈니스들이 비트코인 블록체인 위에서 더 쉽게 사용될 수 있도록 돕고 있다. <br></td>
         <td>	21,000,000 BSV</td>
         <td></td>
      </tr>

	   <tr>
         <td><a href="https://www.getmonero.org/"><img src="../images/monero.png" </td>
         <td><a href="https://www.getmonero.org/">모네로 (MXR)</td>
         <td>1. 탈중앙화에 집중한 비트코인과는 달리 익명성에 중점을 두고 개발되었다.<br>
		 2. 익명성이 보장되는 CryptoNote 프로토콜로 송금 증명을 하고 작업 증명에는 CryptoNight 기법을 사용한다.<br>
		 3. 익명성에 보안상 취약점이 있다고 한다.</td>
         <td>무한정</td>
         <td></td>
      </tr>
   </table>
</div>


</div>
</div>
</div>

<%@ include file="../include/footer.jsp" %>
</body>
</html>