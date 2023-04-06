<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catálogo de Viajes</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<link href="css/EstiloCatalogo.css" rel="stylesheet" type="text/css"/>
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

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
	
<div class="container">
<h1> Bienvenido a Nuestro Catálogo</h1>
<h4> Mira nuestra oferta disponible de Paquetes Turisticos por Région</h4>
<br>
<br>
  <div class="row">
  <div class="col-sm">
     	<div class="card" style="width: 18rem;height: 24rem">
 		<img class="card-img-top" height="100" src="imagenes/COSTA.jpg" alt="Card image cap">
  		<div class="card-body">
    	<h5 class="card-title">Costa Ecuatoriana</h5>
    	<p class="card-text">La Costa Ecuatoriana acoge a los viajeros que buscan entretenimiento al aire libre todo el año, con más de 1,600 km de interminables playas de clima tropical.</p>
    	<a href="Costa.jsp" class="btn btn-primary">Ver Oferta</a>
  		</div>
        </div>
 </div>
 
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 24rem">
 		<img class="card-img-top" height="100" src="imagenes/SIERRA.jpg" alt="Card image cap">
  		<div class="card-body">
    	<h5 class="card-title">Sierra Ecuatoriana</h5>
    	<p class="card-text"> Considerada la región más importante de Ecuador y llamada comúnmente la Sierra, es la más visitada de todo el país</p>
    	<a href="RSierra.jsp" class="btn btn-primary">Ver Oferta</a>
  		</div>
        </div>
    </div>
    <div class="col-sm">
        <div class="card" style="width: 18rem; height: 24rem">
 		<img class="card-img-top" height="100" src="imagenes/AMAZONIA.jpg" alt="Card image cap">
  		<div class="card-body">
    	<h5 class="card-title">Amazonia Ecuatoriana</h5>
    	<p class="card-text"> La región Amazónica de Ecuador es una región natural del país sudamericano conformada por un área aproximada de 120.000 km² de la Amazonia. Comprende las provincias de Sucumbíos, Orellana, Napo, Pastaza, Morona y Zamora.</p>
    	<a href="RSierra.jsp" class="btn btn-primary">Ver Oferta</a>
  		</div>
        </div>
    </div>
  </div>
</div>

	<br>
	<br>
	<br>	

	<div id="pie_de_pagina">
		<table width="100%" HEIGHT="100%"   RULES="none">
			<tr>
				<td>
					<p style="color: BLACK">Desarrolladores:
					<ul>
						<li style="color: BLACK">Changoluisa Kevin
						<li style="color: BLACK">Pastas Jonathan
						<li style="color: BLACK">Pozo Bitman
					</ul>
				<td>
				<td align="right"><img src="imagenes\logo_ups.png">
			</tr>
		</table>
	</div>
</body>
</html>