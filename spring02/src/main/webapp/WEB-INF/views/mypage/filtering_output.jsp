<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
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
<style TYPE="text/css">

#mid {
background-color:white;}

div {
	display: block;
}

td {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

th {
	font-family: "돋움";
	font-size: 9pt;
	color: #000000;
}

select {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}



.day {
	width: 100px;
	height: 30px;
	font-weight: bold;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.sat {
	color: #529dbc;
}

.sun {
	color: red;
}

.today_button_div {
	float: right;
}

.today_button {
	width: 100px;
	height: 30px;
}

.calendar {
	width: 50%;
	margin: auto;
}

.navigation {
	margin-top: 100px;
	margin-bottom: 30px;
	text-align: center;
	font-size: 25px;
	vertical-align: middle;
}

.calendar_body {
	width: 100%;
	background-color: #FFFFFF;
	border: 1px solid white;
	margin-bottom: 50px;
	border-collapse: collapse;
}

.calendar_body .today {
	border: 1px solid white;
	height: 120px;
	background-color: #c9c9c9;
	text-align: left;
	vertical-align: top;
}

.calendar_body .date {
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.date {
	margin-bottom: 10px;
}

.sat {
	margin-bottom: 10px;
}

.sun {
	margin-bottom: 10px;
}

.calendar_body .sat_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sat_day .sat {
	color: #529dbc;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .sun_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sun_day .sun {
	color: red;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .normal_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	vertical-align: top;
	text-align: left;
}

.before_after_month {
	margin: 10px;
	font-weight: bold;
}

.before_after_year {
	font-weight: bold;
}

.this_month {
	margin: 10px;
}

.schdule_add_button {
	float: right;
}
/*게시판 이동 모달*/
#mask_board_move {
	position: absolute;
	z-index: 9000;
	background-color: #000;
	display: none;
	left: 0;
	top: 0;
}

.normal_move_board_modal {
	display: none;
	position: fixed;
	z-index: 10000;
	left: 42% !important;
	top: 30% !important;
	margin-left: -250px !important;
	margin-top: -100px !important;
	width: 50% !important;
	height: 65% !important;
	border-radius: 12px !important;
	background-color: white !important;
}

.normal_move_board_modal .top {
	background-color: black;
	width: 100%;
	height: 13%;
	border-radius: 12px 12px 0px 0px;
}

.normal_move_board_modal .top .close {
	float: right;
	cursor: pointer;
	color: white;
	font-size: 25px;
	font-weight: bold;
	padding-top: 5px;
	padding-right: 20px;
}

.normal_move_board_modal .top .subject {
	float: left;
	margin-left: 10px;
	margin-top: 20px;
	font-size: 20px;
	font-weight: bold;
	color: white;
	padding-left: 20px;
}

.normal_move_board_modal .bottom {
	width: 100%;
	height: 15%;
	vertical-align: middle;
}

.normal_move_board_modal .bottom .info {
	padding: 10px 15px 10px 15px;
	text-align: left;
	font-size: 12px;
	color: red;
	margin-left: 50px;
}

.normal_move_board_modal .bottom .contents {
	margin: 20px 50px 20px 50px;
	text-align: center;
}

.normal_move_board_modal .bottom .contents .board_select {
	width: 240px;
	height: 40px;
	font-size: 15px;
}

.normal_move_board_modal .bottom .contents .board_move_go {
	width: 80px;
	height: 40px;
	font-size: 15px;
	background-color: gray;
	color: white;
}

.normal_move_board_modal ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

.normal_move_board_modal ul li {
	text-align: left;
	padding: 5px;
	height: 30px;
}

.normal_move_board_modal ul li .text_subject {
	width: 10%;
	height: 100%;
	float: left;
	font-size: 18px;
	vertical-align: middle;
	margin-top: 3px;
}

.normal_move_board_modal ul li .text_desc {
	height: 25px;
	width: 90%;
	float: left;
}

.normal_move_board_modal ul li .text_area_desc {
	width: 90%;
	float: left;
}

.normal_move_board_modal ul li .text_type1 {
	height: 100% !important;
	width: 100%;
}

.normal_move_board_modal ul li .textarea_type1 {
	width: 100%;
	font-size: 18px;
}

.normal_move_board_modal ul .button_li {
	padding-top: 130px;
	width: 100%;
}

.normal_move_board_modal .bottom .contents .board_move_go {
	width: 100% !important;
	height: 40px;
	font-size: 15px;
	background-color: gray;
	color: white;
}

.date_subject {
	margin: 0px;
	margin-bottom: 5px;
	margin-left: 12px;
	font-size: 12px;
	font-weight: bold;
}

/*프로필*/
.profile_group {
	width: 50%;
	margin: auto;
}


.profile_header {
	padding: 32px 29px 32px;
	text-align: left;
	border: 1px solid #dadada;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: #fff;
	position: releative;
}

#profileimg {
	position: absolute;
}

#profile {
	margin-left: 450px;
	overflow: hidden;
}

