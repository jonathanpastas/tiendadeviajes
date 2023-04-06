<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"   import = "com.sesion.*"  import="com.tienda.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Registro</title>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<%

clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);
int names=Integer.parseInt(request.getParameter("id"));
Paquete_Turistico n=new Paquete_Turistico();
String val=n.Nombre_PT(names);
if(nombre==null){
	response.sendRedirect("login.jsp");
}
%>

<body background="imagenes\fondo_principal.jpg">

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
<br>
	
	

	<h2 id="Mod"> ACTUALIZAR DATOS DEL REGISTRO  </h2>
	<h2 id="Mod"> <%=val %> </h2>
	
	<div class="container">
	

	<form action="EnviarActualizacion.jsp" >
	
	<p> Por favor Ingrese las nuevas actualizaciones del Paquete Turistico  </p>
	
	
	<table align="center"  width="50% " height="200px">
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="NuevoPrecio"><b>COSTO DEL PAQUETE TURISTICO  : </b> </label>
    	<input type="text"   class="form-control" id="NuevoPrecio" name="textNuePrePaquete" placeholder="Ingrese el Nuevo valor del Paquete " required>
  		</div> <br>
	</td>
	</tr>
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="NuevoDias"><b>DURACIÓN DEL PAQUETE TURISTICO  : </b> </label>
    	<input type="text" class="form-control" id="NuevoDias" name="textNueDias" placeholder="Dias de Duracion" required>
  		</div> <br>
	</td>
	</tr>
	
	<tr> 
	<td>
		<div class="form-group">
   		<label for="NuevoDias"><b>CUPO LIMITE DEL PAQUETE TURISTICO  : </b> </label>
    	<input type="text" class="form-control" id="cupo" name="cupo" placeholder="racion" required>
  		</div> <br>
	</td>
	</tr>
	
	<tr> 
	<td>
	
	<p> <b>FECHA DE SALIDA DEL PAQUETE TURISTICO</b> </p>
	<input type="date" name="fecha1" required>

	<p> <b>HORA DE SALIDA DEL PAQUETE TURISTICO:  </b></p>
	
    <input type="time" name="hora1" required>


  	 	<div class="form-group">
    	<label for="TextAreaDes"><b>DETALLE DEL PAQUETE TURISTICO : </b> </label>
    	<textarea class="form-control" id="TextAreaDes" name="Nuedescripcion" rows="10" cols="40" ></textarea>
  	</div>
	
	</td>
	</tr>
	
	<tr>
	<td align="center">

	<br>
	<input type="hidden" name="id" value="<%out.print(request.getParameter("id"));%>"/> <br>
	<input class="btn btn-primary" type="submit" value="ENVIAR ACTUALIZACIÓN " >
	
	<a class="btn btn-outline-danger" href="Actualizar.jsp" role="button">Cancelar</a>
</td>
</tr>

	
</table >
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