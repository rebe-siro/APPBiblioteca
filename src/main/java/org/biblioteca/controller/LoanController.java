/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;
import javax.swing.JOptionPane;
import org.biblioteca.model.ConsultasRecurso;
import org.biblioteca.model.Loan;
import org.biblioteca.model.Resources;
import org.biblioteca.view.LoanView;

/**
 *
 * @author JESUS
 */
public class LoanController {
    private final Resources model;
    private final Loan modelLoan;
    private final ConsultasRecurso querys;     
    private final LoanView view;
    private LocalDate startDate = LocalDate.now();
    private LocalDate endDate = startDate.plusDays(7);

    public LoanController(Resources model, Loan modelLoan, ConsultasRecurso querys, LoanView view) {
        this.model = model;
        this.modelLoan = modelLoan;
        this.querys = querys;
        this.view = view;
        this.view.ButtomLoan.addActionListener((ActionListener) this);
        start();
        //this.view.ButtomLoan.addActionListener(this);
    }

    public void start() {
        view.setTitle("Prestamos...");
        view.setLocationRelativeTo(null);
        showTableResources();
        view.jTextFieldStarDate.setText(startDate.toString());
        view.jTextFieldEndDate.setText(endDate.toString());
    }

    public void showTableResources(){
        try {                                
            view.jTableResources.setModel(DataTable.resultSetToTableModel(querys.listAvailables()));
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al refrescar");
            ex.printStackTrace();
        }
    }

    @Override
    public void actionPerformed(ActionEvent e) {

        if (e.getSource() == view.ButtomLoan) {
            try {
                    modelLoan.setUserLoan(view.jTextFieldUserName.getText());
                    modelLoan.setStar_Date(Date.from(startDate.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                    modelLoan.setEnd_Date(Date.from(endDate.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                    modelLoan.setStatus(true);
                    modelLoan.setUserRegister("TEST");                
                    if (querys.registerLoan(modelLoan)) {
                        JOptionPane.showMessageDialog(null, "Prestamo Registrado");                        
                        showTableResources();
                    } else {
                        JOptionPane.showMessageDialog(null, "Error al Registrar Prestamo");
                    }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Verifique los datos del prestamos");
            }
        }
    }
}
