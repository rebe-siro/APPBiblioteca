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

        String sql = "INSERT INTO Usuario (code, username, lastname, identification, career, usertype, status) VALUES(?,?,?,?,?,?,true)";
        
        
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, u.getCode());
            ps.setString(2, u.getName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getIdentification());
            ps.setInt(5, u.getCareer());
            ps.setInt(6, u.getType());
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
        String sql = "SELECT * FROM TipoUsuario";

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
        String sql = "SELECT * FROM Carrera";

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
}
