package com.tienda;
import com.conexion.*;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Carrito {
	private clsConexion c = new clsConexion();
	private ResultSet rs = null;
	private String prefactura = "";
	
	public boolean añadirCarrito(String cedula,String id_destino,String num_boletos,String num_bus,String valor) {
		boolean control = false;
		
		String sql = "insert into boleto values ('"+cedula+"', "+id_destino+","+num_boletos+","+num_bus+","+valor +"*"+num_boletos+")";
		String eject = c.Ejecutar(sql);
		if (eject.equalsIgnoreCase("Tabla Actualizada")) {
	
			control = true;
		}
		

		return control;
	}
	
	
	public String verCarrito(String tipo,String cedula) {
		if (tipo.equalsIgnoreCase("carrito")) {
			prefactura="<table class=\"table\">" + 
					"  <thead>" + 
					"    <tr>" + 
					"      <th scope=\"col\">Nombre del Paquete Turistico</th>\r\n" + 
					"      <th scope=\"col\">Numero de Boletos</th>\r\n" + 
					"      <th scope=\"col\">Subtotal </th>\r\n" + 
					"      <th scope=\"col\">Fecha de Salida </th>\r\n" + 
					"      <th scope=\"col\">Hora de Salida </th>\r\n" + 
					"    </tr>\r\n" + 
					"  </thead>";
			
			prefactura+="<tbody>";
			
	
			String sql = "select boleto.id_boleto,destino.id_destino,destino.nombre_producto,boleto.num_boletos,boleto.Valor_Pagado, DestinoxBus.Fecha_Salida,DestinoxBus.Hora_Salida  from boleto,destino,bus,DestinoxBus where destino.id_destino=boleto.id_destino and  boleto.Num_bus=bus.Num_bus and destino.Id_destino=DestinoxBus.Id_destino and bus.Num_bus=DestinoxBus.Num_bus and boleto.cedula="+cedula;
	
			try {
				rs = c.Consulta(sql);
				while (rs.next()) {
				
					prefactura+="<tr>\r\n" + 
							"      <th scope=\"row\"> "+rs.getString(3)+"</th>\r\n" + 
							"      <td>"+rs.getString(4)+"</td>\r\n" + //num_boletos
							"      <td>"+rs.getString(5)+"</td>\r\n" + 
							"      <td>"+rs.getString(6)+"</td>\r\n" + 
							"      <td>"+rs.getString(7)+"</td>\r\n" + 
							"      <td> <a class=\"btn btn-danger\"  href=carrito_eliminar.jsp?id_boleto="+rs.getString(1)+"  role=\"button\">Eliminar</a> </td>" + 
							"      <td> <a class=\"btn btn-success\"  href=ValTarjeta.jsp?id_boleto="+rs.getString(1)+"&num="+rs.getString(4)+"&sub="+rs.getString(5)+"&id_destino="+rs.getString(2)+" role=\"button\">Confirmar Compra</a> </td>" + 
							"    </tr>";
				}
			} catch (SQLException e) {
				System.out.println("error..." + e);
			}

			prefactura += "</tbody>\r\n" + 
					"</table>";
			
			
	}
		return prefactura;
	}
	
	
	public boolean quitarCarrito( String cedula,String id_boleto) {
		boolean control = false;
		
		String sql = "delete from boleto where id_boleto="+id_boleto+" and cedula="+cedula;
		String eject = c.Ejecutar(sql);
		if (eject.equalsIgnoreCase("Tabla Actualizada")) {
	
			control = true;
		}
		

		return control;
	}
	

	
	public String confirmarCarrito(String cedula) {
		prefactura = "<table border='3' align='center'  bordercolor='#76C9AB' bgcolor='#C4EFDF'><tr><th>TOTAL</th></tr>";
		String sql = "select sum(Valor_Pagado) precio from boleto where cedula="+cedula;
		//System.out.println(sql);
		try {
			rs = c.Consulta(sql);
			while (rs.next()) {
				prefactura	 += "<tr><td>"+rs.getString(1)+"</td></tr>";


			}
		} catch (SQLException e) {
			System.out.println("error..." + e);
		}

		prefactura += "</table>";
		return prefactura;
	}
	
	public void Actualizar_Carrito (String id_destino,int cantidad) {
		String sql="";
		clsConexion cn = new clsConexion();
		
		try {
			sql="UPDATE DESTINO SET CUPO_LIMITE = CUPO_LIMITE - "+cantidad+"  WHERE DESTINO.ID_DESTINO="+id_destino;
			cn.Ejecutar(sql);

		} catch (Exception sqle) {
			System.out.println("Error al actualizar"+sqle);
		}
	}
	
	

	

}
