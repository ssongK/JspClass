<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
<script type="text/javascript">
	function checkFun(){
		var f = document.loginForm;
		
		var regExpId = /^[a-z|A-Z|ㅏ-ㅣ|가-힣]/;
		var regExpPw = /^[0-9]*$/;
		var regExpName = /^[ㅏ-ㅣ|가-힣]*$/;
		var regExpPhone = /\d{3}-\d{3,4}-\d{4}/;
		var regExpEmail = /^[0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var id = f.id.value;
		var pw = f.passwd.value;
		var name = f.name.value;
		var phone = f.phone1.value + "-" + f.phone2.value + "-" +f.phone3.value;
		var email = f.email.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요!");
			return;
		}
		
		if(!regExpPw.test(pw)){
			alert("비밀번호는 숫자만으로 입력해주세요!");
			return;
		}
	
		if(!regExpName.test(name)){
			alert("이름은 한글만으로 입력해주세요!");
			return;
		}
		
		if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해 주세요!");
			return;
		}
		
		if(!regExpEmail.test(email)){
			alert("이메일 입력을 확인해 주세요!");
			return;
		}
		
		f.submit();
	}
</script>
</head>
<body>
	<h2>회원 가입</h2><br>
	<form name="loginForm" action="validation05_process.jsp" method="post">
		아이디 : <input type="text" name="id"><br><br>	
		비밀번호 : <input type="password" name="passwd"><br><br>
		이름 : <input type="text" name="name"><br><br>
		연락처 : 
		<select name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="019">019</option>
		</select>
		-<input type="text" name="phone2">-<input type="text" name="phone3"><br><br>
		이메일 : 	<input type="text" name="email"><br><br>
		<input type="button" value="가입하기" onclick="checkFun()">
	</form>
</body>
</html>