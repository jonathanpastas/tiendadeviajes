<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quienes Somos</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
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
        <a class="nav-link" href="index.jsp"> Home <span class="sr-only">(current)</span></a>
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
		<table width="100%" HEIGHT="500 px"  RULES="none">
			<tr>
				<td>
					<blockquote>
						<p id="Quienes_somos">¿Quiénes somos?</p>

						<p id="Parrafo">
							<B>Riksishay</B>,es una empresa joven que cuenta con el respaldo
							de un grupo de profesionales altamente calificados para elaborar,
							desarrollar, operar y comercializar paquetes turisticos, con el
							fin de satisfacer las necesidades del mercado. Nuestro propósito
							es generar productos, con atributos de alta calidad, que generen
							credibilidad y confianza en nuestros clientes, consolidándonos
							como especialistas en vacaciones al Ecuador. Actualmente
							disponemos de oficinas en Quito , pero nuestra red de
							distribución abarca todo el territorio ecuatoriano, debido a la
							plataforma tecnológica con la que contamos y que nos permite
							llegar a través del internet hasta los puntos más alejados del
							Ecuador.
						</p>
						<p id="Mision">Misión</p>

						<p id="Parrafo">Nuestra misión es consolidarnos como la
							Empresa Turística número uno en el Ecuador, en el desarrollo,
							asesoría y comercialización, de productos turísticos, utilizando
							los recursos tecnológicos más avanzados disponibles, para generar
							una experiencia de vacaciones inolvidable para nuestros clientes.</p>
							
						<p id="Vision">Visión</p>
						<p id="Parrafo" >Para el año 2019 Riksishay será una empresa
							integral, ya que brindará a sus clientes la posibilidad de
							alojarse en sus propios hoteles, en donde brindaremos toda
							nuestra fortaleza de servicio para generar una gran experiencia
							vacacional..</p>
						<p id="Parrafo">
							<br>www.Riksishay.com<br>Email: info@riksishay.com<br>Av.General
							Olleary Oe8-222 y Pedro de Andrade (Quito-Ecuador)<br>
							CODIGO POSTAL:170110
						</p>

					</blockquote>
				</td>
			</tr>

		</table>
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