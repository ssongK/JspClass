<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<div align="center">
<h1>로그아웃</h1><hr>
	<% session.invalidate(); %>
	<p> 로그아웃 하였습니다
	<form action="main.jsp" method="post">
		<p> <input type="submit" value="메인화면으로">
	</form>
</div>
</body>
</html>