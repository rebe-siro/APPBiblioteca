/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
/**
 *
 * @author Mary
 */
public class SanctionsConsults {

    public boolean searchSanctions(Sanctions sanc) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = Conexion.getConexion();
        
        String sql = "SELECT * FROM sancionados WHERE code = ? ";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, sanc.getCode());
            rs = ps.executeQuery();

            if (rs.next()) {
                sanc.setCode(rs.getInt("code"));
                sanc.setCode_user(rs.getInt("code_user"));
                sanc.setCode_tSanction(rs.getInt("code_tsanction"));
                sanc.setStar_Date(rs.getDate("star_date"));
                sanc.setEnd_Date(rs.getDate("end_date"));

                return true;
            }
            return false;
            
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
    
    public boolean applySanction(Sanctions sanc) {
        PreparedStatement ps = null;
        Connection con = Conexion.getConexion();

        String sql = "INSERT INTO sancionados (code_tsanction, code_user, star_date, end_date, status) VALUES(?,?,?,?,?)";

        try {
            ps = con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, sanc.getCode_tSanction());
            ps.setInt(2, sanc.getCode_user());
            ps.setDate(3, (Date) sanc.getStar_Date());
            ps.setDate(4, (Date) sanc.getStar_Date());
            ps.setBoolean(5, sanc.getStatus());
            
            ps.execute();
            return true;
            
        } catch (SQLException e) {
            System.err.println(e);
            return false;
            
        } finally {
            try {                
                con.clearWarnings();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
    
    public ResultSet list() {
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = Conexion.getConexion();
        String sql = "SELECT code_user as Usuario , code_tsanction as Sancion, star_date as Inicio, end_date as Fin, status as Estatus "
                    + " FROM sancionados order by code asc";

        try {
            ps = con.prepareStatement(sql);            
            rs = ps.executeQuery();

            return rs;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            try {                
                con.clearWarnings();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
    
        public ResultSet typeSanction() {
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = Conexion.getConexion();
        String sql = "SELECT * FROM tipo_sancion";

        try {
            ps = con.prepareStatement(sql);            
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            try {
                con.clearWarnings();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }
        
        public boolean saveSanction(Sanctions sanc) {
        PreparedStatement ps = null;
        Connection con = Conexion.getConexion();

        String sql = "UPDATE sancionados SET code_tsancion=?, code_user=?, star_date=?,end_date=?, status=? WHERE code=? ";

        try {
            ps = con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, sanc.getCode_tSanction());
            ps.setInt(2, sanc.getCode_user());
            ps.setDate(3, (Date) sanc.getStar_Date());
            ps.setDate(4, (Date) sanc.getStar_Date());
            ps.setBoolean(5, sanc.getStatus());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        } finally {
            try {
                con.clearWarnings();
            } catch (SQLException e) {
                System.err.println(e);
            }
        }
    }


}
