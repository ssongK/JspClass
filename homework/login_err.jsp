<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
<div align="center">
<h1>로그인 실패</h1><hr>
	<p> 로그인에 실패하였습니다.
	<br> 다시 시도해 주세요.
	<table>
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value="메인 화면">
				</form>
			</td>
			<td>
				<form action="login.jsp" method="post">
					<input type="submit" value="관리자 로그인">
				</form>
			</td>
		</tr>
	</table>
</div>
</body>
</html>