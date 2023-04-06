package com.tienda;

import java.sql.ResultSet;

import com.conexion.clsConexion;

public class Paquete_Turistico extends clsConexion{
	
	
	public String MostrarPT() {

		String card1="";
		
		clsConexion cn= new clsConexion();

		ResultSet rs=null;

		String sql="select * from destino";
		card1+="<div class=\"row\"> ";
	
		
		String nombre_producto;
		double precio;
		String destino="";
		int valdestino;
		int id;
		String imagen;
		int dias,cupo;
		String detalle;
		String borrar;
		int contador=0;
		
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {
			
				id=rs.getInt(1);
				nombre_producto=rs.getString(2);
				precio=rs.getDouble(3);
				cupo=rs.getInt(4);
				dias=rs.getInt(5);
				imagen=rs.getString(6);
				detalle=rs.getString(7);
				valdestino=rs.getInt(8);
		
				
				if(valdestino ==1 ) {
					destino="REGION COSTA";
				}else if(valdestino==2) {
					destino="REGION SIERRA";
				}else if(valdestino==3) {
					destino="REGION AMAZONICA";
				}
					
				card1+="<div class=\"col-sm\">";
				card1+="<div class=\"card\" style=\"width: 18rem; height: 25rem\"> ";
					
				card1+="<img class=\"card-img-top\" height=\"100\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
				card1+="<div class=\"card-body\">";
				card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
				card1+="<p class=\"card-text\"> Destino: "+destino+"</p> <br>";
				card1+="<p class=\"card-text\"> Precio: "+precio+"</p> <br>";
				card1+="<a href=\"eliminar.jsp?id="+id+"\" class=\"btn btn-outline-danger\">Eliminar</a>";
				card1+="</div>";
				card1+="</div>";
				card1+="</div>";
				
				contador++;
				
				if(contador==3) {
					card1+="</div>";
					card1+="<br> <br>";
					card1+="<div class=\"row\">";
					contador=0;
				}
				
			
		        
			
			}
			
		}catch(Exception e) {
			
		}
		card1+="</div>";
		
		//System.out.println(card1);
		
