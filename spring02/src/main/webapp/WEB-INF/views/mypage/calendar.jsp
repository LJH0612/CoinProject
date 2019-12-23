<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/header.jsp"%>
<title>마이페이지</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js">
	
</script>

<!-- jquery datepicker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- jquery datepicker 끝 -->

<!-- 슬라이드 토글 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 슬라이드 토글 제이쿼리 끝 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">







<script type="text/javaScript">
	/*모달자바스크립트*/
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
	/* 모달자바스크립트끝  */

	/* 데이트피커자바스크립트  */
	$(function() {
		$("#testDatepicker").datepicker(
				{
					dateFormat : "yy-mm-dd",
					changeMonth : true,
					changeYear : true,
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ]
				});
		$('#datepicker').datepicker('setDate', 'today');
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

	/* 데이트피커자바스크립트끝  */
</script>

<style TYPE="text/css">
#mid {
	background-color: white;
	padding: 50px;
}

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

/*캘린더  */
#member_calendar {
	padding: 5px;
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

/*캘린더끝  */

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
	padding: 10px;
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
	width: 85%;
	float: left;
}

.normal_move_board_modal ul li .text_desc1 {
	height: 25px;
	width: 88%;
	float: left;
}

.normal_move_board_modal ul li .text_area_desc {
	width: 85%;
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
	width: 90%;
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
	padding: 32px 29px 32px;
	border: 1px solid #dadada;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: #fff;
	position: releative;
}

#profileimg {
	position: absolute;
	margin-top: 60px;
	margin-left: 60px;
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

.column {
	float: none;
	overflow: hidden;
	width: auto;
}

.membertable {
	width: 90%;
}

#tdid {
	background: #D5D5D5;
}

#h2pro {
	margin-left: 130px;
}

#h4pro {
	margin-left: 150px;
}

#btnView {
	margin-left: 130px;
	margin-top: 20px;
}

::placeholder {
	color: #D5D5D5;
}

#pcontent {
	color: #9DCEFF;
}
/* 프로필끝 */

/* 관심종목  */
#member_historys {
	width: 50%;
	margin: auto;
	text-align: left;
}

/* 관심종목끝 */
</style>

<style>
.container {
	background: url("images/mainBackground.png") no-repeat;
	width: 1800px;
	margin: 200px auto;
	z-index: -1;
}

.homeBox {
	position: relative;
	float: left;
	display: block;
}

