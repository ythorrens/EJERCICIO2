<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.LinkedList,Uninorte.Conexion"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 Conexion conexion = new Conexion();
 if(conexion.abrirConexion()){
	 out.println(conexion.consultar("select * from users"));
	 conexion.cerrarConexion();
 }
 else
	 out.println("no conectado");
 %>
</body>
</html>