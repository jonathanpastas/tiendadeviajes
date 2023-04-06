package com.sesion;
import com.conexion.*;
import java.sql.*;
public class clsUsuario {
	
private String [] infoUser= new String [4];
	
private String claveA="";

	public boolean  ConsultarUsuario(String user_correo,String clave) {
		
		clsConexion cn = new clsConexion();
		String sql =" select * from usuario where correo_electronico= '"+user_correo+"' and clave_us= '"+clave+"' ";
		boolean login=false;
		ResultSet rs =null;
		rs=cn.Consulta(sql);
		try {
			while(rs.next()) {
					login=true;
					infoUser[0]=rs.getString(1);   
					infoUser[1]=rs.getString(2);   
					infoUser[2]=rs.getString(7);  
					infoUser[3]=rs.getString(5);  
		
			}
			
		}catch(Exception e ) {
			
		}
		
		return login;
		
	
	}
	
	public String []getInfoUser() {
		return infoUser;
	}	
	
	
public void Registrar_Cliente(String cedula, String nombre_cliente, String telefono,String direccion ,String correo ,String clave_user,int id) {
		
	
		String sql="";
		clsConexion cn = new clsConexion();
		
		try {
			sql="INSERT INTO USUARIO VALUES ('"+cedula+"' ,'"+nombre_cliente+"' ,'"+telefono+"','"+direccion+"', '"+correo+"' ,'"+clave_user+"' ,"+id+" )";
			cn.Ejecutar(sql);
	

		}catch (Exception sqle) {
			System.out.println("Error al insertar"+sqle);
			
		}
		
		
		
	}


public String ValidarCambio(String user) {
	clsConexion cn = new clsConexion();
	String nc="";
	String sql ="select clave_us from usuario where cedula='"+user+"'";
	
	ResultSet rs =null;
	rs=cn.Consulta(sql);
	try {
		while(rs.next()) {
				
				nc=rs.getString(1);
				System.out.println(nc);
				
		}
		
	}catch(Exception e ) {
		
	}
	
	return nc;
}

public boolean CambioContrasena(String nueva_clave,String user) {
	
	boolean estado=false;
	String sql="";
	clsConexion cn = new clsConexion();
	
	try {
		
		
		sql="update usuario set clave_us='"+nueva_clave+"' where cedula='"+user+"'";
		cn.Ejecutar(sql);
		estado=true;
		

	} catch (Exception sqle) {
		System.out.println("Error al actualizar"+sqle);
	}
	
	return estado;
}

	}





