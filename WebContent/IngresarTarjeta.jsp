<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"  session="true" import="com.sesion.*" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forma de Pago</title>
<script>
	function enviar1() {
		var num_tarjeta =document.getElementById('tarjeta').value;
		var codigo_tarjeta =document.getElementById('tarjetaC').value;
		var name_tarjeta=document.getElementById('tarjetaN').value;
		var mes_exp=document.getElementById('mes').value;
		var ano_exp=document.getElementById('ano').value;
		var bandera=false;
	
		if(name_tarjeta == null || name_tarjeta.length == 0 || /^\s+$/.test(name_tarjeta)){
			alert("El Nombre de la Tarjeta no puede ser vacio por favor verifique que contenga el nombre de su tarjeta");
			return false;
		}
		
		for(var i=0;i<num_tarjeta.length;i++){
			if(isNaN(parseInt(num_tarjeta.charAt(i)))==true){
				alert("El campo Numero de Tarjeta solo admite digitos del 1 al 0 ")
				return false;
			}
		}
	
		if(num_tarjeta==null  || num_tarjeta.length == 0 || /^\s+$/.test(num_tarjeta) ){
			alert("El campo Numero de Tarjeta se encuentra vacio ");
			return false;
	
		}
		
	
		if(codigo_tarjeta==null  || codigo_tarjeta.length == 0 || /^\s+$/.test(codigo_tarjeta) ){
			alert("El campo código de Tarjeta se encuentra vacio");
			return false;
	
		}
	
		if(num_tarjeta.length >16){
			alert("Hemos detectado que su numero de tarjeta excede los limites. Recuerde una Tarjeta de crédito contiene 16 numeros");
			return false;
		}
		
		if(num_tarjeta.length <= 15){
			alert("Hemos detectado que su  numero de tarjeta contiene menos de 16 digitos por favor ingrese los 16 numeros exactos de su tarjeta");
			return false;
		}
		
		if(codigo_tarjeta.length >3){
			alert("El código de la tarjeta debe contener 3 digitos ");
			return false;
		}
		
		if(codigo_tarjeta.length <3){
			alert("El código de la tarjeta debe contener 3 digitos ");
			return false;
		}
		
		for(var i=0;i<codigo_tarjeta.length;i++){
			if(isNaN(parseInt(codigo_tarjeta.charAt(i)))==true){
				alert("El codigo de la tarjeta debe ser numerico ")
				return false;
			}
		}
		
		if(mes_exp==null  || mes_exp.length == 0 || /^\s+$/.test(mes_exp) ){
			alert("El campo Mes de expiración se encuentra vacio");
			return false;
	
		}
		if(ano_exp==null  || ano_exp.length == 0 || /^\s+$/.test(ano_exp) ){
			alert("El campo Año de expiración se encuentra vacio");
			return false;
	
		}
		
		for(var i=0;i<mes_exp.length;i++){
			if(isNaN(parseInt(mes_exp.charAt(i)))==true){
				alert("Recuerde que el mes de expiracion se debe ingresar de forma numerica. Por ejemplo Octubre es (10) ")
				return false;
			}
		}
		
		for(var i=0;i<ano_exp.length;i++){
			if(isNaN(parseInt(ano_exp.charAt(i)))==true){
				alert("No se admiten letras en el campo Año de Expiración ")
				return false;
			}
		}

		if(mes_exp.length >=3){
			alert("El campo mes de expiracion solo admite maximo dos digitos ");
			return false;
		}
		
		if(mes_exp >=13){
			alert("Los meses del año van de 0 a 12. El mes no puede ser mayor a 12 ");
			return false;
		}
		
		if(ano_exp.length >=5){
			alert("El campo año de expiracion solo admite maximo cuatro digitos  ");
			return false;
		}
			return true;
		}
	
</script>

</head>
<link href="css/EstiloCosta.css" rel="stylesheet" type="text/css" />
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<body  background="imagenes\fondo_principal.jpg" >
<%
clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);

Paquete_Turistico filtro = new Paquete_Turistico();


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
      <%=links%>
    </ul>
    
   <p align="right">  <img src="imagenes/LogoEmpresa.png" width="80" height="50" > </p> 
  </div>
</nav>

<br> 

<h2 id="enca_costa">Forma de Pago</h2>
<h2 id="enca_costa">Ingresa una Tarjeta de Crèdito</h2>
<br> 


<div class="container">
<center><img src="imagenes/carta-maestra.png" width="100" height="100"></center>
<form action="subir_tarjeta.jsp" onsubmit="return enviar1()">

<table align="center" width="50% " height="200px">
	
	<tr> 
	<td> 
		<div class="form-group">
    	<label for="tarjeta">Numero de Tarjeta  </label>
    	<input type="text" class="form-control" name="textNumTar" id="tarjeta" placeholder="Numero de Tarjeta xxx-xxx-xxxxx" >
  		</div> <br> 
  	</td>
	</tr>
	
		<tr> 
	<td> 
<label for="tarjetaN">Numero de Tarjeta  </label>
  		<select class="form-control" id="tarjetaN" name="textNomTar">
      <option value="MasterCard">MasterCard</option>
      <option value="AmericanExpress">AmericanExpress</option>
      <option value="Discovery">Discovery</option>
      <option value="Visa">Visa</option>
      <option value="DinnersClub">DinnersClub</option>
    </select>
    <br>
  	</td>
	</tr>
	
		<tr> 
	<td> 
		<div class="form-group">
    	<label for="TarjetaC">Codigo Tarjeta  </label>
    	<input type="password" class="form-control" name="textCodTar" id="tarjetaC" >
  		</div> <br> 
  	</td>
	</tr>
	
	
	<tr>
	<td>
	<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Mes de Expiración</label>
      <input type="text" class="form-control" id="mes" name="mes" placeholder="Mes de Expedición ejm: 10 ">
      <small id="emailHelp" class="form-text text-muted">Recuerde el mes debe ser ingresado de forma numerica por ejemplo Octubre es (10).</small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Año de Expiración</label>
      <input type="text" class="form-control" id="ano" name ="ano" placeholder="ejm: 2016">
    </div>
  </div>
	
	</td>
	</tr>
	<tr> 
	<td> 
		<input class="btn btn-primary" type="submit" value="Registrar Tarjeta ">
	    <input class="btn btn-danger" type="reset" value="Borrar Campos ">
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