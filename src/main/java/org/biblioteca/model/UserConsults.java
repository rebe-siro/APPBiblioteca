/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserConsults {

    public boolean register(User u) {
        String sql = "INSERT INTO Usuario (code, name, lastname, identification, career, typeuser, status, password, username) VALUES(?,?,?,?,?,?,true,?,?)";
        
        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
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
        }
    }
    
    public ResultSet listUserType() {
        String sql = "SELECT * FROM tipo_usuario"; // Especifica la consulta SQL apropiada
        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            return ps.executeQuery();
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        }
    }
    
    public ResultSet listCareer() {
        String sql = "SELECT * FROM carrera";
        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            return ps.executeQuery();
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        }
    }
    
    public boolean validateLogin(String username, String password) {
        String sql = "SELECT * FROM usuario WHERE username = ? AND password = ?";
        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        }
    }
}
