<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 6번-2</title>
</head>
<body>
	<h3>Home > 영화 감상 후 평점</h3><hr>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("m_name");
		String score = request.getParameter("score");
		String comment = request.getParameter("comment");
	%>
	<p> 재미있게 본 영화 : <%= name %>
	<p> 평점 : <%= score %>
	<p> 소감 : <%= comment %>
</body>
</html>