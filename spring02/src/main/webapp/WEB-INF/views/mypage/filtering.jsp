<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <%@ include file="../include/header.jsp" %>
<style>



<style>



.containers {
  margin: 50px auto;
  width: 500px;
  text-align: center;
}
.container > .dropdown {
  margin: 0 20px;
  vertical-align: top;
}

.dropdown {
  display: inline-block;
  position: relative;
  overflow: hidden;
  height: 30px;
  width: 160px;
  background: #f2f2f2;
  border: 1px solid;
  border-color: white #f7f7f7 #f5f5f5;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
}
.dropdown:before, .dropdown:after {
  content: '';
  position: absolute;
  z-index: 2;
  top: 9px;
  right: 10px;
  width: 0;
  height: 0;
  border: 4px dashed;
  border-color: #888 transparent;
  pointer-events: none;
}
.dropdown:before {
  border-bottom-style: solid;
  border-top: none;
}
.dropdown:after {
  margin-top: 7px;
  border-top-style: solid;
  border-bottom: none;
}

.dropdown-select {
  position: relative;
  width: 130%;
  margin: 0;
  padding: 6px 8px 6px 10px;
  height: 32px;
  line-height: 14px;
  font-size: 12px;
  color: #111;
  text-shadow: 0 1px white;
  /* Fallback for IE 8 */
  background: #f2f2f2;
  /* "transparent" doesn't work with Opera */
  background: rgba(0, 0, 0, 0) !important;
  border: 0;
  border-radius: 0;
  -webkit-appearance: none;
}
.dropdown-select:focus {
  z-index: 3;
  width: 100%;
  color: #394349;
  outline: 2px solid #49aff2;
  outline: 2px solid -webkit-focus-ring-color;
  outline-offset: -2px;
}
.dropdown-select > option {
  margin: 3px;
  padding: 6px 8px;
  text-shadow: none;
  background: #f2f2f2;
  border-radius: 3px;
  cursor: pointer;
}

/* Fix for IE 8 putting the arrows behind the select element. */
.lt-ie9 .dropdown {
  z-index: 1;
}
.lt-ie9 .dropdown-select {
  z-index: -1;
}
.lt-ie9 .dropdown-select:focus {
  z-index: 3;
}

/* Dirty fix for Firefox adding padding where it shouldn't. */
@-moz-document url-prefix() {
  .dropdown-select {
    padding-left: 6px;
  }
}




</style>



<link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
<style type="text/css">

.form-style-10{

	width:400px;
	padding:30px;
	
	background: #FFF;
	border-radius: 10px;
	-webkit-border-radius:10px;
	-moz-border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
	-moz-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
	-webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
}
.form-style-10 .inner-wrap{
	padding: 15px;
	background: #F8F8F8;
	border-radius: 6px;
	margin-bottom: 15px;
}
.form-style-10 h1{
text-align: center;
	background: #2A88AD;
	padding: 20px 30px 15px 30px;
	margin: -30px -30px 30px -30px;
	border-radius: 10px 10px 0 0;
	-webkit-border-radius: 10px 10px 0 0;
	-moz-border-radius: 10px 10px 0 0;
	color: #fff;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.12);
	font: normal 30px 'Bitter', serif;
	-moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
	-webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
	box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
	border: 1px solid #257C9E;
}
.form-style-10 h1 > span{
	display: block;
	margin-top: 2px;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-10 label{
	display: block;
	font: 13px Arial, Helvetica, sans-serif;
	color: #888;
	margin-bottom: 15px;
}
.form-style-10 input[type="text"],




.form-style-10 textarea,
.form-style-10 select {
	display: block;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	padding: 8px;
	border-radius: 6px;
	-webkit-border-radius:6px;
	-moz-border-radius:6px;
	border: 2px solid #fff;
	box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
	-moz-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
	-webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
}

.form-style-10 .section{
	font: normal 20px 'Bitter', serif;
	color: #111;
	margin-bottom: 5px;
}
.form-style-10 .section span {
	background: #2A88AD;
	padding: 5px 10px 5px 10px;
	position: absolute;
	border-radius: 50%;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border: 4px solid #fff;
	font-size: 14px;
	margin-left: -45px;
	color: #fff;
	margin-top: -3px;
}
.form-style-10 input[type="button"], 
.form-style-10 input[type="submit"]{

	background: #2A88AD;
	padding: 8px 20px 8px 20px;
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	color: #fff;
	font: bold 30px 'Bitter', serif;
	-moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
	-webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
	border: 1px solid #257C9E;
	font-size: 17px;
	margin-left:150px;
}
.form-style-10 input[type="button"]:hover, 
.form-style-10 input[type="submit"]:hover{
	background: #2A6881;
	-moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);	
	-webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
	box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
}

