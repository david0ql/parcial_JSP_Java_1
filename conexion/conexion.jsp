 <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!--  sentencias de import necesarias para jdbc-->
<%@ page import="java.sql.*"%>

<%
	Connection conexion=null;
	PreparedStatement sentencia=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parcial_java_1", "root", "");
%>