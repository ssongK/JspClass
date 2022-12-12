<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core02</title>
</head>
<body>
	<%
		String number = request.getParameter("number");
	%>
	<c:set var="number" value="<%= number %>"/>
	입력된 문자 : <c:out value="${number}"/><br><br>
	
	<c:catch var="eMessage">
	<c:choose>
		<c:when test="${number%2 == 0}">
			<c:out value="${number}"/>은 짝수입니다.
		</c:when>
		<c:when test="${number%2 == 1}">
			<c:out value="${number}"/>은 홀수입니다.
		</c:when>	
		<c:otherwise>
			정수가 아닙니다.
		</c:otherwise>
	</c:choose>
	</c:catch>
	${eMessage}
</body>
</html>