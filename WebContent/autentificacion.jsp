<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.tienda.*" import="com.sesion.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String usuario = request.getParameter("user");
String clave = request.getParameter("contrasena");

%>

<%
clsUsuario al = new clsUsuario();

if(al.ConsultarUsuario(usuario, clave)){
	
	HttpSession sess = request.getSession();
	sess.setAttribute("id_user", al.getInfoUser()[0]); //cedula
	sess.setAttribute("nombre_user", al.getInfoUser()[1]);//nombre
	sess.setAttribute("perfil_user", al.getInfoUser()[2]);
	sess.setAttribute("name", al.getInfoUser()[3]);
	
	response.sendRedirect("Inicio_menu.jsp");
	
}else{
	
	response.sendRedirect("login.jsp?msm=error");
}


%>

</body>
</html>