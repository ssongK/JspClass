<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면 </title>
</head>
<body>
	Home > Login<hr>
	<form action="#" method="get">
		<fieldset style="width:400px">
			<legend> 개인 정보 </legend>
			ID : <br>
			<input type="text" name="id"><br><br>
			PASSWORD : <br>
			<input type="password" name="passwd"><br><br>
			이름 : 
			<input type="text" name="p_name" size="10"><br><br>
			사원 코드 : 
			<input type="text" name="e_code" size="10"><br><br>
			성별 : 
			<input type="radio" name="gender" checked>남
			<input type="radio" name="gender">여<br><br>
			취미 :
			<input type="checkbox" name="hobby1">운동
			<input type="checkbox" name="hobby2">독서
			<input type="checkbox" name="hobby3">음악감상<br><br>
			<hr>
			<div align="center">
				&nbsp; <input type="submit" value="가입하기"> &nbsp;
				<input type="reset" value="다시작성">
			</div>
		</fieldset>
		<fieldset style="width:400px">
			<legend> 언어 선택 </legend>
			<select name="language">
				<optgroup label="모국어">
					<option value="korean" selected> 한국어 </option>
					<option value="english"> 영어 </option>
					<option value="chinese"> 중국어 </option>
					<option value="japanese"> 일본어 </option>
					<option value="spainish"> 스페인어 </option> 
				</optgroup>
			</select>
		</fieldset>
		<fieldset style="width:400px">
			<legend> 자유게시판 </legend>
			<textarea rows="3" cols="45"></textarea>
			<div align="center">
				<input type="submit" value="전송">&nbsp;
				<input type="reset" value="취소">
			</div>
		</fieldset>
	</form>
</body>
</html>