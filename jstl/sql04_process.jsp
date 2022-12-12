<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL sql04 (회원탈퇴)</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
	%>
	
	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/kcs_db" user="myUser" password="myUser1234" />
	<sql:update var="delete" dataSource="${ds}">
		delete from member where id=? and passwd=?
		<sql:param value="<%= id %>"/>
		<sql:param value="<%= pw %>"/>
	</sql:update>
	
	<c:import var="url" url="sql01.jsp"/>
	${url}
</body>
</html>