</style>
<script>

function filtering(){
	
		/* var t_Name = form1.$("#t_Name").val();
		var buy= $("#buy").val();
		var yeild = $("#yeild").val();
		if(form1.$("#yeild").val() == 0){
			var yeild_low = $("#yeild").val($("buy"));
			var yeild_high = $("#yeild").val($("buy")*0.2+buy);
			
		}
		if(form1.$("#yeild").val() == 1){
			var yeild_low = $("#yeild").val(buy*0.3+buy);
			var yeild_high = $("#yeild").val(buy*0.4+buy);
		}
		if(form1.$("#yeild").val() == 2){
			var yeild_low = $("#t_yeild").val(buy*0.5+buy);
			var yeild_high = $("#t_yeild").val(buy*0.6+buy);
		}
		if(form1.$("#yeild").val() == 3){
			var yeild_low = $("#t_yeild").val(buy*0.7+buy);
			var yeild_high = $("#t_yeild").val(buy*0.8+buy);
		}
		if(form1.$("#yeild").val() == 4){
			var yeild_low = $("#t_yeild").val(buy*0.9+buy);
			var yeild_high = $("#t_yeild").val(buy*100+buy);

		} */
		// 태크.val() : 태그에 입력된 값
		// 태크.val("값") : 태그의 값을 변경 
		var t_Name = $("#t_Name").val();
		var yeild = $("#yeild").val();
		var buy = $("#buy").val();
		
		if(t_Name== ""){
			alert("종목을 선택하세요!");
			
			return; // 함수 종료
		}
		
		if(yeild == ""){
			alert("수익률을 선택하세요!");
			
			return; // 함수 종료
		}
		
		if(buy == ""){
			alert("매도가를  입력하세요!");
			
			return; // 함수 종료
		}
		
		
		
			// 제출
		document.form1.submit();

	};

</script>


 </head>
 <body>



<div class="form-style-10">
<h1>필터링</h1>
<form name="form1" method="POST" action="${path}/mypage/filtering_output.do" >
    <div class="section" >종목 선택</div>
    <div class="inner-wrap">
        <label>원하는 종목을 선택하세요. 
    <section class="containers"><BR>
    <div class="dropdown">
      <select  name="t_Name" id="t_Name" class="dropdown-select" >
        <option value="">종목 선택</option>
        <option value="pre_bitcoin">비트코인 (BTC)</option>
		<option value="pre_ethereum">이더리움 (ETH)</option>
		<option value="pre_xrp">리플 (XRP)</option>
		<option value="pre_bitcoincash">비트캐시 (BCH)</option>
		<option value="pre_litecoin">라이트 코인 (LTC)</option>
		<option value="pre_bitcoinsv">비트코인SV</option>
        <option value="pre_tether">테더 (USDT)</option>
        <option value="pre_binance">바이낸스 코인 (BNB)</option>
		<option value="pre_eos">이오스 (EOS)</option>
		<option value="pre_monero">모네로 (XMR)</option>
      </select>
    </div>
  </section>
</label>
   
    </div>

    <div class="section" >수익률</div>
    <div class="inner-wrap">
        <label>원하는 수익률을 선택하세요. <br><br>
			<input type="radio" name="yeild" id = "yeild" checked="checked" value="0" />0~2%
			<input type="radio" name="yeild" id = "yeild" value="1" />3~4% 
			<input type="radio" name="yeild" id = "yeild" value="2" />5~6%
			<input type="radio" name="yeild" id = "yeild" value="3" />7~8%
			<input type="radio" name="yeild" id = "yeild" value="4" />9% 이상
		</label> 
    </div>

    <div class="section" >매수가</div>
        <div class="inner-wrap" style="margin-bottom:2px;">
        <label>
        매수가를 숫자로 입력하세요. <BR><BR><input type='text' name='buy'  id="buy" value=""/></label>
    </div>

    <div class="button-section" >
     <input type="button" id="sub" name="Sign Up" VALUE="제출" onclick="filtering()" />
     <input type="reset" value="취소" />
     <span class="privacy-policy">
     </span>
    </div>
</form>
</div>


 </body>
</html>
