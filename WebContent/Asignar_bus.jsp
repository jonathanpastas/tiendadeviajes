<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.sesion.*" import="com.tienda.*"%>
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
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");
String links = menu.Ver_Menu(perfil);

if(nombre==null){
	response.sendRedirect("login.jsp");
}
%>

<%

String destino=request.getParameter("Paquete");
int buseta=Integer.parseInt(request.getParameter("bus"));
String fecha= request.getParameter("fecha");
String hora=request.getParameter("hora");

int d=(int)sess.getAttribute("dt")+1;

Paquete_Turistico g = new Paquete_Turistico();
g.Asignar_PT_bus(d ,buseta,fecha, hora);

%>

<%response.sendRedirect("Menu_Operaciones.jsp"); %>


</body>
</html>