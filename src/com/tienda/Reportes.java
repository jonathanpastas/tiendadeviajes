package com.tienda;
import com.conexion.*;
import java.sql.*;



public class Reportes {
	
	clsConexion c = new clsConexion();
	private ResultSet rs = null;
	String tablaclie="";
	
	public String verCliente() {
		tablaclie="<table class=\"table\">" + 
				"  <thead>" + 
				"    <tr>" + 
				"      <th scope=\"col\">Cedula</th>" + 
				"      <th scope=\"col\">Nombre Cliente</th>" + 
				"      <th scope=\"col\">Ver Detalle</th>" + 

				"    </tr>" + 
				"  </thead>";
		
		tablaclie+="<tbody>";
		
	
		String sql = "Select Top 1 factura.cedula,usuario.nombre from   Factura,usuario where factura.cedula=usuario.cedula Group by factura.cedula,usuario.nombre Order by count(1) desc";

		try {
			rs = c.Consulta(sql);
			while (rs.next()) {
				
				tablaclie+="<tr>" + 
						"      <th scope=\"row\">"+rs.getString(1)+"</th>\r\n" + 
						"      <td>"+rs.getString(2)+"</td>\r\n" + 
						"      <td> <a class=\"btn btn-danger\"  href=Ver_Compras.jsp?cedula="+rs.getString(1)+"  role=\"button\">Ver los Productos Adquiridos</a> </td>" + 
						"    </tr>";
			}
		} catch (SQLException e) {
			System.out.println("error..." + e);
		}

		tablaclie += "</tbody>\r\n" + 
				"</table>";
		
		

	return tablaclie;
	}
	
	
	public String verHistorial(String cedula) {
		
		
				tablaclie="<table class=\"table\">" + 
						"  <thead>" + 
						"    <tr>" + 
						"      <th scope=\"col\">Num_Factura</th>" + 
						"      <th scope=\"col\">Cedula </th>" + 
						"      <th scope=\"col\">Nombre del Paquete Turistico</th>" + 
						"      <th scope=\"col\">Cantidad</th>" + 
						"      <th scope=\"col\">Fecha de Compra</th>" + 
						"      <th scope=\"col\">Total de Compra</th>" + 

						"    </tr>" + 
						"  </thead>";
				
				tablaclie+="<tbody>";
				
			
				String sql = "Select id_factura,cedula,destino.Nombre_producto,cantidad,fecha_de_Compra,total_compra from factura,destino where factura.cedula='"+cedula+"'and destino.Id_destino=factura.id_destino	";


				try {
					rs = c.Consulta(sql);
					while (rs.next()) {
						
						tablaclie+="<tr>" + 
								"      <th scope=\"row\">"+rs.getInt(1)+"</th>\r\n" + 
								"      <td>"+rs.getString(2)+"</td>\r\n" + 
								"      <td>"+rs.getString(3)+"</td>\r\n" + 
								"      <td>"+rs.getInt(4)+"</td>\r\n" + 
								"      <td>"+rs.getDate(5)+"</td>\r\n" + 
								"      <td>"+rs.getDouble(6)+"</td>\r\n" + 
								"    </tr>";
					}
				} catch (SQLException e) {
					System.out.println("error..." + e);
				}

				tablaclie += "</tbody>\r\n" + 
						"</table>";
				
				

			return tablaclie;
				
	}
	
	
	public String verCategoria() {
		String tabla="";
		
		//instancia a la conexion
		clsConexion cn= new clsConexion();
		//datos que se va a extraer
		ResultSet rs=null;
		//mandar comandos
		String sql="select * from categoria";
		
		tabla="<table FRAME=border><tr> <td>ID</td> <td>Categoria </td> </tr>";
		String categoria;


		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {
				//3 indica la columna donde esta situado el dato
				categoria=rs.getString(2);
	
					
				tabla += "<tr><td>"+categoria+"</td>";
			}
			
		}catch(Exception e) {
			
		}
		
		tabla+="</table>";
		//System.out.println(tabla);
		
		return tabla;
	}
	
	public String verMasVendido() {
		String destino="";
		tablaclie="<table class=\"table\">" + 
				"  <thead>" + 
				"    <tr>" + 
				"      <th scope=\"col\">Id Destino</th>" + 
				"      <th scope=\"col\">Nombre Producto</th>" + 
				"      <th scope=\"col\">Categoria</th>" + 
				"      <th scope=\"col\">Recaudación</th>" + 

				"    </tr>" + 
				"  </thead>";
		
		tablaclie+="<tbody>";
		
	
		String sql = "select Top 1 factura.id_destino, destino.Nombre_producto,destino.Id_categoria,sum(factura.total_compra) as recaudacion from   factura,destino where factura.id_destino=destino.Id_destino Group by factura.id_destino, destino.Nombre_producto,destino.Id_categoria Order by count(1) desc";

		try {
			rs = c.Consulta(sql);
			while (rs.next()) {
				
				if(rs.getInt(3)==1) {
					destino="REGION COSTA";
				}
				if(rs.getInt(3)==2) {
					destino="REGION SIERRA";
				}
				if(rs.getInt(3)==3) {
					destino="REGION AMAZONIA";
				}
				
				tablaclie+="<tr>" + 
						"      <th scope=\"row\">"+rs.getString(1)+"</th>\r\n" + 
						"      <td>"+rs.getString(2)+"</td>\r\n" + 
						"      <td>"+destino+"</td>\r\n" + 
						"      <td>"+rs.getString(4)+"</td>\r\n" + 
						"    </tr>";
			}
		} catch (SQLException e) {
			System.out.println("error..." + e);
		}

		tablaclie += "</tbody>\r\n" + 
				"</table>";
		
		

	return tablaclie;
	}
	
	
	public String  Nombre_Cliente(String cedula) {
		 //select usuario.Nombre from usuario where cedula='0401787528'
		
				 String nombre="";
					
				
					String sql = "select usuario.Nombre from usuario where cedula='"+cedula+"'";

					try {
						rs = c.Consulta(sql);
						while (rs.next()) {
							
							nombre=rs.getString(1);
							
						}
					} catch (SQLException e) {
						System.out.println("error..." + e);
					

		
				 
	}
					return nombre;	
	}
	
	public String ver_No_Comprados() {
		String destino="";
		tablaclie="<table class=\"table\">" + 
				"  <thead>" + 
				"    <tr>" + 
				"      <th scope=\"col\">Nombre del Paquete Turistico</th>" + 


				"    </tr>" + 
				"  </thead>";
		
		tablaclie+="<tbody>";
		
	
		String sql = " select destino.Nombre_producto,destino.Id_categoria from destino left join Factura on destino.Id_destino=factura.id_destino where factura.id_destino is null";

		try {
			rs = c.Consulta(sql);
			while (rs.next()) {
				
				if(rs.getInt(2)==1) {
					destino="REGION COSTA";
				}
				if(rs.getInt(2)==2) {
					destino="REGION SIERRA";
				}
				if(rs.getInt(2)==3) {
					destino="REGION AMAZONIA";
				}
				
				tablaclie+="<tr>" + 
						"      <th scope=\"row\">"+rs.getString(1)+"</th>\r\n" + 
						"      <td>"+destino+"</td>\r\n" + 

						"    </tr>";
			}
		} catch (SQLException e) {
			System.out.println("error..." + e);
		}

		tablaclie += "</tbody>\r\n" + 
				"</table>";
		
		

	return tablaclie;
	}

	}
