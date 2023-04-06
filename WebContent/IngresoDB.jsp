<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tienda.*"  session="true"  import="com.tienda.*" session="true" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asignar Detalles al Paquete Turistico</title>
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
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);

if(nombre==null){
	response.sendRedirect("login.jsp");
}
%>

<% 

	int id_cat;
	String Nombre_p;
	double precio;
	String ima;
	int dias;
	String detalle;
	int cupo; 
	
	id_cat=Integer.parseInt(request.getParameter("cbmRegion"));
	Nombre_p=request.getParameter("textNomPaquete");
	precio=Double.parseDouble(request.getParameter("textCosto"));
	ima=request.getParameter("textNomImage");
	dias=Integer.parseInt(request.getParameter("textDuracion"));
	detalle=request.getParameter("descripcion");
	cupo=Integer.parseInt(request.getParameter("textLimite"));
	
	
	
	Paquete_Turistico ls=new Paquete_Turistico();
	Factura f = new Factura();
	//variable de sesion 
	sess.setAttribute("dt", ls.Id_paquete());
	ls.Ingresar_PT(id_cat, Nombre_p,precio,cupo,dias,ima,detalle);
	String msg="Producto insertado";
	
	
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
	
	<div class="container">
	
	<h2 id="enca_costa">Asignar un Bus a un Paquete Turistico</h2>

<div class="alert alert-success" role="alert">
SE HA INSERTADO EL PRODUCTO CORRECTAMENTE 
Como ultimo paso asignemos los detalles  a el nuevo Paquete Turistico 
</div>

<p>Nombre del Paquete Turistico: <%=ls.Nombre_PT(ls.Id_paquete())%>  </p>
		
	<form action="Asignar_bus.jsp">
	
	<p><b> SELECCIONA UN NUMERO DE AUTOBUS AL CUAL QUIERAS DESIGNAR A TU NUEVO PAQUETE TURISTICO </b></p>
	<%=ls.Id_bus() %>
	<br>
	
	<p> <b>ASIGNA UNA FECHA A TU NUEVO PAQUETE TURISTICO</b> </p>
	<input type="date" name="fecha" required>
	<br>
	<br>
	<p> <b>INGRESA LA HORA DE SALIDA DEL PAQUETE :  </b></p>
	   <input type="time" name="hora" required>
<br>
<br>
	
	
	<input class="btn btn-outline-success" type="submit" value="Asignar">
	
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