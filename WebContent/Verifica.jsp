<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.sesion.*" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Confirmación</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<link href="css/EstiloCatalogo.css" rel="stylesheet" type="text/css"/>
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<body  background="imagenes\fondo_principal.jpg"">
<%

clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);

if(nombre==null){
	response.sendRedirect("login.jsp");
}
%>



<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01" >
   <a class="navbar-brand" href="#">
    <img src="imagenes/iniciar.png" width="50" height="50" class="d-inline-block align-top" alt="">
    Bienvenido  <%=nombre %> 
  </a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0" >
      <%=links %>
    </ul>
    
   <p align="right">  <img src="imagenes/LogoEmpresa.png" width="80" height="50" > </p> 
  </div>
</nav>

<br>
<br>

<%
	Paquete_Turistico ls=new Paquete_Turistico();
String mensaje=request.getParameter("mensaje");
String alerta=" ";

if(mensaje.equals("si")){
	ls.eliminarPT(Integer.parseInt(request.getParameter("id")));
	alerta="<div class=\"alert alert-primary\" role=\"alert\"> DATOS BORRADOS EXITOSAMENTE </div>";

	
}else{
	alerta="<div class=\"alert alert-warning\" role=\"alert\"> LOS DATOS NO SE BORRARON CORRECTAMENTE POR FAVOR INTENTA NUEVAMENTE </div>";
}
%>

<div class="container">
<%=alerta %>
<a href="VerOferta.jsp"><p id="titulo3">REGRESAR AL INICIO </p></a>
<center> <a href="Menu_Operaciones.jsp" > <img src="imagenes/regreso.png" width="150" height="150"> </a> <br> <b>Regresar al Menú</b></center>

</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="https://www.ups.edu.ec">
    <img src="imagenes/logo_ups.png" width="130" height="40" class="d-inline-block align-top" alt=""> 
  </a>
  
  <ul class="nav navbar-nav navbar-right">
   
   <li class="nav-item">
        <a class="nav-item nav-link disabled" href="https://www.facebook.com/Agencia-de-Viajes-Riksishay-604220516645018/"  target="_blank"> 
     	Nuestras Redes Sociales  <img src="imagenes/facebook.png" width="25" height="25" class="d-inline-block align-top" alt=""> </a>
   </li>
  
  </ul>
 
</nav>
	


</body>
</html>