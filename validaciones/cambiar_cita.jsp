<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Imports -->
<%@page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" session="true" %>
<%@ page import="java.math.BigInteger" %>
<%@ page import="java.security.MessageDigest" %>
<%@ include file="../conexion/conexion.jsp" %>
<% 
//Inicializo una sesión 
HttpSession sesion=request.getSession(); 
//Recibimos los parámetros que nos hayan enviado por post 
int id_cita=0; 
int solicitudes=0; 
String query="" ; 
//Intentamos settear los parámetros
try{
	id_cita=Integer.valueOf(request.getParameter("id_cita"));
	solicitudes=Integer.valueOf(request.getParameter("solicitudes")); 
}catch(Exception e){
	out.println(e); 
}
//Usamos preparedStaments para más seguridad
query="UPDATE citas_medicas SET id_tipo_consulta = ? WHERE id_cita_medica = ?";
sentencia=conexion.prepareStatement(query); 
sentencia.setInt(1, solicitudes); 
sentencia.setInt(2, id_cita); 
sentencia.executeUpdate(); 
response.sendRedirect("../tables.jsp"); 
%>