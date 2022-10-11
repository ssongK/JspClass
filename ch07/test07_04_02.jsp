<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7장 연습문제 4-2</title>
</head>
<body>
	Home > 쿠키 생성 및 로그인 확인
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		if(u_id.equals("cosmos")&&u_pw.equals("888888")){
			Cookie cookId = new Cookie("Id","u_id");
			Cookie cookPw = new Cookie("pw","u_pw");
			
			response.addCookie(cookId);
			response.addCookie(cookPw);
	%>
			쿠키를 생성하였습니다.<br>
			[ <%=u_id %> ]님이 입장하였습니다.<br>
			<p>
			<form action="test07_05_01.jsp">
				<input type="submit" value=" << 로그아웃 <<">
			</form>			
	<%
		}
		else{
	%>
		쿠키 생성 실패!<br>
		아이디와 비밀번호를 확인하세요!<br>
		<a href="test07_04_01.jsp">~~ 다시 로그인 하기 ~~</a>
	<%		
		}
	%>
</body>
</html>