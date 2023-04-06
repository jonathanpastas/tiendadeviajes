<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.sesion.*" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingresar una Tarjeta de Credito</title>
<script>
	function enviar2() {
		var num_tarjeta =document.getElementById('tarjeta').value;
		var codigo_tarjeta=document.getElementById('tarjetaC').value;
		
		var bandera=false;
	
		
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
	
		for(var i=0;i<codigo_tarjeta.length;i++){
			if(isNaN(parseInt(codigo_tarjeta.charAt(i)))==true){
				alert("El campo Numero de Tarjeta solo admite digitos  no caracteres ")
				return false;
			}
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
<body background="imagenes\fondo_principal.jpg">
<%
clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String cedula=(String) sess.getAttribute("id_user");
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");

String num_boleto=request.getParameter("id_boleto");
String cantidad=request.getParameter("num");
String subt=request.getParameter("sub");
String id_des=request.getParameter("id_destino");
sess.setAttribute("boleto", num_boleto);
sess.setAttribute("numero", cantidad);
sess.setAttribute("subtotal", subt);
sess.setAttribute("destino",id_des);
String links = menu.Ver_Menu(perfil);
String msm="";
String message=request.getParameter("msg");
String msm1="";

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

<div class=container>
<br>
<br>


<h2 id="enca_costa">Ingreso de Forma de Pago</h2>

<p>Por favor si ya registraste una Tarjeta de crédito coloca su numeración caso contrario, puedes agregar una nueva Tarjeta. </p>
<center>


  

</center>
<form action="validar_tarjeta.jsp" onsubmit="return enviar2();">

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
		<div class="form-group">
    	<label for="clave">Clave de Tarjeta  </label>
    	<input type="password" class="form-control" name="textClave" id="tarjetaC" placeholder="3 digitos " >
  		</div> <br> 
  	</td>
	</tr>
	
	
	
	<tr> 
	<td> 
		<input class="btn btn-primary" type="submit" name ="envio" value="Validar Tarjeta ">
	    <a class="btn btn-warning" href="IngresarTarjeta.jsp" role="button">Ingresar una Tarjeta</a>
  	</td>
	</tr>

</table>


</form>

</div>
<br>
  <br>
   <br>
    <br>
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