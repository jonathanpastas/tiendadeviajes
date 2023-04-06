package com.tienda;


import java.sql.ResultSet;

import com.conexion.clsConexion;

public class Tarjeta_credito {
	
clsConexion c = new clsConexion ();

	public boolean ingresarTarjeta(String numero, String nombre, String codigo,String cedula,String fecha) {
		boolean control=false;
		String sql = "insert into Tarjeta  values('"+numero+"','"+nombre+"','"+codigo+"','"+cedula+"','"+fecha+"')";
		String eject = c.Ejecutar(sql);
		if (eject.equalsIgnoreCase("Tabla Actualizada")) {
			control = true;
		}
		//System.out.println(sql);
		return control;
	}
	
	
	public String validarTarjeta(String tarjeta,String cedula,String clave) {
		boolean estado=false;
		String ced="";
		String num="";
		String tarj="";
		String codigo="";
		
		String sql="SELECT TARJETA.Num_Tarjeta,Tarjeta.cedula,Tarjeta.Codigo_Tarjeta FROM TARJETA WHERE Num_Tarjeta='"+tarjeta+"' AND CEDULA='"+cedula+"' AND Codigo_Tarjeta='"+clave+"'";
		//System.out.println(sql);
		ResultSet rs=null;
		rs=c.Consulta(sql);
		try {
			while(rs.next()) {
				estado=true;
				tarj=rs.getString(1);
				ced=rs.getString(2);
				codigo=rs.getString(3);
				
				if(tarj.equals(tarjeta) && codigo.equals(clave)) {
					//estado=true;
					num=tarj;
				
				}
			}
		}catch(Exception e ) {
			estado=false;
		}
		
		if(estado==false) {
			tarj=null;
		}

		//System.out.println(estado);
		return tarj;
		
	}
	

}
