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
String cedula=(String) sess.getAttribute("id_user");
String nombre = (String) sess.getAttribute("nombre_user");
String perfil = (String) sess.getAttribute("perfil_user");


String links = menu.Ver_Menu(perfil);
String msm="";
if(nombre==null){
	response.sendRedirect("login.jsp");
}

String numero=request.getParameter("textNumTar");
String clave=request.getParameter("textClave");
Tarjeta_credito credito= new Tarjeta_credito();

String respuesta=credito.validarTarjeta(numero, cedula,clave);

if(respuesta!=null){
	sess.setAttribute("tarjeta", respuesta);
	response.sendRedirect("carrito_confirmacion.jsp" );
	
}else if(respuesta==null){
	response.sendRedirect("carrito_productos.jsp?error=Mensaje" );

}




%>


</body>
</html>