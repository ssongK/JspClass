<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 명단</title>
</head>
<body>
<table width="100%" border="1">
	<tr>
		<th>학번</th>
		<th>학과</th>
		<th>이름</th>
		<th>주소</th>
		<th>연락처</th>
	</tr>
	<%	
		String driverName="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/kcs_db";
		String username = "root";
		String password = "tele1004!";
		Connection conn = null;
		
		Class.forName(driverName);
		conn = DriverManager.getConnection(url,username,password);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "select * from student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
	%>
			<tr> 
				<td><%= rs.getInt("num") %></td>
				<td><%= rs.getString("depart") %></td>
				<td><%= rs.getString("name") %></td>
				<td><%= rs.getString("address") %></td>
				<td><%= rs.getString("phone") %></td>
			</tr>
	<%
			}
		}
		catch(SQLException ex){
			out.println("Student 테이블 호출이 실패했습니다.<br>");
			out.println("SQLException : "+ex.getMessage());
		}
		finally{
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>	
</table>
</body>
</html>