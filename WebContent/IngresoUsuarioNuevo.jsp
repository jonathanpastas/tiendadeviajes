<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mensaje </title>
</head>
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>

<body background="imagenes\fondo_principal.jpg">

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01" >
   <a class="navbar-brand" href="#">
    <img src="imagenes/LogoEmpresa.png" width="80" height="50" class="d-inline-block align-top" alt="">
  </a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0" align="center">
      <li class="nav-item active">
        <a class="nav-link" href="Index.jsp"> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="quienes_somos.jsp"> Quienes Somos </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="catalogo.jsp" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Ver Catálogo </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Costa.jsp">Costa Ecuatoriana</a>
          <a class="dropdown-item" href="RSierra.jsp">Sierra Ecuatoriana</a>
          <a class="dropdown-item" href="Oriente.jsp">Amazonia Ecuatoriana</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AcercaDe.jsp"> Acerca De </a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="login.jsp">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Iniciar Sesión </button>
    </form>
  </div>
</nav>

<%
clsUsuario newUsuario = new clsUsuario();
String correo,nombre_cliente,telefono,direccion,nom_user,clave_us;
int id=1;

correo=request.getParameter("correo");
nombre_cliente=request.getParameter("nameuser");
telefono=request.getParameter("celular");
direccion=request.getParameter("direccion");
nom_user=request.getParameter("usuario");
clave_us=request.getParameter("newcontrasena");





newUsuario.Registrar_Cliente(correo, nombre_cliente, telefono, direccion, nom_user, clave_us, id);

String msm ="";
String ruta="";

	msm="<div class=\"alert alert-success\" role=\"alert\"> CUENTA CREADA CORRECTAMENTE ¡¡ AHORA FORMAS PARTE DE LA FAMILIA DE RIKSISHAY AHORA PRESIONA EN EL ICONO Y INICIA SESIÓN  </div>";
	ruta="imagenes/correcto.png";


%>

<div class="container">



<br>
<%=msm %> 


<center> <a href="login.jsp" > <img src=<%=ruta %> width="150" height="150"> </a></center>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


</div>


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