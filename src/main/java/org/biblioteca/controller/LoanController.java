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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.swing.JOptionPane;
import org.biblioteca.model.ConsultasRecurso;
import org.biblioteca.model.Loan;
import org.biblioteca.model.LoanResources;
import org.biblioteca.model.Resources;
import org.biblioteca.view.LoanView;

/**
 *
 * @author JESUS
 */
public class LoanController implements ActionListener{
    private final Resources model;
    private final Loan modelLoan;
    private final LoanResources modelLoanReso;
    private final ConsultasRecurso querys;     
    private final LoanView view;
    private LocalDate startDate = LocalDate.now();
    private LocalDate endDate = startDate.plusDays(7);

    public LoanController(Resources model, Loan modelLoan, LoanResources modelLoanReso, ConsultasRecurso querys, LoanView view) {
        this.model = model;
        this.modelLoan = modelLoan;
        this.modelLoanReso = modelLoanReso;
        this.querys = querys;
        this.view = view;
        this.view.ButtonLoan.addActionListener((ActionListener) this);
        //this.view.ButtonLoan.setEnabled(false);
        start();
        //this.view.ButtomLoan.addActionListener(this);
    }

    public void start() {
        view.setTitle("Prestamos");
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

        if (e.getSource() == view.ButtonLoan) {
            try {
                modelLoan.setUserLoan(view.jTextFieldUserName.getText());
                modelLoan.setStar_Date(Date.from(startDate.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                modelLoan.setEnd_Date(Date.from(endDate.atStartOfDay(ZoneId.systemDefault()).toInstant()));
                modelLoan.setStatus(true);
                modelLoan.setUserRegister(view.jTextFieldUserRegister.getText());     
           
                Loan loanReg = querys.registerLoan(modelLoan);
                if (loanReg.getCode() > 0) {
                    //registrar detalle
                    int[] rows = view.jTableResources.getSelectedRows();
                    int selectedRow = 0;
                    for (int i=0; i < rows.length; i++){
                        selectedRow = rows[i];
                        if (selectedRow != -1) {
                            modelLoanReso.setCode(loanReg.getCode());
                            modelLoanReso.setCodeResource((int) view.jTableResources.getValueAt(selectedRow, 0));
                            modelLoanReso.setDescription((String) view.jTableResources.getValueAt(selectedRow, 1));
                            querys.registerLoanResources(modelLoanReso);
                        }                        
                    } 
                    JOptionPane.showMessageDialog(null, "Prestamo Registrado");                        
                    showTableResources();
                    clean();                    
                    
                } else {
                    JOptionPane.showMessageDialog(null, "Error al Registrar Prestamo");
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Verifique los datos del prestamos");
            }
        }
    }

    public void configurarCheckBoxYBoton() { 
        view.getNoteCheckBox().addActionListener(e -> {
        if (view.getNoteCheckBox().isSelected()) { 
            view.getButtonLoan().setEnabled(true);
        } else {
           view.getButtonLoan().setEnabled(false);
        }
        });
    }


    public void clean(){
        view.jTextFieldUserName.setText("");
        view.jTextFieldUserRegister.setText("");
        view.jComboBoxUserType.setSelectedIndex(0);

    }
}