<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/kcs_db";
	String user = "myUser";
	String passwd = "myUser1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,passwd);
%>