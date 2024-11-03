/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import org.biblioteca.model.UserConsults;
import org.biblioteca.model.User;
import org.biblioteca.view.RegisterUser;

/**
 *
 * @author HP
 */

public class UserController implements ActionListener {
    private final User model;
    private final UserConsults querys; 
    private final RegisterUser view;

    public UserController(User model, UserConsults querys, RegisterUser view){
        this.model = model;
        this.querys = querys;
        this.view = view;
        this.view.getButtonCancel().addActionListener(this);
        this.view.getTextFieldIdentification().addActionListener(this);
        //this.view..addActionListener(this);
        this.view.getButtonRegisterUser().addActionListener(this);
        this.view.getComboBoxUserType().addActionListener(this);
        this.view.getComboBoxCareer().addActionListener(this);     
        start();
    }

    public void start() {
        view.setTitle("Registrar Usuario");
        view.setLocationRelativeTo(null);
        fillComboType();

    }

    public void actionPerformed(ActionEvent e) {

        if (e.getSource() == view.getButtonRegisterUser()) {
            
                    model.setName(view.getTextFieldName().getText());
                    model.setLastName(view.getTextFieldLastName().getText());                                 
                    model.setIdentification(view.getTextFieldIdentification().getText());
                    model.setCareer(view.getComboBoxCareer().getSelectedIndex());
                    model.setType(view.getComboBoxUserType().getSelectedIndex());
                    
            
                    {
                        if (querys.register(model)) {
                            JOptionPane.showMessageDialog(null, "Usuario Registrado");
                            clean();

                        } else {
                            JOptionPane.showMessageDialog(null, "Error al Registrar, verifique que este Usuario no esté registrado");
                        }
                    }
            
        }
}

    private void clean() {
         view.getTextFieldName().setText("");
        view.getTextFieldLastName().setText("");
        view.getTextFieldIdentification().setText("");
        view.getComboBoxCareer().setSelectedIndex(0);
        view.getComboBoxUserType().setSelectedIndex(0);

    }

    
    public void fillComboType(){
        try {                                       
                ResultSet rs = querys.listUserType();
                view.getComboBoxUserType().addItem("Seleccione");                 
                while (rs.next()) {
                    view.getComboBoxUserType().addItem(rs.getString("Tipo de Usuario"));                    
                }                                  
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al llenar los tipos de usuario");
            ex.printStackTrace();
        }
    }
    
    public void fillComboCareer(){
        try {                                       
                ResultSet rs = querys.listCareer();
                view.getComboBoxCareer().addItem("Seleccione");                 
                while (rs.next()) {
                    view.getComboBoxCareer().addItem(rs.getString("Carrera"));                    
                }                                  
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al llenar la carrera");
            ex.printStackTrace();
        }
    }
    
}
