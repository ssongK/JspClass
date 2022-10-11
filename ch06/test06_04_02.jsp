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
		request.setCharacterEncoding("UTF-8");
	
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("passwd");
		
		if(u_id.equals("김태린")&&u_pw.equals("123456")){
			session.setAttribute("memberId",u_id);
			session.setAttribute("memberPw",u_pw);
			out.println("Home > 로그인 접속 완료<hr>");
			out.println("[ "+u_id+" ]님 환영합니다.<hr>");
			out.println("<form action='test06_05.jsp' target='_blank'><input type='submit' value='Logout'></form>");
		}
		else if(u_id.equals("admin")&&u_pw.equals("123456")){
			session.setAttribute("memberId",u_id);
			session.setAttribute("memberPw",u_pw);
			out.println("Home > 로그인 접속 완료<hr>");
			out.println("[ "+u_id+" ]님 환영합니다.<hr>");
			out.println("<form action='test06_05.jsp' target='_blank'><input type='submit' value='Logout'></form>");
		}
		else{
			out.println("<hr>아이디와 비밀번호를 다시 확인하세요.");
		}
	%>
</body>
</html>
