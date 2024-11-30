/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Rebe
 */
public class Conexion {
    
    private static Connection conn = null;
    private String dbname;
    private String url;
    private String user;
    private String password;
	
 
    // Constructor
    private Conexion(){
 
        String dbname = "BDLaboratorio";
        String url = "jdbc:postgresql://localhost:5432/";
        String user = "postgres";
        String password = "sistema";

        try{
                 //Class.forName(driver);
                 conn = DriverManager.getConnection(url + dbname, user, password);
                if(conn!=null)
                {
                    System.out.println("Connection established successfully !");
                }
                else
                {
                    System.out.println("Connection failed !!");
                }			 
        }
        catch(Exception e){
            e.printStackTrace();
        }
    } // Fin constructor	

    public static Connection getConexion()
    {
		 if (conn == null){
			 new Conexion();
		 }
		 return conn;		
		 
    }    
}