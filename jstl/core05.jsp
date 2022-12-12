<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core05</title>
</head>
<body>
	국어, 영어, 수학 점수를 입력하여 학점 출력
	<!-- <form method="post"> -->
	<form action="core05_process.jsp" method="post">
		<p> 국어 : <input type="text" name="kor">
		<p> 영어 : <input type="text" name="eng">
		<p> 수학 : <input type="text" name="math">
		<p><input type="submit" value="학점구하기">
	</form>
	
	
<%-- <c:if test="${ not (empty param.kor or empty param.eng or empty param.math) }">
	<c:set var="avg" value="${ (param.kor+param.eng+param.math)/3 }"/>
	
	<c:catch var="eMessage">
		<c:choose>
			<c:when test="${avg >= 90}">
				A학점
			</c:when>
			<c:when test="${avg >= 80}">
				B학점
			</c:when>
			<c:when test="${avg >= 70}">
				C학점
			</c:when>
			<c:when test="${avg >= 60}">
				D학점
			</c:when>		
			<c:otherwise>
				F학점
			</c:otherwise>
		</c:choose>
	</c:catch>
	${eMessage}
</c:if> --%>
	

</body>
</html>