<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 화면</title>
<script>
	function checkId(){
		var id = document.memberForm.id;
			
		if(id.value == ""){
			alert("아이디를 입력해 주세요");
			id.focus();
			return false;
		}
		else if(id.value.length > 10){
			alert("아이디는 1~10자로 입력해 주세요");
			id.focus();
			return false;
		}
		else return true;
	}
	
	function checkPw(){
		var pw = document.memberForm.pw;
		if(pw.value == ""){
			alert("비밀번호를 입력해 주세요");
			pw.focus();
			return false;
		}
		else if(pw.value.length > 10){
			alert("비밀번호는 1~10자로 입력해 주세요");
			pw.focus();
			return false;
		}
		else return true;
	}
	
	function checkAge(){
		var age = document.memberForm.age;
		if(age.value == ""){
			alert("나이를 입력해주세요");
			age.focus();
			return false;
		}
		else if(isNaN(age.value)){
			alert("나이는 숫자로 입력해주세요");
			age.focus();
			return false;
		}
		else return true;
	}
	
	function checkMail(){
		var mail = document.memberForm.mail;
		if(mail.value == ""){
			alert("이메일을 입력해주세요");
			mail.focus();
			return false;
		}
		else if(mail.value.length > 20){
			alert("이메일은 20자 이내로 입력해 주세요");
			mail.focus();
			return false;
		}
		else return true;
	}
	
	function checkAddress(){
		var address = document.memberForm.address;
		if(address.value == ""){
			alert("주소를 입력해주세요");
			address.focus();
			return false;
		}
		else if(address.value.length > 40){
			alert("주소는 40자 이내로 입력해 주세요");
			address.focus();
			return false;
		}
		else return true;
	}
	
	function checkFun(){	
		if(!checkId()) return false;
		else if(!checkPw()) return false;
		else if(!checkAge()) return false;
		else if(!checkMail()) return false;
		else if(!checkAddress()) return false;
		else return true;
	}
	
</script>
</head>
<body>
<div align="center">
<h1>회원 가입 화면</h1><hr>
	<form action="insertDB.jsp" name="memberForm" method="post">
		<fieldset style="width:330px">
			<legend>회원 가입</legend>
			<table>
				<tr height="30">
					<td align="right">아이디&nbsp;</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr height="30">
					<td align="right">비밀번호&nbsp;</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr height="30">
					<td align="right">성별&nbsp;</td>
					<td><input type="radio" name="gender" value="남" checked>남
						<input type="radio" name="gender" value="여">여</td>
				</tr>
				<tr height="30">
					<td align="right">나이&nbsp;</td>
					<td><input type="text" name="age" maxLength="3"></td>
				</tr>
				<tr height="30">
					<td align="right">이메일&nbsp;</td>
					<td><input type="text" name="mail"></td>
				</tr>
				<tr height="30">
					<td align="right">주소&nbsp;</td>
					<td><input type="text" name="address" size="35"></td>
				</tr>
				<tr height="50">
					<td></td>
					<td><input type="submit" value="가입하기" onclick="return checkFun()"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</div>
</body>
</html>