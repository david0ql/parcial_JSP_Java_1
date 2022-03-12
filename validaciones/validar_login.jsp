<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!--  sentencias de import necesarias para jdbc-->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.security.*" %>

<%
//Recibimos los parámetros que nos hayan enviado por post

String hash = MD5.asHex(MD5.getHash(new File("a")));
	out.println(hash);
%>