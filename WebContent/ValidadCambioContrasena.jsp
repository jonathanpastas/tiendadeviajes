<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cambio de Clave</title>
</head>
<link href="cssB/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />

<body background="imagenes\fondo_principal.jpg">

<%


clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String usuario = (String) sess.getAttribute("name"); //nombre de usuario 
String id=(String)sess.getAttribute("id_user");//cedula del cliente 
String links = menu.Ver_Menu(perfil);
String cA,cN,claveNueva,msm="";
String re="";

if(nombre==null){
	response.sendRedirect("login.jsp");
}

clsUsuario verificar=new clsUsuario();

cA=verificar.ValidarCambio(id);
cN=request.getParameter("contrasena_anterior");
claveNueva=request.getParameter("contrasena_nueva");


msm="";

if(cA.equals(cN)){
	verificar.CambioContrasena(claveNueva, id);
	msm="<div class=\"alert alert-success\" role=\"alert\"> SU CONTRASEÑA SE ACTUALIZO CORRECTAMENTE </div>";
	re="Inicio_menu.jsp";
	
}else{

	msm="<div class=\"alert alert-warning\" role=\"alert\"> SU CLAVE ANTERIOR NO ES CORRECTA POR FAVOR PROPORCIONE LOS DATOS CORRECTOS </div>";
	re="cambio_clave.jsp";
}
%>

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01" >
   <a class="navbar-brand" href="#">
    <img src="imagenes/iniciar.png" width="50" height="50" class="d-inline-block align-top" alt="">
    Bienvenido  <%=nombre %> 
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


<%=msm %>

<center> <a href=<%=re %> > <img src="imagenes/regreso.png" width="150" height="150"> </a> <br> <b>Presiona el icono para Regresar al Menù</b></center>

</div>
<br>
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