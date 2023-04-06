package com.sesion;
import java.sql.ResultSet;

import com.conexion.*;

public class clsMenu {
	
	public String  Ver_Menu(String id_perfil) {
		
		String links=" ";
	
		
		
		clsConexion cn = new clsConexion();
		ResultSet rs= null;
		String sql ="select descripcion_pagina,url_pagina from perfilxpagina,pagina where perfilxpagina.id_pagina=pagina.id_pagina and id_perfil = "+id_perfil+" ";
		
		try {
			
			rs =cn.Consulta(sql);
			while(rs.next()){
				links+="<li class=\"nav-item active\">";
				links+="<a class=\"nav-link\" href=\""+rs.getString(2)+"\"> "+rs.getString(1) +"</a>";
				
			
				
			}
			
		}catch(Exception e ) {
			
		}
		
		links += "</li>";
		//System.out.println(links);
		return links;
	}
	
}


