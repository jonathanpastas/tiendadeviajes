<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.sesion.*" import="com.tienda.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carrito de Compras </title>
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
String num_tarjeta=(String)sess.getAttribute("tarjeta");
String b= (String)sess.getAttribute("boleto");
String c= (String)sess.getAttribute("numero");
String st= (String)sess.getAttribute("subtotal");
String destino=(String)sess.getAttribute("destino");

String links = menu.Ver_Menu(perfil);
String msm="";
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



<%

double t=0;
double subs=0;
subs=Math.round(Double.parseDouble(st)*0.12);
t=Double.parseDouble(st)+subs;
String fecha_compra="getDate()";
%>

<%

Carrito cls = new Carrito();
Paquete_Turistico pt = new Paquete_Turistico();
Factura f = new Factura();
f.ingresarFactura(cedula, num_tarjeta, st, c, fecha_compra, t,Integer.parseInt(destino));
int cantidad=Integer.parseInt(c);
cls.Actualizar_Carrito(destino,cantidad);
cls. quitarCarrito( cedula,b);
int desti=Integer.parseInt(destino);
String name=pt.Nombre_PT(desti);
String unidad=pt.Precio_PT(desti);

%>


<div class=container>
<img src="imagenes/LogoEmpresa.png" width="150" height="100" class="d-inline-block align-top" alt="">



<h2 id="enca_costa">Agencia de Viajes Riksishay </h2> 
<h2 id="enca_costa">Factura de Compra  </h2>
<p>Cedula del Cliente:   <%=cedula %></p>
<p>Nombre del Cliente:   <%=nombre %></p>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Paquete Turistico</th>
      <th scope="col">Cantidad</th>
      <th scope="col">Precio Unitario</th>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><%=name %></td>
      <td><%=c %></td>
      <td><%=unidad %></td>
      <td><%=st %></td>
    </tr>
  
  </tbody>
</table>

<br>
<br>
<br>

<p align="right"> Subtotal : <%=st%></p>
<p align="right"> IVA 12% : <%=subs%></p>
<h2 id="enca_cos" align="right"> TOTAL DE LA COMPRA  : <%=t%></h2>

<br>
<br>

<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">BOLETO</a>
</nav>
<h2 id="enca_costa">Agencia de Viajes Riksishay </h2> 
<h2 id="enca_costa">BOLETO  </h2>

<p> Estimado Cliente, a continuación se le presenta su boleto generado por su compra , es de se responsabilidad el uso de este boleto 
dentro de el se detalla los datos de su pasaje adquirido, con el podra presentarse el dia de la salida de su Paquete Turistico </p>
<center>
<h5>CLIENTE : <%=cedula %> / <%=nombre %></h5>
<h5>DESTINO : <%=name %></h5>
<h5>FECHA DE SALIDA : <%=f.Fecha_PT(desti) %></h5>
<h5>HORA DE SALIDA : <%=f.Hora_PT(desti) %></h5>
<h5>NUMERO DE AUTOBUS : <%=f.NBus_PT(desti) %></h5>
<h5>PLACAS DEL AUTOBUS : <%=f.PBus_PT(desti) %></h5>
<h5>CANTIDAD DE ASIENTOS : <%=c%></h5>
</center>
<br>
<p>Este boleto se genero conforme el cliente recepto su compra . </p>
<h2 id="enca_costa">Indicaciones de Viaje</h2> 

<p>1. Se recomienda al cliente presentarse en las oficinas de Riksishay 30 minutos antes de la hora marcada del boleto.  </p>
<p>2. El cliente debera presentar su boleto antes de embarcar en las unidades de transporte.  </p>
<p>3. Riksishay se hace responsable de hasta 20 dolares en equipaje extraviado dentro de nuestras unidades, no aplica para objetos extraviados por el cliente mismo. </p>
<p>4. Esta prohibido viajar en estado etilico, de llegar a ser el caso el cliente no podra embarcar las unidades y perdera su pasaje completamente sin reclamo a cambios. </p>
<p>5. En caso de presentarse irregularidades Riksishay pone a disposición de su linea de reclamos. </p>
</div>



<center> <a href="Inicio_menu.jsp" > <img src="imagenes/regreso.png" width="150" height="150"> </a> <br> <b>TERMINAR COMPRA</b></center>
<p> </p>



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