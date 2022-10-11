<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5장 연습문제 5번</title>
</head>
<body>
	Home > 데이터 형식의 유효성 검사 성공
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
	%>
	<p> 닉네임 : <%= name %>
	<p> 비밀번호 : <%= email %>
</body>
</html>