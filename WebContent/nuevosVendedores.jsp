<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Nuevo Personal</title>
<script>
	function enviar6() {
	
		var cedula=document.getElementById('Cedula').value;
		var celular=document.getElementById('celular').value;
		var contra=document.getElementById('conuser').value;
		
		
		var bandera=false;
	
		
		for(var i=0;i<cedula.length;i++){
			if(isNaN(parseInt(cedula.charAt(i)))==true){
				alert("No se admite caracteres en el campo cedula")
				return false;
			}
		}
	

		if(cedula.length >10){
			alert("El numero de cedula no debe contener mas de 10 digitos "); 
			return false;
		}
		
		for(var i=0;i<celular.length;i++){
			if(isNaN(parseInt(celular.charAt(i)))==true){
				alert("No se admite caracteres en el campo numero de celular")
				return false;
			}
		}
		
		if(celular.length >10){
			alert("El numero de celular no debe ser mayor a 10 digitos "); 
			return false;
		}
		
		if(cedula.length <10){
			alert("El numero de cedula no debe contener menos de 10 digitos "); 
			return false;
		}
	
		if(contra.length <8){
			alert("Por la seguridad de la cuenta la contraseña debe contener un maximo de 8 digitos"); 
			return false;
		}
		

			return true;
		}
	
</script>
</head>
<link href="css/EstiloCosta.css" rel="stylesheet" type="text/css" />
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
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
    Bienvenido (a)  <%=nombre %> 
  </a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0" >
      <%=links %>
    </ul>
    
   <p align="right">  <img src="imagenes/LogoEmpresa.png" width="80" height="50" > </p> 
  </div>
</nav>

<br>
<br>

<div class="container">
<h2 id="enca_costa">Registro de Nuevo Personal  </h2> <br>

	<p id="text1">Por favor rellene los siguientes campos : </p> </br>
<form action="IngresarNuevoVendAdm.jsp" onsubmit="return enviar6();">

<table align="center" width="50% " height="200px"> 
<tr> 
			<td> 
			 <div class="form-group">
    		 <label for="Selecciona">Seleccione el Perfil del Nuevo Usuario</label>
             <select class="form-control" id="Selecciona" name="perfil">
             <option value="2">VENDEDOR</option>
             <option value="3">ADMINISTRADOR</option>
 
             </select>
             </div>
			
			 <br>
			</td>
			</tr>
<tr> 
			<td> 
			<div class="form-group">
    		<label for="Cedula">Ingrese el numero de cedula :  </label>
    		<input type="text" class="form-control" name="cedula" id="Cedula" placeholder="10 digitos " required>
  			</div> <br>
			</td>
			</tr>	
<tr>
			<td>
			<div class="form-group">
    		<label for="NombreUsuario">Ingrese el Nombre y Apellido : </label>
    		<input type="text" class="form-control" name="nameuser" id="NombreUsuario" placeholder="Nombre y Apellido" required>
  			</div>  <br>
			</td>
			</tr>
<tr>

<tr>
			<td>
			<div class="form-group">
    		<label for="celular">Ingrese el Número de Telefono : </label>
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
    		<label for="nomuser">Escriba un correo electronico    :  </label>
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
<a class="btn btn-outline-danger" href="Inicio_menu.jsp" role="button">Cancelar</a>
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