<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세 페이지</title>
<%@ include file="../include/header.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			if(confirm("수정하시겠습니까?")){
			document.form1.action= "${path}/member/update.do";
			document.form1.submit();
			}
		});
	});
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
			document.form1.action= "${path}/member/delete.do";
			document.form1.submit();
			}
		});
	});
</script>
<style>
h1{
margin-top:150px;
text-align:center;
}
.mvc{
margin:auto;
width: 400px;
}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="mvc">
<h1>회원정보 상세</h1>
<form name="form1" method="post">
	<table border="1" width="400px">
		<tr>
			<td>아이디</td>
			<td><input name="userId" value="${dto.userId}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userPw" value="${dto.userPw}" ></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="userName" value="${dto.userName}" ></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="userEmail" value="${dto.userEmail}" ></td>
		</tr>
		<tr>
			<td>가입일자</td>
			<td>
				<fmt:formatDate value="${dto.userRegdate}" pattern="yyyy-MM-dd HH:mm:ss" />
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<div style="color: red;">${message}</div>
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>