<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
</head>
<body>
<div align="center">
<h1>메인 화면</h1><hr>
	<img src="image/image1.jpg">
	<table>
		<tr>
			<td>
				<form action="login.jsp" method="post">
					<input type="submit" value="관리자 로그인">
				</form>
			</td>
			<td>
				<form action="signup.jsp" method="post">
					<input type="submit" value="회원가입">
				</form>
			</td>
		</tr>
	</table>
</div>
</body>
</html>