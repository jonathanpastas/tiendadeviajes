<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tienda.*"  session="true"  import="com.tienda.*" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingreso Productos</title>
<script>
	function enviar5() {
	
		var duracion=document.getElementById('Duracion').value;
		var limite=document.getElementById('Limite').value;
		
		
		var bandera=false;
	
		
		for(var i=0;i<duracion.length;i++){
			if(isNaN(parseInt(duracion.charAt(i)))==true){
				alert("No se admite caracteres en el campo Duracion de Paquete Turistico")
				return false;
			}
		}
	

		if(duracion >30){
			alert("La duración del Paquete Turistico no debe ser mayor a los 30 dias ");
			return false;
		}
		
	
	
		for(var i=0;i<limite.length;i++){
			if(isNaN(parseInt(limite.charAt(i)))==true){
				alert("No se admiten caracteres en el campo Limite de Personas ")
				return false;
			}
		}

			return true;
		}
	
</script>

</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/EstiloCosta.css" rel="stylesheet" type="text/css" />
<link href="css/estiloIngreso.css" rel="stylesheet" type="text/css" />
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
	
	<form action="IngresoDB.jsp" onsubmit="return enviar5();">
	<h2 id="enca_costa">Ingreso de Nuevos Paquetes Turisticos </h2> <br>

	<p id="text1">Por favor rellene los siguientes campos para ingresar mas paquetes turisticos y sean visibles en la página web</p> </br>
	
	<table align="center">
	
	<tr> 
	<td> 
		<div class="form-group">
    	<label for="Nombre">Nombre del Paquete Turistico </label>
    	<input type="text" class="form-control" name="textNomPaquete" id="Nombre" placeholder="Ingreso de Producto" required>
  		</div> <br> 
  	</td>
	</tr>
	
	<tr> 
	<td>
	 <div class="form-group">
    <label for="exampleFormControlSelect1">Région a la que pertenece el Paquete Turistico : </label>
    <select class="form-control" id="cbmRegion" name="cbmRegion" required>
      <option value=1 required>Costa Ecuatoriana</option>
      <option value=2>Sierra Ecuatoriana</option>
      <option value=3>Amazonia Ecuatoriana</option>

    </select>
  </div>
	<br>
	</td>
	</tr>
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="Costo">Costo del Paquete Turistico :  </label>
    	<input type="text" class="form-control" id="Costo" name="textCosto" placeholder="Ingrese el Valor del Producto" required>
    	<small id="emailHelp" class="form-text text-muted">Ejm: 1.50 </small>
  		</div> <br>
	</td>
	</tr>
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="Duracion">Duración del Paquete  :  </label>
    	<input type="text" class="form-control" id="Duracion" name="textDuracion" placeholder="Dias de Duracion" required>
    	<small id="emailHelp" class="form-text text-muted">La duración del Paquete Turistico se Ingresa de forma numerica ejm: 1</small>
  		</div> <br>
	</td>
	</tr>
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="Limite">Limite de Personas  :  </label>
    	<input type="text" class="form-control" id="Limite" name="textLimite" placeholder="Limite de Personas " required>
    	<small id="emailHelp" class="form-text text-muted">El limite de persona se Ingresa de forma numerica ejm: 1</small>
  		</div> <br>
	</td>
	</tr>
	
	
	<tr> 
	<td>
		<div class="form-group">
    	<label for="Imagen">Imagen Descriptiva  :  </label>
    	<input type="text" class="form-control" id="Imagen" name="textNomImage" placeholder="Escriba el Nombre de la Imagen " required>
    	<small id="emailHelp" class="form-text text-muted">Ingrese el Nombre de la imagen junto con la extension ejm: .png .jpg .</small>
  		</div> <br>
	
	</td>
	</tr>
	
	<tr> 
	<td>
	
  	 	<div class="form-group">
    	<label for="TextA">Descripciòn del Paquete Turistico : </label>
    	<textarea class="form-control" id="TextAreaDes" name="descripcion" rows="10" cols="40" ></textarea>
    	<small id="emailHelp" class="form-text text-muted">Detalle del Viaje</small>
  	</div>
	
	</td>
	</tr>
	
	</table>
	
  	
	
	<br>
	<center>
	<input class="btn btn-primary" type="submit" name ="envio" value="ENVIAR DATOS ">
	<input class="btn btn-danger" type="reset" value="BORRAR DATOS ">
	<a class="btn btn-outline-danger" href="Menu_Operaciones.jsp" role="button">Cancelar</a>
	</center>
	
	</form>
	</div>
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