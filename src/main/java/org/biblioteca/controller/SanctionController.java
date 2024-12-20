/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;

import java.awt.event.ActionEvent;
import org.biblioteca.model.Sanctions;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import org.biblioteca.view.SanctionView;
import org.biblioteca.model.SanctionsConsults;

/**
 *
 * @author Mary
 */
public final class SanctionController implements ActionListener{
    
    private final Sanctions model;
    private final SanctionsConsults querys; 
    private final SanctionView view;
    
    public SanctionController(Sanctions model, SanctionsConsults querys, SanctionView view){
        this.model = model;
        this.querys = querys;
        this.view = view;
        this.view.jButtonSearchSanction.addActionListener(this);
        refreshTable();

        }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == view.jButtonSearchSanction) {
            model.setCode(Integer.parseInt(view.TextFileIDEstudents.getText()));

            if (querys.searchSanctions(model)) {
                JOptionPane.showMessageDialog(null, "Usuario Sancionado Encontrado");
                view.TextFileIDEstudents.setText(String.valueOf(model.getCode()));

            } else {
                JOptionPane.showMessageDialog(null, "El usuario no posee ninguna sancion.");
            }
        }
    }
    
    public void refreshTable(){                      
            view.jTableSanctions.setModel(DataTable.resultSetToTableModel(querys.list()));  

    }
}
    

