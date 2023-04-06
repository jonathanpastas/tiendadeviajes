<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true"  session="true" import="com.sesion.*" import="com.tienda.*" %>
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



String num_tarjeta=request.getParameter("textNumTar");
String nombre_tarjeta=request.getParameter("textNomTar");
String cod_tarjeta=request.getParameter("textCodTar");
String m=request.getParameter("mes");
String a =request.getParameter("ano");

String fecha=m+"-"+a;


Tarjeta_credito tr = new Tarjeta_credito();

boolean estado=tr.ingresarTarjeta(num_tarjeta, nombre_tarjeta, cod_tarjeta,cedula,fecha);

if(estado){
	response.sendRedirect("carrito_confirmacion.jsp");
	sess.setAttribute("tarjeta", num_tarjeta);

}else {
	response.sendRedirect("IngresarTarjeta.jsp");
}
%>




</body>
</html>