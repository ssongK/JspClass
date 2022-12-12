<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="mydbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 화면</title>
</head>
<body>
<div align="center">
<h1>사용자 정보</h1><hr>
	<%
		String u_id = (String)session.getAttribute("memberId");
		String sql = "select * from homework where id=?";
		PreparedStatement pstsm = conn.prepareStatement(sql);
		pstsm.setString(1,u_id);
		ResultSet rs = pstsm.executeQuery();
		
		if(rs.next()){
	%>
	<table border="1">
		<tr height="30">
			<td>아이디&nbsp;</td>
			<td><%= rs.getString("id") %></td>
		</tr>
		<tr height="30">
			<td>성별&nbsp;</td>
			<td><%= rs.getString("gender") %></td>
		</tr>
		<tr height="30">
			<td>나이&nbsp;</td>
			<td><%= rs.getString("age") %></td>
		</tr>
		<tr height="30">
			<td>이메일&nbsp;</td>
			<td><%= rs.getString("mail") %></td>
		</tr>
		<tr height="30">
			<td>주소&nbsp;</td>
			<td><%= rs.getString("address") %></td>
		</tr>
	</table>
	<% 
		}
		rs.close();
		pstsm.close();
		conn.close();
	%>
	
	<form action="logout.jsp" method="post">
		<p><input type="submit" value="로그아웃">
	</form>
</div>
</body>
</html>