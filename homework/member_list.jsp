<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="mydbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 명단</title>
</head>
<body>
<div align="center">
<h1>회원 명단</h1>	<hr>
	<table border="1">
		<tr height="30">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>성별</th>
			<th>나이</th>
			<th>이메일</th>
			<th>주소</th>
		</tr>
	<%
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_mail = request.getParameter("userMAIL");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("select * from homework");
		
		while(rs.next()){
	%>
		<tr>
			<td><%= rs.getString("id") %></td>
			<td><%= rs.getString("pw") %></td>
			<td><%= rs.getString("gender") %></td>
			<td><%= rs.getString("age") %></td>
			<td><%= rs.getString("mail") %></td>
			<td><%= rs.getString("address") %></td>
		</tr>
	<%
		}
		
		rs.close();
		sm.close();
		conn.close();
	%>
	</table>
	<form action="logout.jsp" method="post">
		<p><input type="submit" value="로그아웃">
	</form>
</div>
</body>
</html>