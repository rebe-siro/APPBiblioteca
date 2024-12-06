/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class UserConsults extends Conexion {
    
    public boolean register(User u) {
        PreparedStatement ps = null;
        Connection con = getConexion();

        String sql = "INSERT INTO Usuario (code, name, lastname, identification, career, typeuser, status, password, username) VALUES(?,?,?,?,?,?,true,?,?)";
        
        
        try {
            ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, u.getCode());
            ps.setString(2, u.getName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getIdentification());
            ps.setString(5, u.getCareer());
            ps.setInt(6, u.getType());
            ps.setString(7, u.getPassword());
            ps.setString(8, u.getUsername());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
    
    public ResultSet listUserType() {
         PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = getConexion();
        String sql = "";
        
        try {

            ps = con.prepareStatement(sql);            
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
    
    public ResultSet listCareer() {
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = getConexion();
        String sql = "SELECT * FROM carrera";

        try {
            ps = con.prepareStatement(sql);            
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
    
    public boolean validateLogin(String username, String password){
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = getConexion();
        
        String sql = "SELECT * FROM usuario WHERE username = ? AND password = ?";
        
       try{
       
           ps = con.prepareStatement(sql);
           ps.setString(1, username);
           ps.setString(2, password);
           rs = ps.executeQuery();
           
           if (rs.next()){
               return true;
           } else{ 
               return false;
           } 
           
       }
           catch (SQLException e) {
                   
                   System.err.println(e);
                   return false;
           } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                con.clearWarnings();
            } catch(SQLException e) {
                
                System.err.println(e);
            }
                   
                   }
    }
}
