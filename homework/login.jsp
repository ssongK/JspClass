<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<script type="text/javascript">
	function checkFun(){
		var f = document.loginForm;
		if(f.id.value == ""){
			alert("아이디를 입력해 주세요.");
			f.uID.focus();
			return false;
		}
		else if(f.pw.value == ""){
			alert("비밀번호를 입력해 주세요.");
			f.uPW.focus();
			return false;
		}
		else return true;
	}
</script>
</head>
<body>
<div align="center">
<h1>관리자 로그인</h1><hr>
	<form name="loginForm" action="login_ok.jsp" method="post" onsubmit="return checkFun()">
		<fieldset style="width:260px">
			<legend>관리자 로그인</legend>
			<table>
				<tr height="30">
					<td align="right">아이디&nbsp;</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr height="30">
					<td align="right">비밀번호&nbsp;</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr height="50">
					<td></td>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</div>
</body>
</html>