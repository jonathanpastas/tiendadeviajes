package com.conexion;

import java.sql.*;

public class clsConexion {

	private Statement St;
	private String driver;
	private String user;
	private String pwd;
	private String cadena;
	private Connection con;

	public clsConexion() {
		super();
		this.driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		this.user = "sa";
		this.pwd = "mariadomenica30";
		this.cadena = "jdbc:sqlserver://localhost:1433;databaseName=TURISMO";
		this.con = this.crearConexion();
	}

	public Connection crearConexion() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		} catch (ClassNotFoundException e) {
			System.out.println("error...." + e);
		}
		try {
			Class.forName(getDriver()).newInstance();
			Connection con = DriverManager.getConnection(getCadena(), getUser(), getPwd());
			return con;
		} catch (Exception ee) {
			System.out.println("Error: " + ee.getMessage());
			return null;
		}
	}

	public ResultSet Consulta(String sql) {
		String error = "";
		ResultSet reg = null;

		try {
			St = getConexion().createStatement();
			reg = St.executeQuery(sql);

		} catch (Exception ee) {
			error = ee.getMessage();
		}
		return (reg);
	}

	public String Ejecutar(String sql) {
		String error = "";
		try {
			St = getConexion().createStatement();
			St.execute(sql);
			error = "Tabla Actualizada";
		} catch (Exception ex) {
			error = ex.getMessage();
		}
		return (error);
	}


	public String getDriver() {
		return driver;
	}

	public String getUser() {
		return user;
	}

	public String getPwd() {
		return pwd;
	}

	public String getCadena() {
		return cadena;
	}

	public Connection getConexion() {
		return con;
	}



}
