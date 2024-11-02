/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.biblioteca.model.Conexion;

/**
 *
 * @author Luzzio
 */


public class ConexionController {
    private Conexion conexionDB;

    public ConexionController() {
        conexionDB = new Conexion();
    }

    public List<String> obtenerDatos() {
        List<String> lista = new ArrayList<>();
        String sql = "SELECT description FROM recurso where status = true" ; 

        try (Connection con = conexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                lista.add(rs.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}