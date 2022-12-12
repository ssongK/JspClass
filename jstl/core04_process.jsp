<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core04</title>
</head>
<body>
	<%
		String score = request.getParameter("score");
	%>
	<c:set var="score" value="<%= score %>"/>
	
	<c:catch var="eMessage">
	<c:choose>
		<c:when test="${score >= 90}">
			<c:out value="${score}"/>점은 A학점 입니다.
		</c:when>
		<c:when test="${score >= 80}">
			<c:out value="${score}"/>점은 B학점 입니다.
		</c:when>
		<c:when test="${score >= 70}">
			<c:out value="${score}"/>점은 C학점 입니다.
		</c:when>
		<c:when test="${score >= 60}">
			<c:out value="${score}"/>점은 D학점 입니다.
		</c:when>		
		<c:otherwise>
			F학점 입니다.
		</c:otherwise>
	</c:choose>
	</c:catch>
	${eMessage}
</body>
</html>