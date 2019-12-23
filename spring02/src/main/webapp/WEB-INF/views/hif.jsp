
<!--
"We are stuck with technology when what we really want is just stuff that works."
Douglas Adams, The Salmon of Doubt.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="darkTheme kr" lang="ko" dir="ltr">
<head>
    <meta charset="utf-8">
                <link type="text/css" rel="stylesheet"
                  href="https://i-invdn-com.akamaized.net/invwidgets/css/topCryptocurrenciesMin_v4d.css">
            <!-- viewport settings -->
    <meta name="apple-mobile-web-app-capable" content="no">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <meta name="HandheldFriendly" content="true">
    <script src="https://i-invdn-com.akamaized.net/invwidgets/js/jquery-1.9.1.min.js"></script>
    <script src="https://i-invdn-com.akamaized.net/invwidgets/js/general.js"></script>
    <script>
        window.siteData = {
			numeric_format: 'us'
		}
    </script>

    <title>주요 암호화폐</title>
<link rel="stylesheet" href="https://i-invdn-com.akamaized.net/crypto_icons/v_170545_cryptoIcon10.css" />    
    
</head>
<body>

    <div class="siteWrapper" id="siteWrapper">
	    <header class="">
    
	        <div class="widgetTitle">주요 암호화폐</div>
    </header>

            <main class="respTbl">
    <section>
        <article class="headerRow">
            <div class="hiddenOne js-col-order">#</div>
            <div class="cryptoIconDiv js-col-icon"></div>
            <div class="left instName js-col-pair_name">종목</div>
            <div class="cryptoSymbol js-col-symbol">기호</div>
            <div class="hiddenOne js-col-priceUsd">가격 (USD)</div>
            <div class="hiddenOne js-col-marketCap">총 시가</div>
            <div class="hiddenOne js-col-vol24 hideItem481">거래량(24H)</div>
            <div class="hiddenOne hideItem481 js-col-totalVol">총 거래량</div>
            <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">가격 (BTC)</div>
            <div class="change js-col-chg24">변동(24H)</div>
            <div class="change hideItem320 js-col-chg7">변동(7D)</div>
        </article>
                    <article id="pair_bitcoin">
									
                <div class="hiddenOne js-col-order">1</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_bitcoin"></span></div>
                <div class="js-col-pair_name left instName" main-value="10,345.4">
				<a href="${path}/spring02/crypto/sub0.do" target="_parent">비트코인</a></div>
                <div class="cryptoSymbol js-col-symbol">BTC</div>
                <div class="hiddenOne js-col-priceUsd  pid-1057391-last">10,345.4</div>
                <div class="hiddenOne js-col-marketCap">$185.86B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$17.76B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">29.41%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">1</div>
                <div class="change js-col-chg24 redFont pid-1057391-pcp">-0.51%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+0.26%</div>
            </article>
                    <article id="pair_ethereum">
                <div class="hiddenOne js-col-order">2</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_ethereum"></span></div>
                <div class="js-col-pair_name left instName" main-value="182.30">
				<a href="${path}/spring02/crypto/sub1.do" target="_parent">이더리움</a></div>
                <div class="cryptoSymbol js-col-symbol">ETH</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061443-last">182.30</div>
                <div class="hiddenOne js-col-marketCap">$19.66B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$7.30B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">12.08%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.0176057</div>
                <div class="change js-col-chg24 greenFont pid-1061443-pcp">+0.93%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+2.25%</div>
            </article>
                    <article id="pair_ripple">
                <div class="hiddenOne js-col-order">3</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_ripple"></span></div>
                <div class="js-col-pair_name left instName" main-value="0.25930">
				<a href="${path}/spring02/crypto/sub2.do" target="_parent">리플</a></div>
                <div class="cryptoSymbol js-col-symbol">XRP</div>
                <div class="hiddenOne js-col-priceUsd  pid-1057392-last">0.25930</div>
                <div class="hiddenOne js-col-marketCap">$11.18B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$1.16B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">1.92%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00002509</div>
                <div class="change js-col-chg24 redFont pid-1057392-pcp">-0.95%</div>
                <div class="change hideItem320 js-col-chg7 redFont">-0.36%</div>
            </article>
                    <article id="pair_bitcoin-cash">
                <div class="hiddenOne js-col-order">4</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_bitcoin-cash"></span></div>
                <div class="js-col-pair_name left instName" main-value="308.27">
				<a href="${path}/spring02/crypto/sub3.do" target="_parent">Bitcoin Cash</a></div>
                <div class="cryptoSymbol js-col-symbol">BCH</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061410-last">308.27</div>
                <div class="hiddenOne js-col-marketCap">$5.55B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$1.54B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">2.56%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.0297534</div>
                <div class="change js-col-chg24 greenFont pid-1061410-pcp">+1.00%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+4.58%</div>
            </article>
                    <article id="pair_litecoin">
                <div class="hiddenOne js-col-order">5</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_litecoin"></span></div>
                <div class="js-col-pair_name left instName" main-value="70.625">
				<a href="${path}/spring02/crypto/sub4.do" target="_parent">라이트코인</a></div>
                <div class="cryptoSymbol js-col-symbol">LTC</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061445-last">70.625</div>
                <div class="hiddenOne js-col-marketCap">$4.47B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$2.70B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">4.48%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00682302</div>
                <div class="change js-col-chg24 greenFont pid-1061445-pcp">+0.51%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+5.66%</div>
            </article>
                    <article id="pair_tether">
                <div class="hiddenOne js-col-order">6</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_tether"></span></div>
                <div class="js-col-pair_name left instName" main-value="1.0033">
				<a href="${path}/spring02/crypto/sub5.do" target="_parent">Tether</a></div>
                <div class="cryptoSymbol js-col-symbol">USDT</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061453-last">1.0033</div>
                <div class="hiddenOne js-col-marketCap">$4.08B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$20.43B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">33.83%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00009656</div>
                <div class="change js-col-chg24 redFont pid-1061453-pcp">-0.21%</div>
                <div class="change hideItem320 js-col-chg7 redFont">-0.18%</div>
            </article>
                    <article id="pair_eos">
                <div class="hiddenOne js-col-order">7</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_eos"></span></div>
                <div class="js-col-pair_name left instName" main-value="3.8859">
				<a href="${path}/spring02/crypto/sub6.do" target="_parent">EOS</a></div>
                <div class="cryptoSymbol js-col-symbol">EOS</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061444-last">3.8859</div>
                <div class="hiddenOne js-col-marketCap">$3.62B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$2.64B</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">4.37%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00037472</div>
                <div class="change js-col-chg24 greenFont pid-1061444-pcp">+4.05%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+16.55%</div>
            </article>
                    <article id="pair_binance-coin">
                <div class="hiddenOne js-col-order">8</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_binance-coin"></span></div>
                <div class="js-col-pair_name left instName" main-value="22.3681">
				<a href="${path}/spring02/crypto/sub7.do" target="_parent">Binance Coin</a></div>
                <div class="cryptoSymbol js-col-symbol">BNB</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061448-last">22.3681</div>
                <div class="hiddenOne js-col-marketCap">$3.47B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$156.30M</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">0.26%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00215038</div>
                <div class="change js-col-chg24 redFont pid-1061448-pcp">-0.59%</div>
                <div class="change hideItem320 js-col-chg7 redFont">-1.68%</div>
            </article>
                    <article id="pair_bitcoin-sv">
                <div class="hiddenOne js-col-order">9</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_bitcoin-sv"></span></div>
                <div class="js-col-pair_name left instName" main-value="130.71">
				<a href="${path}/spring02/crypto/sub8.do" target="_parent">Bitcoin SV</a></div>
                <div class="cryptoSymbol js-col-symbol">BSV</div>
                <div class="hiddenOne js-col-priceUsd  pid-1099037-last">130.71</div>
                <div class="hiddenOne js-col-marketCap">$2.33B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$358.37M</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">0.59%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.0125984</div>
                <div class="change js-col-chg24 redFont pid-1099037-pcp">-3.71%</div>
                <div class="change hideItem320 js-col-chg7 redFont">-2.85%</div>
            </article>
                    <article id="pair_monero">
                <div class="hiddenOne js-col-order">10</div>
                <div class="cryptoIconDiv js-col-icon"><span class="cryptoIcon c_monero"></span></div>
                <div class="js-col-pair_name left instName" main-value="75.752">
				<a href="h${path}/spring02/crypto/sub9.do" target="_parent">Monero</a></div>
                <div class="cryptoSymbol js-col-symbol">XMR</div>
                <div class="hiddenOne js-col-priceUsd  pid-1061467-last">75.752</div>
                <div class="hiddenOne js-col-marketCap">$1.30B</div>
                <div class="hiddenOne js-col-vol24 hideItem481">$59.38M</div>
                <div class="hiddenOne hideItem481 js-col-totalVol">0.10%</div>
                <div class="hiddenOne hiddenOne--none768 hideItem481 js-col-priceBtc">0.00731141</div>
                <div class="change js-col-chg24 redFont pid-1061467-pcp">-1.83%</div>
                <div class="change hideItem320 js-col-chg7 greenFont">+3.25%</div>
            </article>
            </section>