		return card1;
	}


	
	public boolean eliminarPT (int id) {
		boolean result=false;
		clsConexion cn= new clsConexion();
		String sql1="delete from DestinoxBus where Id_destino="+id;
		String sql="DELETE FROM destino WHERE id_destino="+id;
		String msg1=cn.Ejecutar(sql1);
		String msg=cn.Ejecutar(sql);
	
		
		if(msg.equals("DATOS INSERTADOS")&&msg1.equals("DATOS INSERTADOS")) {
			result=true;
		}
		
		return result;
	}
	
	public String VerPT_Categorias (int id) {
		String card1="";
	
		
	
		clsConexion cn= new clsConexion();

		ResultSet rs=null;
	
		String sql="select nombre_producto,precio,dias_duracion,imagen,descripcion from destino where id_categoria="+id;
		card1+="<div class=\"row\"> ";
	
		String nombre_producto;
		double precio;
		String imagen;
		int dias;
		String detalle;
		int contador=0;
		
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {
			
				
				nombre_producto=rs.getString(1);
				precio=rs.getDouble(2);
				dias=rs.getInt(3);
				imagen=rs.getString(4);
				detalle=rs.getString(5);
				
				card1+="<div class=\"col-sm\">";
				card1+="<div class=\"card\" style=\"width: 20rem; height: 27rem\"> ";
					
				card1+="<img class=\"card-img-top\" height=\"120\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
				card1+="<div class=\"card-body\">";
				card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
				card1+="<p class=\"card-text\">"+detalle+"</p>";
				card1+="<a href=\"carrito.jsp\" class=\"btn btn-primary\">Comprar</a>";
				card1+="</div>";
				card1+="</div>";
				card1+="</div>";
				
				contador++;
				
				if(contador==3) {
					card1+="</div>";
					card1+="<br> <br>";
					card1+="<div class=\"row\">";
					contador=0;
				}
				
				
			}
			
		}catch(Exception e) {
			
		}
		
		
		card1+="</div>";

		//System.out.println(card1);
		
		return card1;

	}
	
	public String VerPT_Modificar() {
		String card1="";
		card1+="<div class=\"row\"> ";
		int contador=0;
		
		clsConexion cn= new clsConexion();

		ResultSet rs=null;

		String sql="select id_destino,nombre_producto,precio,Dias_duracion,cupo_limite,imagen from destino";
		
		
		int id;
		String nombre_producto;
		double precio;
		int dias_duracion;
		int cupo;
		String imagen;
		
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {
				
				
				id=rs.getInt(1);
				nombre_producto=rs.getString(2);
				precio=rs.getDouble(3);
				dias_duracion=rs.getInt(4);
				cupo=rs.getInt(5);
				imagen=rs.getString(6);
				
				
				card1+="<div class=\"col-sm\">";
				card1+="<div class=\"card\" style=\"width: 18rem; height: 25rem\"> ";
					
				card1+="<img class=\"card-img-top\" height=\"100\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
				card1+="<div class=\"card-body\">";
				card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
				card1+="<p class=\"card-text\"> Precio Actual: "+precio+"</p>";
				card1+="<p class=\"card-text\"> Duración P.Turistico Actual : "+dias_duracion+"</p>";
				card1+="<p class=\"card-text\"> Cupo Disponible : "+cupo+"</p>";
				card1+="<a href=\" Modificar.jsp?id="+id+"\" class=\"btn btn-outline-warning\">Modificar</a>";
				card1+="</div>";
				card1+="</div>";
				card1+="</div>";
				
				contador++;
				
				if(contador==3) {
					card1+="</div>";
					card1+="<br> <br>";
					card1+="<div class=\"row\">";
					contador=0;
				}
					
				
			}
			
		}catch(Exception e) {
			
		}
		card1+="</div>";

		//System.out.println(card1);
		
		return card1;
	}
	

	public String PT_Compra() {
		String card1="";
		
		card1+="<div class=\"row\"> ";
		int contador=0;
		
		clsConexion cn= new clsConexion();
	
		ResultSet rs=null;
		
		String nombre_producto;			//1 todos los productos 
		double precio;						//2 productos menores a 20 
		int cupo_limite;	
		int id_producto;//3 productos mayores a 20 
		int dias_duracion;
		String imagen;
		int categoria;
		String destino="";
		String boton="";
		
		String sql="select id_destino,nombre_producto,precio,cupo_limite,dias_duracion, imagen , id_categoria from Destino";
			
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {
					id_producto=rs.getInt(1);
					nombre_producto=rs.getString(2);
					precio=rs.getDouble(3);
					cupo_limite=rs.getInt(4);
					dias_duracion=rs.getInt(5);
					imagen=rs.getString(6);
					categoria=rs.getInt(7);
					
					if(categoria ==1 ) {
						destino="REGION COSTA";
					}else if(categoria==2) {
						destino="REGION SIERRA";
					}else if(categoria==3) {
						destino="REGION AMAZONICA";
					}
					
					if(cupo_limite==0) {
						boton=" class=\"btn btn-secondary btn-lg disabled\" tabindex=\"-1\" role=\"button\"  aria-disabled=\"true\"";
					}
					if(cupo_limite!=0) {
						boton="class=\"btn btn-primary \"  role=\"button\" ";
					}
					
					
					card1+="<div class=\"col-sm\">";
					card1+="<div class=\"card\" style=\"width: 18rem; height: 28rem;\"> ";
						
					card1+="<img class=\"card-img-top\" height=\"100\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
					card1+="<div class=\"card-body\">";
					card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
					card1+="<p class=\"card-text\"> Region: "+destino+"</p>";
					card1+="<p class=\"card-text\"> Precio Actual: "+precio+"$</p>";
					card1+="<p class=\"card-text\"> Duración P.Turistico Actual : "+dias_duracion+" dias </p>";
					card1+="<p class=\"card-text\"> Cupo Disponible : "+cupo_limite+" lugares</p>";
					card1+="<a href=\" carrito_reserva.jsp?id="+id_producto+"\" "+boton+">Adquirir Pasajes</a>";
					card1+="</div>";
					card1+="</div>";
					card1+="</div>";
					
					contador++;
					
					if(contador==3) {
						card1+="</div>";
						card1+="<br> <br>";
						card1+="<div class=\"row\">";
						contador=0;
					}
						
					
				}
			
		}catch(Exception e) {
			
		}
	
		card1+="</div>";
		
		//System.out.println(card1);
		
		return card1;	
		
	
		
	}
	
	
	public String Buscar_PT(int id) {
		String card1="";
		
		card1+="<div class=\"card\"> ";
	
		
		clsConexion cn= new clsConexion();
	
		ResultSet rs=null;
		
		String nombre_producto;	
		String detalle;
		double precio;						
		int id_paquete;						
		String imagen;
		int categoria;
		String destino="";
		int numero_bus;
		String fecha_salida,hora_salida;
		
		
		String sql="SELECT DESTINO.ID_DESTINO,DESTINO.Nombre_producto,DESTINO.precio,DESTINO.descripcion,DESTINO.Id_categoria,DESTINO.imagen,BUS.Num_bus,DestinoxBus.Fecha_Salida,DestinoxBus.Hora_Salida FROM DESTINO,BUS,DESTINOXBUS WHERE DESTINO.Id_destino=DestinoxBus.Id_destino AND BUS.NUM_BUS=DestinoxBus.Num_bus AND DESTINO.Id_destino="+id ; 
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {
					id_paquete=rs.getInt(1);
					nombre_producto=rs.getString(2);
					precio=rs.getDouble(3);
					detalle=rs.getString(4);
					categoria=rs.getInt(5);
					imagen=rs.getString(6);
					numero_bus=rs.getInt(7);
					fecha_salida=rs.getString(8);
					hora_salida=rs.getString(9);
					
					if(categoria ==1 ) {
						destino="REGION COSTA";
					}else if(categoria==2) {
						destino="REGION SIERRA";
					}else if(categoria==3) {
						destino="REGION AMAZONICA";
					}
				
					card1+="<h5 class=\"card-header\"> Region: "+ destino+"</h5>";
					card1+="<img class=\"card-img-top\"  width=\"20px\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
					
					card1+="<div class=\"card-body\">";
					card1+="<h5 class=\"card-title\"> "+nombre_producto+"</h5>";
					card1+="<p class=\"card-text\"> Detalle : "+detalle+"</p>";
					card1+="<p class=\"card-text\"> Precio Actual : "+precio+" $ x Persona </p>";
					card1+="<p class=\"card-text\"> Bus Asigando  : "+numero_bus+"  </p>";
					card1+="<p class=\"card-text\"> Fecha de Salida  : "+fecha_salida+"  </p>";
					card1+="<p class=\"card-text\"> Hora de Salida   : "+hora_salida +"  </p>";
					
					
					
					card1+="<form action=\"carrito_carga.jsp\">";
					card1+="<input type=\"hidden\" value=\""+id_paquete+"\"name=\"id_producto\">";
					card1+="<label class=\"my-1 mr-2\" for=\"inlineFormCustomSelectPref\">Numero de Asientos : </label>";
					card1+="<select class=\"custom-select my-1 mr-sm-2\" id=\"inlineFormCustomSelectPref\" name=\"asientos\"  required>";
					card1+="<option  >Seleccione un Valor </option>";
					
					card1+="<option value=\"1\" >1</option>";
					card1+="<option value=\"2\">2</option>";
					card1+="<option value=\"3\">3</option>";
					card1+="<option value=\"4\">4</option>";
					card1+="<option value=\"5\">5</option>";
					card1+="<option value=\"6\">6</option>";
					card1+="<option value=\"7\">7</option>";  
					card1+="</select>";
					card1+="<input type=\"hidden\" value=\""+nombre_producto+"\"name=\"nombre_pt\">";
					card1+="<input type=\"hidden\" value=\""+precio+"\"name=\"precio_pt\">";
					card1+="<input type=\"hidden\" value=\""+numero_bus+"\"name=\"num_bus\">";
					card1+="<button type=\"submit\"  class=\"btn btn-primary\"> AÑADIR AL CARRITO </button>";
					card1+="<a class=\"btn btn-outline-danger\" href=\"carrito.jsp\" role=\"button\">Cancelar</a>";
					card1+="</form>";
			
					
					
					card1+="</div>";
					card1+="</div>";				

					
				}
			
		}catch(Exception e) {
			
		}
	
		card1+="</div>";
		
		//System.out.println(card1);
		
		return card1;	
		
	
	}
	
	public void Ingresar_PT (int categoria, String nombre_producto, double precio,int cupo,int dias,String url_imagen,String detalle) {
		
		String sql="";
		clsConexion cn = new clsConexion();
		
		try {
			sql="INSERT INTO DESTINO VALUES ((SELECT MAX(ID_DESTINO)+1 FROM DESTINO) , '"+nombre_producto+"' ,"+precio+" ,"+cupo+","+dias+", '"+url_imagen+"' ,'"+detalle+"' ,"+categoria+" )";
			cn.Ejecutar(sql);

		}catch (Exception sqle) {
			System.out.println("Error al insertar"+sqle);
		}
		
		
	}

	public void Modificar_PT (int id,double precio,int dias,String detalle,String fecha,String hora,int duracion) {
		String sql="";
		String sql1="";
		clsConexion cn = new clsConexion();
		
		try {
			sql="UPDATE DESTINO SET PRECIO = "+precio+", DIAS_DURACION = "+dias+", DESCRIPCION = ' "+detalle+" ', CUPO_LIMITE="+duracion+" WHERE ID_DESTINO = "+id;
			sql1="UPDATE DESTINOXBUS SET FECHA_SALIDA='"+fecha+"', Hora_Salida='"+hora+"' WHERE ID_DESTINO="+id;
			cn.Ejecutar(sql);
			cn.Ejecutar(sql1);
			//System.out.println(sql1);
			//System.out.println(sql);

		} catch (Exception sqle) {
			System.out.println("Error al actualizar"+sqle);
		}
	}
	

	
	public String PT_Filtro_Compra(int id) {
		String card1="";
		
		card1+="<div class=\"row\"> ";
		int contador=0;
		
		clsConexion cn= new clsConexion();
	
		ResultSet rs=null;
		
		String nombre_producto;			//1 todos los productos 
		double precio;						//2 productos menores a 20 
		int cupo_limite;	
		int id_producto;//3 productos mayores a 20 
		int dias_duracion;
		String imagen;
		int categoria;
		String destino="";
		String boton=" ";
		
		if(id==1) {
		String sql="select id_destino,nombre_producto,precio,cupo_limite,dias_duracion, imagen , id_categoria from Destino where precio >50";
			
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {
					id_producto=rs.getInt(1);
					nombre_producto=rs.getString(2);
					precio=rs.getDouble(3);
					cupo_limite=rs.getInt(4);
					dias_duracion=rs.getInt(5);
					imagen=rs.getString(6);
					categoria=rs.getInt(7);
					
					if(categoria ==1 ) {
						destino="REGION COSTA";
					}else if(categoria==2) {
						destino="REGION SIERRA";
					}else if(categoria==3) {
						destino="REGION AMAZONICA";
					}
					
					if(cupo_limite==0) {
						boton=" class=\"btn btn-secondary btn-lg disabled\" tabindex=\"-1\" role=\"button\"  aria-disabled=\"true\"";
					}
					if(cupo_limite!=0) {
						boton="class=\"btn btn-primary \"  role=\"button\" ";
					}
					
					
					card1+="<div class=\"col-sm\">";
					card1+="<div class=\"card\" style=\"width: 18rem; height: 26rem\"> ";
						
					card1+="<img class=\"card-img-top\" height=\"100\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
					card1+="<div class=\"card-body\">";
					card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
					card1+="<p class=\"card-text\"> Region: "+destino+"</p>";
					card1+="<p class=\"card-text\"> Precio Actual: "+precio+"$</p>";
					card1+="<p class=\"card-text\"> Duración P.Turistico Actual : "+dias_duracion+" dias </p>";
					card1+="<p class=\"card-text\"> Cupo Disponible : "+cupo_limite+" lugares</p>";
					card1+="<a href=\" carrito_reserva.jsp?id="+id_producto+" \" "+boton+">Adquirir Pasajes</a>";
					card1+="</div>";
					card1+="</div>";
					card1+="</div>";
					
					contador++;
					
					if(contador==3) {
						card1+="</div>";
						card1+="<br> <br>";
						card1+="<div class=\"row\">";
						contador=0;
					}
						
					
				}
			
		}catch(Exception e) {
			
		}
		}
		
		if(id==2) {
		String sql="select id_destino,nombre_producto,precio,cupo_limite,dias_duracion, imagen , id_categoria from Destino where precio <50";
			
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {
					id_producto=rs.getInt(1);
					nombre_producto=rs.getString(2);
					precio=rs.getDouble(3);
					cupo_limite=rs.getInt(4);
					dias_duracion=rs.getInt(5);
					imagen=rs.getString(6);
					categoria=rs.getInt(7);
					
					if(categoria ==1 ) {
						destino="REGION COSTA";
					}else if(categoria==2) {
						destino="REGION SIERRA";
					}else if(categoria==3) {
						destino="REGION AMAZONICA";
					}
					
					
					if(cupo_limite==0) {
						boton=" class=\"btn btn-secondary btn-lg disabled\" tabindex=\"-1\" role=\"button\"  aria-disabled=\"true\"";
					}
					if(cupo_limite!=0) {
						boton="class=\"btn btn-primary \"  role=\"button\" ";
					}
					
					card1+="<div class=\"col-sm\">";
					card1+="<div class=\"card\" style=\"width: 18rem; height: 26rem\"> ";
						
					card1+="<img class=\"card-img-top\" height=\"100\" src=\"imagenes/"+imagen+"\" alt=\"Card image cap\">";
					card1+="<div class=\"card-body\">";
					card1+="<h5 class=\"card-title\">"+nombre_producto+"</h5>";
					card1+="<p class=\"card-text\"> Region: "+destino+"</p>";
					card1+="<p class=\"card-text\"> Precio Actual: "+precio+"$</p>";
					card1+="<p class=\"card-text\"> Duración P.Turistico Actual : "+dias_duracion+" dias </p>";
					card1+="<p class=\"card-text\"> Cupo Disponible : "+cupo_limite+" lugares</p>";
					card1+="<a href=\" carrito_reserva.jsp?id="+id_producto+"\""+boton+">Adquirir Pasajes</a>";
					card1+="</div>";
					card1+="</div>";
					card1+="</div>";
					
					contador++;
					
					if(contador==3) {
						card1+="</div>";
						card1+="<br> <br>";
						card1+="<div class=\"row\">";
						contador=0;
					}
						
					
				}
			
		}catch(Exception e) {
			
		}
		}
		card1+="</div>";
		
		//System.out.println(card1);
		
		return card1;	
			
	}
	
	public int Id_paquete() {
		
		clsConexion cn= new clsConexion();
	
		ResultSet rs=null;
		int ultimo_destino=0;

	
		String sql="SELECT TOP 1 * FROM DESTINO ORDER BY Id_destino DESC"; 
		
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {

					ultimo_destino=rs.getInt(1) ;

				}
			
		}catch(Exception e) {
			
		}
	
		return ultimo_destino;	
		
	}
	