.sh_group, .sh_group2 {
	margin: 16px 8px 0;
	padding: 32px 29px 32px;
	text-align: left;
	border: 1px solid #dadada;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: #fff;
}

.sh_header {
	position: relative;
}

#profile_body {
	width: 100%;
	display: none;
	position: releative;
}

.column {
	float: none;
	overflow: hidden;
	width: auto;
}
/* 프로필끝 */

/* 관심종목  */
#member_historys{
	position:center;
}

/* 관심종목끝 */
</style>
<style type="text/css">

.form-style-10{

	width:400px;
	padding:30px;
	margin:40px auto;
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
<script type="text/javascript">

function wrapCreateBoardByMask() {
	// 화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	// 마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask_board_move').css({
		'width' : maskWidth,
		'height' : maskHeight
	});

	$('#mask_board_move').fadeTo("slow", 0.8);

	$('.normal_move_board_modal').show();
}

$(function() {
		//검은 막 띄우기
		//기본 모달창
		$('.openmask_board_move').click(function(e) {
			//클릭 시 이벤트
			console.log("모달 켭니다.");
			e.preventDefault();
			wrapCreateBoardByMask();
		});

		//닫기 버튼을 눌렀을 때
		$('.normal_move_board_modal .close').click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();
			$('#mask_board_move, .normal_move_board_modal').hide();
		});

		//검은 막을 눌렀을 때
		$('#mask_board_move').click(function() {
			$(this).hide();
			$('.normal_move_board_modal').hide();
		});

	});
	
function scheduleAdd() {
	var schedule_add_form = document.schedule_add;
	if (schedule_add_form.schedule_date.value == ""
			|| schedule_add_form.schedule_date.value == null) {
		alert("날짜를 입력해주세요.");
		schedule_add_form.schedule_date.focus();
		return false;
	} else if (schedule_add_form.schedule_subject.value == ""
			|| schedule_add_form.schedule_subject.value == null) {
		alert("제목을 입력해주세요.");
		schedule_add_form.schedule_date.focus();
		return false;
	}
	schedule_add_form.submit();
}

</script>
<%@ include file="../include/header.jsp" %>

 </head>
 <body>



<div class="form-style-10">
<h1>조회 결과</h1>
<form>
   

  <center>  
  <br>
  <div class="section">
			
			<div><image src="${path}/images/${map.get("image")}"></image><label>${map.get("Stocks")}</label></div> 
			
  </div>
  </center>
  <br>
  <br>

        <div class="inner-wrap">
        <label> 예측 매도일  :  ${dto.date} <BR><BR><BR>
				예측 매도가  :  ${dto.price }  달러 <BR><BR><BR>
		</label>
		<div class="schudule_button_div">
					
		</div>
		
		<div id="member_modal">
			<!--  어두워지는 부분 -->
			<div id="mask_board_move"></div>
			<!--  어두워지는 부분 ENd-->
			<!--  아랫부분 모달 부분 -->
			<div class="normal_move_board_modal">
				<div class="top" style="">
					<div class="close">x</div>
					<div class="subject">일정 등록</div>
				</div>

				<div class="bottom">
					<div class="info">* 순번은 해당 날짜안에서 순서데로 입력이 됩니다.(하루에 최대 4개의
						스케쥴만 등록할 수 있습니다.)</div>
					<form name="schedule_add" action="${path}/mypage/schedule_add.do">
						<input type="hidden" name="year" value="${today_info.search_year}" />
						<input type="hidden" name="month"
							value="${today_info.search_month-1}" />
						<div class="contents">
							<ul>
								<li>
									<div class="text_subject">순번 :</div>
									<div class="text_desc">
										<input type="text" name="schedule_num" class="text_type1" />
									</div>
								</li>
								<li>
									<div class="text_subject">날짜 :</div>
									<div class="text_desc">
										<input type="date" name="schedule_date" class="text_type1" value="${dto.date }"/>
									</div>
								</li>
								<li>
									<div class="text_subject">제목 :</div>
									<div class="text_desc">
										<input type="text" name="schedule_subject" class="text_type1" value="${map.get("Stocks")}"/>
										
									</div>
								</li>
								<li>
									<div class="text_subject">내용 :</div>
									<div class="text_area_desc">
										<textarea name="schedule_desc" class="textarea_type1" rows="7"></textarea>
									</div>
								</li>
								<li class="button_li">
									<button type="button" class="board_move_go pointer"
										onclick="scheduleAdd();">일정등록</button>
								</li>
							</ul>

						</div>
					</form>
				</div>

			</div>
		</div>

		 

    </div>

   
</form>
</div>


 </body>
</html>
