<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	String depart = request.getParameter("depart");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");

	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/kcs_db";
	String username = "myUser";
	String password = "myUser1234";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url,username,password);
	PreparedStatement pstsm = null;
	String sql = "insert into student values(?,?,?,?,?)";
	try{
		pstsm = conn.prepareStatement(sql);
		
		pstsm.setInt(1,Integer.valueOf(num));
		pstsm.setString(2,depart);
		pstsm.setString(3,name);
		pstsm.setString(4,address);
		pstsm.setString(5,phone);
		pstsm.executeUpdate();
		
		out.println("학생이 등록 되었습니다.");
	}
	catch(SQLException ex){
		out.println("학생이 등록에 실패했습니다.<br>");
	}
	finally{
		if(pstsm != null)
			pstsm.close();
		if(conn != null)
			conn.close();
	}
	
%>
</body>
</html>