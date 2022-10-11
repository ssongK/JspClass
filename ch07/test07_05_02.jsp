<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7장 연습문제 5-2</title>
</head>
<body>
<%
	Cookie[] cooks = request.getCookies();
%>
	Home > 쿠키 객체 정보 확인하기
	<hr>
	>> 쿠키의 개수 <%= cooks.length %>
	<hr>
<%
	for(int count=0;count<cooks.length;count++){
		out.println("["+count+"] 쿠키의 이름 : "+cooks[count].getName()+"<br>");
		out.println("["+count+"] 쿠키의 값 : "+cooks[count].getValue()+"<br>");
	}
%>
	<hr>
</body>
</html>