package com.tienda;

import java.sql.ResultSet;

import com.conexion.clsConexion;

public class Factura {
	
	
	public boolean ingresarFactura(String cedula,String tarjeta,String subtotal,String cantidad,String fecha_compra,double total,int id_destino) {
		 clsConexion c = new clsConexion();
		boolean control = false;
		
		
		String sql = "insert into factura values ('"+cedula+"', '"+tarjeta+"',"+subtotal+","+cantidad+","+fecha_compra+","+total+","+id_destino+")";
		String eject = c.Ejecutar(sql);
		if (eject.equalsIgnoreCase("Tabla Actualizada")) {
	
			control = true;
		}
		System.out.println(sql);

		return control;
	}
	
	public String Fecha_PT(int id) {
		
		clsConexion cn= new clsConexion();

		ResultSet rs=null;
		String PT="";
		
		
		String sql="SELECT DestinoxBus.Fecha_Salida from DestinoxBus,Destino,bus where DestinoxBus.Num_bus=bus.Num_bus and DestinoxBus.Id_destino=Destino.Id_destino and destino.Id_destino="+id;
			
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {

					PT=rs.getString(1);

				}
			
		}catch(Exception e) {
			
		}

		return PT;	
		

	}
	
public String NBus_PT(int id) {
		
		clsConexion cn= new clsConexion();

		ResultSet rs=null;
		String PT="";
		
		
		String sql="SELECT bus.Num_bus from DestinoxBus,Destino,bus where DestinoxBus.Num_bus=bus.Num_bus and DestinoxBus.Id_destino=Destino.Id_destino and destino.Id_destino="+id;
			
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {

					PT=rs.getString(1);

				}
			
		}catch(Exception e) {
			
		}

		return PT;	
		

	}

public String Hora_PT(int id) {
	
	clsConexion cn= new clsConexion();

	ResultSet rs=null;
	String PT="";
	
	
	String sql="SELECT DestinoxBus.Hora_Salida from DestinoxBus,Destino,bus where DestinoxBus.Num_bus=bus.Num_bus and DestinoxBus.Id_destino=Destino.Id_destino and destino.Id_destino="+id;
		
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {

				PT=rs.getString(1);

			}
		
	}catch(Exception e) {
		
	}

	return PT;	

}

public String PBus_PT(int id) {
	
	clsConexion cn= new clsConexion();

	ResultSet rs=null;
	String PT="";
	
	
	String sql="SELECT bus.Placa from DestinoxBus,Destino,bus where DestinoxBus.Num_bus=bus.Num_bus and DestinoxBus.Id_destino=Destino.Id_destino and destino.Id_destino="+id;
		
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {

				PT=rs.getString(1);

			}
		
	}catch(Exception e) {
		
	}

	return PT;	

}

}
