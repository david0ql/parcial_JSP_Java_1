<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!--  sentencias de import necesarias para jdbc-->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.security.MessageDigest"%>
<%@ include file="../conexion/conexion.jsp" %>

<%

//Recibimos los parámetros que nos hayan enviado por post

String usuario = "";
String clave = "";
String query = "";

//Intentamos settear los parámetros

try{
	usuario = request.getParameter("usuario").toString();
	clave = getMD5(request.getParameter("clave").toString());
}catch(Exception e){
	out.println(e);
}

//Usamos preparedStaments para más seguridad

query = "SELECT * FROM usuarios WHERE usuario = ? and clave = ?";
sentencia = conexion.prepareStatement(query);
sentencia.setString(1, usuario);
sentencia.setString(2, clave);
rs = sentencia.executeQuery();


%>


<%!
    public String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encBytes = md.digest(input.getBytes());
            BigInteger numero = new BigInteger(1, encBytes);
            String encString = numero.toString(16);
            while (encString.length() < 32) {
                encString = "0" + encString;
            }
            return encString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
%>