<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 5번</title>
</head>
<body>
	<h3> 자기 소개서 폼 작성 </h3><hr>
	<form action="#" method="get">
		<fieldset style="width:300px"> 
			<legend>개인 정보</legend>
			닉네임 :
			<input type="text" name="id">&nbsp;<input type="button" value="중복검사"><br><br>
			성별 :
			<input type="radio" name="gender">남
			<input type="radio" name="gender">여 <br><br>
			게임장르 :
			<input type="checkbox" name="game1">액션
			<input type="checkbox" name="game2">퍼즐
			<input type="checkbox" name="game3">전략
			<input type="checkbox" name="game4">리듬
			<br><br><br><hr>
			혈액형 :
			<select name="blood">
				<option value="choice">=== 선택 ===</option>
				<option value="a">A형</option>
				<option value="b">B형</option>
				<option value="o">O형</option>
				<option value="ab">AB형</option>
				<option value="cls">모름</option>
			</select>
			<hr><br>
			자기소개 : <br>
			<textarea name="comment" cols="50" rows="5"></textarea><hr>
			<div align="center">
				<input type="submit" value=" 제출하기 ">
				<input type="reset" value=" 다시작성 ">
			</div>
		</fieldset>
	</form>
</body>
</html>