public String Id_bus() {
		
		clsConexion cn= new clsConexion();
	
		ResultSet rs=null;
		String barra="";
		int id;
		barra+="<select class=\"form-control\"  id=\"exampleFormControlSelect1\" name=\"bus\" required>";
	
		String sql="select bus.Num_bus from bus" ; 
			try {
				rs=cn.Consulta(sql);
				
				while(rs.next()) {

					barra+=" <option value="+rs.getInt(1)+">"+rs.getString(1)+"</option>" ;

				}
			
		}catch(Exception e) {
			
		}
	
	
	
		barra+="</select>";
		return barra;	
		
	
	}

public void Asignar_PT_bus (int id_destino,int num_bus,String fecha,String hora) {
	String sql="";
	clsConexion cn = new clsConexion();
	
	try {
		sql="insert into destinoxbus values("+id_destino+","+num_bus+","+"'"+fecha+"','"+hora+"')";
		cn.Ejecutar(sql);
		//System.out.println(sql);

	} catch (Exception sqle) {
		System.out.println("Error al actualizar"+sqle);
	}
}

public String Nombre_PT(int id) {
	
	clsConexion cn= new clsConexion();

	ResultSet rs=null;
	String PT="";

	
	String sql="select destino.Nombre_producto from destino where Id_destino="+id ; 
		try {
			rs=cn.Consulta(sql);
			
			while(rs.next()) {

				PT=rs.getString(1);

			}
		
	}catch(Exception e) {
		
	}

	return PT;	
	

}

public String Precio_PT(int id) {
	
	clsConexion cn= new clsConexion();

	ResultSet rs=null;
	String PT="";

	
	String sql="select destino.precio from destino where Id_destino="+id ; 
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
