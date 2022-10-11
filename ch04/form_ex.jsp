<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
	회원가입<hr>
	<form>
		<fieldset style="width:400px">
			<legend> 개인 정보 </legend>
			아 이 디 : <input type="text" name="id">&nbsp;<input type="button" value="아이디 중복검사"><br><br>
			비밀번호 : <input type="password" name="passwd"><br><br>
			이 름 : <input type="text" name="p_name" size="10"><br><br>
			연 락 처 : 
			<input type="text" name="number_1" size="5" maxLength="4"> - 
			<input type="text" name="number_2" size="5" maxLength="4"> - 
			<input type="text" name="unmber_3" size="5" maxLength="4"><br><br>
			성별 : 
			<input type="radio" name="gender" checked>남성
			<input type="radio" name="gender">여성<br><br>
			취미 :
			독서<input type="checkbox" name="hobby1">
			운동<input type="checkbox" name="hobby2" checked>
			영화<input type="checkbox" name="hobby3"><br><br>
			&nbsp; <input type="submit" value="가입하기"> &nbsp;
			<input type="reset" value="다시쓰기">			
		</fieldset>
	</form>
</body>
</html>