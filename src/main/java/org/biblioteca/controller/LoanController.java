/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;

import javax.swing.JOptionPane;
import org.biblioteca.model.Conexion;
import org.biblioteca.model.ConsultasRecurso;
import org.biblioteca.model.Loan;
import org.biblioteca.model.Resources;
import org.biblioteca.view.LoanView;
import org.biblioteca.view.ResourcesManager;

/**
 *
 * @author JESUS
 */
public class LoanController {
    private final Resources model;
    private final Loan modelLoan;
    private final ConsultasRecurso querys;     
    private final LoanView view;

    public LoanController(Resources model, Loan modelLoan, ConsultasRecurso querys, LoanView view) {
        this.model = model;
        this.modelLoan = modelLoan;
        this.querys = querys;
        this.view = view;
        start();
        //this.view.ButtomLoan.addActionListener(this);
    }

    public void start() {
        view.setTitle("Prestamos...");
        view.setLocationRelativeTo(null);
        showTableResources();
    }

    public void showTableResources(){
        try {                                
            view.jTableResources.setModel(DataTable.resultSetToTableModel(querys.listAvailables()));
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al refrescar");
            ex.printStackTrace();
        }
    }

}
