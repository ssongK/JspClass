<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 명단</title>
</head>
<body>
	<form action="insert_process.jsp" name="st_info" method="post">
		<fieldset style="width:200px">
			<legend>학생 등록</legend><p><br>
			학번 : <br>
			<input type="text" name="num"><br><br>
			학과 : <br>
			<input type="text" name="depart"><br><br>
			이름 : <br>
			<input type="text" name="name"><br><br>
			주소 : <br>
			<input type="text" name="address"><br><br>
			연락처 : <br>
			<input type="text" name="phone"><br><br>
			<input type="submit" value="등록">
		</fieldset>
	</form>
</body>
</html>