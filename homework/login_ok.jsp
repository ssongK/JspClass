<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 성공</title>
</head>
<body>
<div align="center">
<h1>관리자 로그인 성공</h1><hr>
	<%
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		
		if(u_id.equals("admin") && u_pw.equals("admin")){
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
			
			out.println("새로운 세션 생성 성공 !<br>");
			out.println("관리자 [ "+u_id+" ]님이 입장하였습니다. <p>");
		}
		else{
			response.sendRedirect("login_err.jsp");
		}
	%>
	<table>
		<tr>
			<td>
				<form action="member_list.jsp" method="post">
					<input type="submit" value="회원 명단 열람">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value="로그아웃">
				</form>
			</td>
		</tr>
	</table>
</div>
</body>
</html>