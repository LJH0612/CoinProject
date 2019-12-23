<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%@ include file="../include/header.jsp" %>
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript"> 
	var message = '${msg}'; 
	var returnUrl = '${url}'; 
	alert(message); 
	
	document.location.href = "${path}"+returnUrl; 
</script>

</body>
</html>