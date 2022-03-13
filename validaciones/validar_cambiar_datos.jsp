<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Imports -->
<%@page session="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" session="true"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.security.MessageDigest"%>
<%@ include file="../conexion/conexion.jsp" %>

<%
//Inicializo una sesión

HttpSession sesion = request.getSession();

//Recibimos los parámetros que nos hayan enviado por post

String id_usuario = "";
String usuario = "";
String clave = "";
String nombre = "";
String estado_civil = "";
String direccion = "";
String email = "";
String id_permiso = "";
String id_afiliciacion = "";
String id_ips = "";
String id_grupo = "";
String id_grupo_ingreso = "";
Boolean id_estado_afiliacion = true;
String query = "";

//Intentamos settear los parámetros

try{
	id_usuario = request.getParameter("id_usuario").toString();
	usuario = request.getParameter("usuario").toString();
	nombre = request.getParameter("nombre").toString();
	estado_civil = request.getParameter("estado_civil").toString();
	direccion = request.getParameter("direccion").toString();
	email = request.getParameter("email").toString();
	id_permiso = request.getParameter("id_permiso").toString();
	id_afiliciacion = request.getParameter("id_afiliciacion").toString();
	id_ips = request.getParameter("id_ips").toString();
	id_grupo = request.getParameter("id_grupo").toString();
	id_grupo_ingreso = request.getParameter("id_grupo_ingreso").toString();
}catch(Exception e){
	out.println(e);
}

//Usamos preparedStaments para más seguridad

query = "UPDATE usuarios SET usuario = ?, nombre = ?, estado_civil = ?, direccion = ?, correo = ?, id_permiso = ?, id_afiliciacion = ?, id_ips = ?, id_grupo_ingreso = ?, estado_afilicion = ?";
sentencia = conexion.prepareStatement(query);
sentencia.setString(1, usuario);
sentencia.setString(2, nombre);
sentencia.setString(3, estado_civil);
sentencia.setString(4, direccion);
sentencia.setInt(5, id_permiso);
sentencia.setInt(6, id_afiliciacion);
sentencia.setInt(7, id_ips);
sentencia.setInt(8, id_grupo);
sentencia.setInt(9, id_grupo_ingreso);
sentencia.setBoolean(10, id_estado_afiliacion);
rs = sentencia.executeQuery();

//Pedimos que vuelva a iniciar sesión para volver a traer los datos

response.sendRedirect("logout.jsp");
%>