<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tienda.*" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Succesful</title>
</head>
<link href="css/Estilo.css" rel="stylesheet" type="text/css" />
<link href="cssB/bootstrap.min.css" rel="stylesheet" />
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

<div class="container">


<%

double precio;
int dias;
String detalle;
int duracion;

precio=Double.parseDouble(request.getParameter("textNuePrePaquete"));
String fech=request.getParameter("fecha1");
String hor=request.getParameter("hora1");
dias=Integer.parseInt(request.getParameter("textNueDias"));
detalle=request.getParameter("Nuedescripcion");
duracion=Integer.parseInt(request.getParameter("cupo"));

Paquete_Turistico lst=new Paquete_Turistico();

lst.Modificar_PT(Integer.parseInt(request.getParameter("id")),precio,dias,detalle,fech,hor,duracion);



String ruta="";
String msm ="";
msm="<div class=\"alert alert-success\" role=\"alert\"> EL REGISTRO SE ACTUALIZO CORRECTAMENTE ¡¡¡¡¡ </div>";
ruta="imagenes/correcto.png";

%>
<br>

<%=msm %> 

<center> <a href="Menu_Operaciones.jsp" > <img src=<%=ruta %> width="150" height="150"> Regresar al Menú de Operaciones</a></center>

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