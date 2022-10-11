<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 수업</title>
</head>
<body>
	<h2>Script Tag</h2>
	<%-- 선언문 태그, 스크립틀릿, 표현문 태그 --%>
	<%! int count=3; 
		String makeLower(String data){
			return data.toLowerCase();
		}
	%>
	<% for(int i=1;i<=count;i++){
		out.println("JSP 스터디 "+i+"주차<br>");
	}
	%>
	<%= makeLower("HELLO") %>
</body>
</html>