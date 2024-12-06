/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;

import org.biblioteca.model.Sanctions;
import org.biblioteca.model.SanctionsConsults;
import org.biblioteca.view.ApplySanctionsView;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZoneId;
import javax.swing.JOptionPane;

/**
 *
 * @author Mary
 */ 


public class ApplySanctionController implements ActionListener{
    
    private final Sanctions model;
    private final SanctionsConsults querys; 
    private final ApplySanctionsView view; 
    private final LocalDate star_Date = LocalDate.now();
    private final LocalDate end_Date = star_Date.plusDays(7);

    public ApplySanctionController(Sanctions model, SanctionsConsults querys, ApplySanctionsView view){
        this.model = model;
        this.querys = querys;
        this.view = view;
        this.view.jTextFieldStartDate.setText(star_Date.toString());
        this.view.jTextFieldEndDate.setText(end_Date.toString());
        fillComboTypeSanctions();  
        this.view.jButtonSaveSanctionsA.addActionListener(this); 
    }
    
    

    @Override
    
    
       
    public void actionPerformed(ActionEvent e) {
          
        
        if (e.getSource() == view.jButtonSaveSanctionsA) {
            
            try {
                    model.setCode_tSanction(view.jComboBoxTypeSanction.getSelectedIndex());
                    model.setCode_user(Integer.parseInt(view.jTextFieldUser.getText()));
                    model.setStar_Date(Date.from(star_Date.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                    model.setEnd_Date(Date.from(end_Date.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                    model.getStatus();
                    
                    if (model.getCode_tSanction()== 0) {
                        JOptionPane.showMessageDialog(null, "Verifique el tipo de Sancion");
                        return;
                    }
if (querys.searchSanctions(model)) { 
    if (querys.saveSanction(model)) 
    { JOptionPane.showMessageDialog(null, "Sanción Aplicada"); } 
    else { JOptionPane.showMessageDialog(null, "Error al Guardar"); } } 
    else { JOptionPane.showMessageDialog(null, "Sanción no encontrada"); } } 
    catch (NumberFormatException ex) { JOptionPane.showMessageDialog(null, "Hubo un error - Usuario no encontrado"); 
    view.jTextFieldUser.setText("");
            }
      
    }
    }
    public void fillComboTypeSanctions() 
    { try { 
        ResultSet rs = querys.typeSanction(); 
        view.jComboBoxTypeSanction.addItem("Seleccione"); 
        while (rs.next()) { view.jComboBoxTypeSanction.addItem(rs.getString("namesanction"));
        } } catch (SQLException ex) { 
            JOptionPane.showMessageDialog(null, "Se ha producido un error al llenar el tipo de sanción"); 
            ex.printStackTrace(); } }

    }