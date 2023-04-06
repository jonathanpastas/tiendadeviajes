<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"  session="true" import="com.sesion.*" import="com.tienda.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

clsMenu menu = new clsMenu();
HttpSession sess = request.getSession();
String cedula=(String) sess.getAttribute("id_user");
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);
String msm="";
if(nombre==null){
	response.sendRedirect("login.jsp");
}

String id=request.getParameter("id_producto");
String num_as=request.getParameter("asientos");
String nom_pt=request.getParameter("nombre_pt");
String precio_pt=request.getParameter("precio_pt");
String num_bus=request.getParameter("num_bus");

Carrito cls = new Carrito();

boolean estado=cls.añadirCarrito(cedula, id, num_as, num_bus, precio_pt);

if(estado){

	response.sendRedirect("carrito_productos.jsp");
}else{
	response.sendRedirect("carrito_reserva.jsp");
	
}


%>

<%=msm %>
</body>
</html>