.homeBox .one_fourth {
	text-align: center;
	overflow: hidden;
	background-image: linear-gradient(bottom, #F3F3F3 100%, #FAFAFA 0%);
	background-image: -o-linear-gradient(bottom, #F3F3F3 100%, #FAFAFA 0%);
	background-image: -moz-linear-gradient(bottom, #F3F3F3 100%, #FAFAFA 0%);
	background-image: -webkit-linear-gradient(bottom, #F3F3F3 100%, #FAFAFA 0%);
	background-image: -ms-linear-gradient(bottom, #F3F3F3 100%, #FAFAFA 0%);
	background-image: -webkit-gradient(linear, left bottom, left top, color-stop(1, #F3F3F3),
		color-stop(0, #FAFAFA));
	border: 1px solid #E1E1E1;
	-moz-box-shadow: 0px 1px 0px #ecebeb;
	-webkit-box-shadow: 0px 1px 0px #ecebeb;
	height: 228px;
	width: 228px;
	margin-right: 10px;
	-webkit-transition: background 0.5s linear;
	-moz-transition: background 0.5s linear;
	-o-transition: background 0.5s linear;
	transition: background 0.5s linear;
}

.one_half, .one_third, .two_thirds, .one_fourth, .three_fourths,
	.one_fifth, .two_fifth, .three_fifths, .four_fifths {
	position: relative;
	margin: 7px;
	margin-right: 3.8%;
	float: left;
}

.homeBox .one_fourth div, .homeBox .last div {
	padding: 10px;
}

.homeBox .one_fourth:hover {
	background: #252525;
}

.homeBox .one_fourth .boxImage {
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

.homeBox .one_fourth:hover .boxImage {
	position: relative;
	-webkit-animation: moveFromTop 350ms ease;
	-moz-animation: moveFromTop 350ms ease;
	-ms-animation: moveFromTop 350ms ease;
}

.homeBox .one_fourth h2 {
	color: #4B4A4A;
	margin: 0 0 10px 0;
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

.homeBox .one_fourth:hover h2 {
	position: relative;
	color: #EAEAEA;
	-webkit-animation: moveFromTop 200ms ease;
	-moz-animation: moveFromTop 200ms ease;
	-ms-animation: moveFromTop 200ms ease;
}

.homeBox .one_fourth .boxDescription {
	color: #4B4A4A;
	margin: 0 0 10px 0;
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

.homeBox .one_fourth:hover .boxDescription {
	position: relative;
	color: #EAEAEA;
	-webkit-animation: moveFromBottom 500ms ease-in-out;
	-moz-animation: moveFromBottom 500ms ease-in-out;
	-ms-animation: moveFromBottom 500ms ease-in-out;
}

@
-webkit-keyframes moveFromTop {from { top:-600px;
	
}

to {
	top: auto;
}

}
@
-moz-keyframes moveFromTop {from { -moz-transform:translateY(-600%);
	
}

to {
	-moz-transform: translateY(0%);
}

}
@
-ms-keyframes moveFromTop {from { -ms-transform:translateY(-600%);
	
}

to {
	-ms-transform: translateY(0%);
}

}
@
-webkit-keyframes moveFromBottom {from { bottom:-400px;
	
}

to {
	top: auto;
}

}
@
-moz-keyframes moveFromBottom {from { -moz-transform:translateY(400%);
	
}

to {
	-moz-transform: translateY(0%);
}

}
@
-ms-keyframes moveFromBottom {from { -ms-transform:translateY(400%);
	
}

to {
	-ms-transform: translateY(0%);
}
}

</style>



<style>
html, body {
	height: 100%;
}

.loginwrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.probtn {
	width: 100px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #489CFF;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.probtn:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>
<style>
html, body {
	height: 100%;
}

.datewrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.datebutton {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #489CFF;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.datebutton:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>






</head>

<body>
	<%@ include file="../include/menu.jsp"%>
	<div id="mid">

		<div class="profile_group">

			<div id="profileimg">
				<img src="../images/prologo.jpg" />
			</div>

			<div id="profile">
				<h2 id="h2pro">내 정보</h2>
				<h4 id="h4pro">${sessionScope.userName}님환영합니다.</h4>

				<c:choose>
					<c:when test="${message2}">
						<form name="form1" method="post">
							<table class="membertable" border="1" width="400px">
								<tr>
									<td><h4>아이디</h4></td>
									<td><input type="text" id="tdid" name="userId"
										value="${sessionScope.userId}" readonly="readonly"></td>
								</tr>
								<tr>
									<td><h4>비밀번호</h4></td>
									<td><input type="password" name="userPw" id="userPw"
										placeholder="비밀번호"></td>
								</tr>
								<tr>
									<td><h4>이름</h4></td>
									<td><input type="text" name="userName"
										value="${dto.userName}"></td>
								</tr>
								<tr>
									<td><h4>이메일</h4></td>
									<td><input type="text" name="userEmail"
										value="${dto.userEmail}"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<button class="probtn" id="btnUpdate">수정</button>
										<button class="probtn" id="btnDelete">삭제</button>
										<div style="color: red;">${message1}</div>
									</td>
								</tr>
							</table>
						</form>
					</c:when>

					<c:otherwise>
						<form name="form2" method="post">
							<table class="membertable" border="1" width="400px">
								<tr>
									<td><h4>아이디</h4></td>
									<td><input type="text" id="tdid" name="userId"
										value="${sessionScope.userId}" readonly="readonly"></td>
								</tr>
								<tr>
									<td><h4>비밀번호</h4></td>
									<td><input type="password" name="userPw" id="userPw"
										placeholder="비밀번호"></td>
								</tr>
								<tr>
									<td><h4>비밀번호 확인</h4></td>
									<td><input type="password" name="userPwCk" id="userPwCk"
										placeholder="비밀번호 확인"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><p id="pcontent">
											<font size="2"> 내정보 변경을 원하신다면 비밀번호 입력과 함께 확인을 눌러주세요.</font>
										</p></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><div class="loginwrap">
											<button class="probtn" id="btnView">확인</button>
										</div>
										<div style="color: red;">${message1}</div></td>
								</tr>
							</table>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<script>
			$(document).ready(function() {
				$("#btnView").click(function() {
					if (form2.userPw.value == "") {
						alert("비밀번호를 입력하지 않았습니다");
						form2.userPw.focus();
						return (false);
					}
					if (form2.userPw.value != form2.userPwCk.value) {
						alert("비밀번호가 일치하지 않습니다");
						form2.userPw.focus();
						return (false);
					} else {
						document.form2.action = "${path}/mypage/btnview.do";
						document.form2.submit();
					}
				});
			});

			$(document).ready(function() {
				$("#btnUpdate").click(function() {
					if (confirm("수정하시겠습니까?")) {
						document.form1.action = "${path}/mypage/update.do";
						document.form1.submit();
					}
				});
			});

			$(document).ready(function() {
				$("#btnDelete").click(function() {
					if (confirm("삭제하시겠습니까?")) {
						document.form1.action = "${path}/mypage/delete.do";
						document.form1.submit();
					}
				});
			});

			$(document).ready(function() {
				$("#btnInter").click(function() {
					if (confirm("관심 종목을 나열합니까?")) {
						document.form3.action = "${path}/mypage/calendar.do";
						document.form3.submit();
					}
				});
			});
		</script>

		<!-- 관심종목 들어갈 div칸-->

		<div id="member_historys">
			<br>
			<form name="form3" method="post">
			<input type="hidden" id="tdid" name="userId"
										value="${sessionScope.userId}">
				
				<button class="probtn" id="btnInter">관심 종목</button>
				<br><br>
			</form>
			<div id="interest">
				<div class="container">
				
				<table border="1">
					<tr class="trclass">
					<c:forEach var="dto2" items="${dto2}">
					<td class="tdclass">
						<c:choose>
						<c:when test="${dto2.coinName eq 'pre_bitcoin'}">
							<div class="homeBox"
						style="height: 200px; float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_bitcoin.png">
									</div>
									<h2>비트코인</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub0.do">바로가기</a></div>
								</div>
								</div>
							</c:when>

							<c:when test="${dto2.coinName eq 'pre_ethereum'}">
							<div class="homeBox"
						style="height: 200px; float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_ethereum.png">
									</div>
									<h2>이더리움</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub1.do">바로가기</a></div>
								</div>
								</div>
							</c:when>
							<c:when test="${dto2.coinName eq 'pre_xrp'}">
							<div class="homeBox"
						style="height: 200px; float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_ripple.png">
									</div>
									<h2>리플</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub2.do">바로가기</a></div>
								</div>
								</div>
							</c:when>
							<c:when test="${dto2.coinName eq 'pre_bitcoincash'}">
							<div class="homeBox"
						style="height: 200px; float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_bitcoincash.png">
									</div>
									<h2>Bitcoin Cash</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub3.do">바로가기</a></div>
								</div>
								</div>
							</c:when>
							<c:when test="${dto2.coinName eq 'pre_litecoin'}">
							<div class="homeBox"
						style="height: 200px;float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_litecoin.png">
									</div>
									<h2>라이트 코인</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub4.do">바로가기</a></div>
								</div>
								</div>
							</c:when>
							<c:when test="${dto2.coinName eq 'pre_tether'}">
							<div class="homeBox"
						style="height: 200px;float:left;">
								<div class="one_fourth">
									<div class="boxImage">
										<img src="${path}/images/pre_tether.png">
									</div>
									<h2>Tether</h2>
									<div class="boxDescription"><a href="${path}/crypto/sub5.do">바로가기</a></div>
								</div>
								</div>
							</c:when>
						</c:choose>
					</td>
					</c:forEach>
					</tr>
				</table>
				
				</div>

			</div>

		</div>

		<!-- 캘린더 들어갈 div칸-->

		<div id="member_calendar">

			<form name="calendarFrm" id="calendarFrm" action="" method="GET">

				<input type="hidden" name="year" value="${today_info.search_year}" />

				<input type="hidden" name="month"
					value="${today_info.search_month-1}" />

				<script>
					var message = "${message}";

					console.log(message);

					if (message != "") {

						alert(message);

					}
				</script>

				<div class="calendar">



					<!--날짜 네비게이션  -->

					<div class="navigation">

						<a class="before_after_year"
							href="./calendar.do?year=${today_info.search_year-1}&month=${today_info.search_month-1}">

							&lt;&lt; <!-- 이전해 -->

						</a> <a class="before_after_month"
							href="./calendar.do?year=${today_info.before_year}&month=${today_info.before_month}">

							&lt; <!-- 이전달 -->

						</a> <span class="this_month"> &nbsp;${today_info.search_year}.

							<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}

						</span> <a class="before_after_month"
							href="./calendar.do?year=${today_info.after_year}&month=${today_info.after_month}">

							<!-- 다음달 --> &gt;

						</a> <a class="before_after_year"
							href="./calendar.do?year=${today_info.search_year+1}&month=${today_info.search_month-1}">

							<!-- 다음해 --> &gt;&gt;

						</a>

					</div>





					<table class="calendar_body">



						<thead>

							<tr bgcolor="#CECECE">

								<td class="day sun">일</td>

								<td class="day">월</td>

								<td class="day">화</td>

								<td class="day">수</td>

								<td class="day">목</td>

								<td class="day">금</td>

								<td class="day sat">토</td>

							</tr>

						</thead>

						<tbody>

							<c:forEach var="dateList" items="${dateList}"
								varStatus="date_status">

								<c:choose>

									<c:when test="${dateList.value=='today'}">

										<c:if test="${date_status.index%7==0}">

											<tr>
										</c:if>

										<td class="today">

											<div class="date">
									</c:when>

									<c:when test="${date_status.index%7==6}">

										<td class="sat_day">

											<div class="sat">
									</c:when>

									<c:when test="${date_status.index%7==0}">

										</tr>

										<tr>

											<td class="sun_day">

												<div class="sun">
									</c:when>

									<c:otherwise>

										<td class="normal_day">

											<div class="date">
									</c:otherwise>

								</c:choose>

							${dateList.date}

						</div>

								<div>

									<c:forEach var="scheduleList"
										items="${dateList.schedule_data_arr}"
										varStatus="schedule_data_arr_status">

										<p class="date_subject">${scheduleList.schedule_subject}</p>

									</c:forEach>

								</div>

								</td>

							</c:forEach>



						</tbody>



					</table>



					<div class="datewrap">

						<button type="button" class="datebutton"
							onclick="wrapCreateBoardByMask();">일정추가</button>

					</div>
			</form>

		</div>

		<!-- 모달  -->

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

									<div class="text_desc1">

										<input type="date" name="schedule_date" class="text_type1"
											id="testDatepicker" />

									</div>

								</li>

								<li>

									<div class="text_subject">제목 :</div>

									<div class="text_desc">

										<input type="text" name="schedule_subject" class="text_type1" />

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

	</div>

	</div>



	<%@ include file="../include/footer.jsp"%>

</body>

</html>