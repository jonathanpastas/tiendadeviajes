<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"  import="com.tienda.*" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<body  background="imagenes\fondo_principal.jpg">


<%

String cedula=request.getParameter("cedula");
Reportes r = new Reportes();

String tableclie=r.verHistorial(cedula);

%>


<%=tableclie %>



</body>
</html>