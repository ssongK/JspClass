<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 5번</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("id");
	String gender = request.getParameter("gender");
	String[] game = request.getParameterValues("game");
	String blood = request.getParameter("blood");
	String comment = request.getParameter("comment");
	
%>
	<p> 닉네임 : <%= name %>
	<p> 성별 : <%= gender %>
	<p> 게임장르 :
	<% 
	if(game != null){
		for(int i=0;i<game.length;i++){
			out.println(" "+game[i]);	
		}
	}
	%>
	<p> 혈액형 : <%= blood %>
	<p> 자기소개 :  <%= comment %>
</body>
</html>