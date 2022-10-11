<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 6번 - 1</title>
</head>
<body>
	<h3>Home > 영화 감상 후 평점</h3><hr>
	<form action="test04_06_02.jsp" method="post">
		<fieldset style="width:180px">
			<legend>영화 평점</legend>	
			재미있게 본 영화 :<br>
			<input type="text" name=m_name><br><br>
			평점 : <br><hr>
			<input type="radio" name="score" value="★★★★★">★★★★★<br>
			<input type="radio" name="score" value="★★★★☆">★★★★☆<br>
			<input type="radio" name="score" value="★★★☆☆">★★★☆☆<br>
			<input type="radio" name="score" value="★★☆☆☆">★★☆☆☆<br>
			<input type="radio" name="score" value="★☆☆☆☆">★☆☆☆☆<br>
			<hr><br>
			소감 : 
			<textarea name="comment" cols="32" rows="3"></textarea><hr>
			<div align="center">
				<input type="submit" value=" 제출하기 ">&nbsp;&nbsp;
				<input type="reset" value=" 다시작성 ">
			</div>
		</fieldset>
	</form>
</body>
</html>