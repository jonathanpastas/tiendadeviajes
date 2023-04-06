<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crear Cuenta </title>
<script>
	function enviar3() {
		var cedula =document.getElementById('correo').value;
		var celular=document.getElementById('celular').value;
		var contra=document.getElementById('conuser').value;
		
		
		var bandera=false;
	
		
		for(var i=0;i<cedula.length;i++){
			if(isNaN(parseInt(cedula.charAt(i)))==true){
				alert("No se aceptan caracteres en el campo cedula ")
				return false;
			}
		}
	
		if(cedula==null  || cedula.length == 0 || /^\s+$/.test(cedula) ){
			alert("Por favor Ingrese su Cédula ");
			return false;
	
		}
		
	
		if(cedula.length >10){
			alert("La cedula contiene  maximo de 10 digitos.");
			return false;
		}
		
		if(cedula.length <=9){
			alert("La cedula contiene  menos de 10 digitos.");
			return false;
		}
		
		for(var i=0;i<celular.length;i++){
			if(isNaN(parseInt(celular.charAt(i)))==true){
				alert("No se aceptan caracteres en el campo Numero de Telefono ")
				return false;
			}
		}
		
		if(celular.length >11){
			alert("El numero de telefono debe contener hasta maximo 10 digitos  ");
			return false;
		}

		if(contra.length <8){
			alert("Para su seguridad le sugerimos ingresar una contraseña de maximo 8 caracteres. ");
			return false;
		}

			return true;
		}
	
</script>
</head>
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<body background="imagenes\fondo_principal.jpg">
<table width="100%" HEIGHT="10%" FRAME="border" RULES="none">
			
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


<div class="container">

<h1 id="titulo1"> Crear una Cuenta </h1> <br>
<p id="text1"> Disfruta de Nuestra Experencia en el Sistemas de Ventas de Riksishay </p> </br>
<p id="text1"> Estimado Cliente acontinuación se solicita la información para crear su cuenta posteriormente creada la cuenta debera iniciar sesión con su correo y contraseña registrados  </p> </br>

<form action="IngresoUsuarioNuevo.jsp" onsubmit="return enviar3()">

<table align="center" width="50% " height="200px"> 

<tr> 
			<td> 
			<div class="form-group">
    		<label for="correo">Ingrese su Número de Cédula  :  </label>
    		<input type="text" class="form-control" name="correo" id="correo" placeholder=C.I " >
  			</div> <br>
			</td>
			</tr>	
<tr>
			<td>
			<div class="form-group">
    		<label for="NombreUsuario">Ingrese su Nombre y Apellido : </label>
    		<input type="text" class="form-control" name="nameuser" id="NombreUsuario" placeholder="Nombre y Apellido" required>
  			</div>  <br>
			</td>
			</tr>
<tr>

<tr>
			<td>
			<div class="form-group">
    		<label for="celular">Ingrese su Número de Telefono : </label>
    		<input type="text" class="form-control" name="celular" id="celular" placeholder="Numero de Telefono" required>
  			</div>  <br>
			</td>
			</tr>
<tr>

<tr>
			<td>
			<div class="form-group">
    		<label for="direccion">Ingrese el Sector o Ciudad del Domicilio  :  </label>
    		<input type="text" class="form-control" name="direccion" id="direccion" placeholder="Domicilio" required>
  			</div>  <br>
			</td>
			</tr>
<tr>

<tr>
			<td>
			<div class="form-group">
    		<label for="nomuser">Ingrese su correo electronico  :  </label>
    		<input type="text" class="form-control" name="usuario" id="nomuser" placeholder="Ejm: carlos20@gmail.com " required>
  			</div>  <br>
			</td>
			</tr>
<tr>

<tr>
			<td>
			<div class="form-group">
    		<label for="conuser">Escriba una contraseña   :  </label>
    		<input type="password" class="form-control" name="newcontrasena" id="conuser" placeholder="Ingrese nueva Contraseña " required>
  			</div>  <br>
			</td>
			</tr>
<tr>


<td align="center">
<input class="btn btn-primary" type="submit" name ="enviar" value="CREAR CUENTA ">
</td>

</tr>

</table>
</form>

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