<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cambiar la Contraseña </title>
<script>
	function enviar4() {
		var clave1 =document.getElementById('Clave').value;


		
		var bandera=false;
	
	
		if(clave1.length <8){
			alert("Tu nueva clave debe contener al menos 8 caracteres ");
			return false;
		}
		
			return true;
		}
	
</script>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<body background="imagenes\fondo_principal.jpg">
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
     Bienvenido(a)  <%=nombre %> 
  </a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0" >
      <%=links %>
    </ul>
    
   <p align="right">  <img src="imagenes/LogoEmpresa.png" width="80" height="50" > </p> 
  </div>
</nav>

<br>

<div class="container">


	
<h2  id="titulo1"> Cambio de Clave </h1> <br>
<p id="text1"><b>El uso de la Contraseña es de Responsabilidad del Cliente o Personal de la Tienda</b> </p> </br>	

	
<form action="ValidadCambioContrasena.jsp" onsubmit="return enviar4();">

<table align="center" width="50% " height="200px"> 

<tr> 
			<td> 
			<div class="form-group">
    		<label for="ClaveA"><b>Ingrese su Contraseña Actual</b></label>
    		<input type="password" class="form-control" name="contrasena_anterior" id="ClaveA" placeholder="Contraseña Actual" required>
  			</div> <br>
			</td>
</tr>	
<tr>
			<td>
			<div class="form-group">
    		<label for="Clave"><b>Ingrese su Nueva Contraseña</b></label>
    		<input type="password" class="form-control" name="contrasena_nueva" id="Clave" placeholder="Nueva Contraseña" required>
  			</div>  <br>
			</td>
</tr>
<tr>
<td align="center">
<input class="btn btn-success" type="submit" name ="enviar" value="CAMBIAR LA CONTRASEÑA">
<a class="btn btn-outline-danger" href="Inicio_menu.jsp" role="button">Cancelar</a>
</td>

</tr>

</table>
</form>
	</div>
	
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