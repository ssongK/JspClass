<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Beans 액션 태그</title>
</head>
<body>
	<jsp:useBean id="gugudan" class="ch08.dao.GuGuDan" scope="request"></jsp:useBean>
	<h4>구구단 출력하기</h4>
	<%
		int num = 5;
		for(int i=1;i<10;i++){
			out.print(num+" * "+i+" = "+gugudan.process(num,i)+"<br>");
		}
	%>
</body>
</html>