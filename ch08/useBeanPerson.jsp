<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈 액션 태그</title>
</head>
<body>
	<jsp:useBean id="person" class="ch08.dao.Person" scope="request"></jsp:useBean>
	<p> 아이디 : <%= person.getId() %> 
	<p> 이 름 : <%= person.getName() %>
</body>
</html>