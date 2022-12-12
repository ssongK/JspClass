<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="mydbConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String u_id = request.getParameter("id");
	String u_pw = request.getParameter("pw");
	String u_mail = request.getParameter("mail");
	String u_age = request.getParameter("age");
	String u_gender = request.getParameter("gender");
	String u_address = request.getParameter("address");
	
	PreparedStatement pstsm = null;
	String sql = "insert into homework values(?,?,?,?,?,?)";
	try{
		pstsm = conn.prepareStatement(sql);
		
		pstsm.setString(1,u_id);
		pstsm.setString(2,u_pw);
		pstsm.setString(3,u_gender);
		pstsm.setInt(4,Integer.parseInt(u_age));
		pstsm.setString(5,u_mail);
		pstsm.setString(6,u_address);
		pstsm.executeUpdate();	
	}
	catch(SQLException ex){
		out.println("등록에 실패했습니다.<br>");
		response.sendRedirect("signup.jsp");
	}
	out.println("등록에 성공했습니다.<br>");
	session.setAttribute("memberId", u_id);
	response.sendRedirect("signup_ok.jsp");
	
	pstsm.close();
	conn.close();
%>