<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6장 연습문제 4-2</title>
</head>
<body>
	<%
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("passwd");
		
		if(u_id.equals("admin")&&u_pw.equals("123456")){
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
	%>
			<hr>
			Home > 로그인 접속 완료
			<hr>
			[ <%= u_id %> ]님 환영합니다.
			<hr>
			<form action="test_06_05.jsp" target="_blank">
				<input type="submit" value=" Logout ">
			</form>
	<%
		}
		else{
	%>
			<hr>
			아이디와 비밀번호를 다시 확인하세요.		
	<%
		}
	%>
</body>
</html>