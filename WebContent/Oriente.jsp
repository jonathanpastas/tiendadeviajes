<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Région Amazonica</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="css/EstiloCosta.css" rel="stylesheet" type="text/css" />
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
	<div id="cuerpo">

		<h2 id="enca_costa">AMAZONIA ECUATORIANA</h2>

		<p id="intro_costa">Bienvenidos a la Selva Amazónica, la mayor
			extensión remanente de selva tropical en el mundo. También, el lugar
			con más zumbidos, crujidos, trinos, rugidos y aullidos ¡en vivo! de
			todo el planeta. ¿Sabías que un árbol amazónico puede albergar más
			especies de hormigas que todas las islas británicas juntas? ¿O que en
			una sola hectárea de bosque amazónico pueden habitar la misma
			cantidad de especies de ranas que en todo el territorio de América
			del Norte? La gran extensión de la jungla aloja más del 20% del total
			de especies de plantas vascularizadas de la Tierra. Aquí es posible
			encontrar un mono tan pequeño que puede sentarse en la punta de un
			dedo, un sapo que llega a pesar hasta ocho libras, una araña que se
			alimenta de aves, y la serpiente más grande del mundo, la anaconda,
			que puede llegar a medir hasta 30 pies.</p>

		<p>
		<h2 id="textNuestros">Nuestros Paquetes Turisticos</h2>

	    <div class="container">
    
        <%
            	int id=3;
            		Paquete_Turistico pt =new Paquete_Turistico();
            		
            		String tabla=pt.VerPT_Categorias(id);
            %>
		
		<%=tabla %>
    
      </div>
		

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