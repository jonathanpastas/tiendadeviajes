<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio de Sesión</title>
</head>
<link href="css/EstiloCosta.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />

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
    </ul>
    <form class="form-inline my-2 my-lg-0" action="login.jsp">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Iniciar Sesión </button>
    </form>
  </div>
</nav>
<br>
<br>
<br>
	
<div class="container">


<h2 id="titulo1"> Bienvenido al Sistema de Ventas de  Riksishay  </h2> <br>
<p id="text1">POR FAVOR INGRESE SUS DATOS PARA INICIAR SESION</p> </br>

<div class="container">
<%String fail=request.getParameter("msm"); %>
<center>


  <%if (fail!=null){out.print(" <div class=\"alert alert-danger\" role \"alert\" > LAS CREDENCIALES DE INICIO DE SESION NO SON CORRECTAS </d>");} %>

</center>

<form action="autentificacion.jsp">

<table align="center"  width="50% " height="200px"> 

	<tr> 
	
			<td> 
			<div class="form-group">
    		<label for="Usuario">Ingrese su Correo electronico</label>
    		<input type="text" class="form-control" name="user" id="Usuario" placeholder="Nombre de Usuario" required>
  			</div> <br>
			</td>
	</tr>	
	<tr>
			<td>
			<div class="form-group">
    		<label for="Clave">Ingrese su Contraseña</label>
    		<input type="password" class="form-control" name="contrasena" id="Clave" placeholder="Contraseña" required>
  			</div>  <br>
			</td>
	</tr>
	<tr>
	<td align="center">
	<input class="btn btn-success" type="submit" name ="enviar" value="INGRESAR AL SISTEMA ">
	</td>

	</tr>

	<tr>
	<td>
	<a href="usuarionuevo.jsp" > <p id="titulo1"> ¿Eres usuario nuevo? Crea una cuenta con nosotros</p></a>
	</td>
	</tr>


</table>
</form>
</div>
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