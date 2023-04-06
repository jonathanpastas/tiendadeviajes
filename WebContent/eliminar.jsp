<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tienda.*"   import="com.tienda.*" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atención</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<link href="css/EstiloCatalogo.css" rel="stylesheet" type="text/css"/>
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


<form action="Verifica.jsp">


<div class="container">

<h3> Por favor Confirma tu petición </h3>

<div class="alert alert-danger" role="alert">
  Mensaje Importante: Recuerda que una vez que eliminado el Paquete Turistico no podras recuperar la información de dicho producto.
</div>

<br>
<div class="form-check">
          <input class="form-check-input" type="radio" name="mensaje" id="gridRadios1" value="si" checked>
          <label class="form-check-label" for="gridRadios1">
            Si, deseo eliminar este Paquete Turistico
          </label>
</div>

<div class="form-check">
          <input class="form-check-input" type="radio" name="mensaje" id="gridRadios2" value="no" checked>
          <label class="form-check-label" for="gridRadios2">
            No, deseo eliminar este Paquete Turistico
          </label>
</div>
<input type="hidden" name="id" value="<%out.print(request.getParameter("id"));%>"/> <br>
<button type="submit" class="btn btn-primary">Eliminar Producto</button>
<a class="btn btn-outline-danger" href="VerOferta.jsp" role="button">Cancelar</a>


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