</main>
	    <footer class="footerWrapper ">
    
    
    <div class="bannerWrap" id="ads_div"></div>
</footer>        
    </div> <!-- siteWrapper -->

    <script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-2555300-97', 'auto', {'name': 'webmasterToolsWidgetsTracker'});
ga('webmasterToolsWidgetsTracker.set', 'dimension1', 'kr.investing.com');
ga('webmasterToolsWidgetsTracker.set', 'dimension2', 'TOP_CRYPTOCURRENCIES');
ga('webmasterToolsWidgetsTracker.send', 'pageview');
</script>
<script type="text/javascript" src="https://i-invdn-com.akamaized.net/invwidgets/js/sockjs.min.js"></script>
<script type="text/javascript">stream="https://stream303.forexpros.com:443";</script>
<script type="text/javascript">window.timezoneOffset = 32400;</script>
<script type="text/javascript" src="https://i-invdn-com.akamaized.net/invwidgets/js/utils.js"></script>
<script type="text/javascript" src="https://i-invdn-com.akamaized.net/invwidgets/js/fxindex.js"></script>
<script type="text/javascript">
    var pid_arr = ["pid-1057391:","pid-1061443:","pid-1057392:","pid-1061410:","pid-1061445:","pid-1061453:","pid-1061444:","pid-1061448:","pid-1099037:","pid-1061467:"];
    var TimeZoneID = 88;
</script>
<script src="https://i-invdn-com.akamaized.net/invwidgets/js/89c0ab7319/internal-components/dest/fronter.min.js"></script><script src="https://i-invdn-com.akamaized.net/invwidgets/js/89c0ab7319/components/sockjs/sockjs.min.js"></script><script src="https://i-invdn-com.akamaized.net/invwidgets/js/89c0ab7319/modules/core/binds/app-config.js"></script><script src="https://i-invdn-com.akamaized.net/invwidgets/js/89c0ab7319/modules/core/services/debounce.js"></script><script src="https://i-invdn-com.akamaized.net/invwidgets/js/89c0ab7319/modules/core/services/general-overlay.js"></script><script>typeof(fronter) !== "undefined" && $(document).ready(fronter.$apply);</script>    
</body>
</html>
