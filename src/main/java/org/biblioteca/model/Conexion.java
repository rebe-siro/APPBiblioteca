/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
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
 
        String dbname = "APPBiblioteca";
        String url = "jdbc:postgresql://localhost:5432/";
        String user = "postgres";
        String password = "051103";

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

    // Método para obtener la conexión
    public static Connection getConexion() {
        if (conn == null || !isConnectionValid()) {
            new Conexion();
        }
        return conn;
    }

    // Método para verificar si la conexión es válida
    private static boolean isConnectionValid() {
        try {
            return conn != null && !conn.isClosed();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
