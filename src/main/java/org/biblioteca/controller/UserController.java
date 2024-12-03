/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
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
        //this.view.cancel.addActionListener(this);
        //this.view..addActionListener(this);
        this.view.lastName.addActionListener(this);
        this.view.name.addActionListener(this);
        //this.view.addActionListener(this);
        this.view.userRegister.addActionListener(this);
        this.view.userType.addActionListener(this);
        this.view.career.addActionListener(this);     
        start();
    }

    public void start() {
        view.setTitle("Registrar Usuario");
        view.setLocationRelativeTo(null);
        fillComboType();
        //fillComboCareer();

    }

        @Override
    public void actionPerformed(ActionEvent e) {

        if (e.getSource() == view.userRegister) {
                    
                    if (e.getSource() == view.userRegister) { 
                        
                        String identification = view.identification.getText();
            
                        String cleanIdentification = identification.replaceAll("[^\\d]", ""); 
                    
                        int code; 
                        try { 
                            code = Integer.parseInt(cleanIdentification); 
                        } catch (NumberFormatException ex) { 
                            ex.printStackTrace(); JOptionPane.showMessageDialog(null, "La identificación debe contener solo números."); 
                            return; // Salir del método si la identificación no es un número válido 
                        }
                    
                        model.setCode(code);
                        model.setName(view.name.getText());
                        model.setLastName(view.lastName.getText());                                 
                        model.setIdentification(view.identification.getText());
                        model.setCareer(view.career.getText());
                        //model.setCareer(view.career.getSelectedIndex());
                        model.setType(view.userType.getSelectedIndex());
                    
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
}

    private void clean() {
         view.name.setText("");
        view.lastName.setText("");
        view.identification.setText("");
        view.career.setText("");
       // view.career.setSelectedIndex(0);
        view.userType.setSelectedIndex(0);

    }

    
    public void fillComboType(){
        try {                                       
                ResultSet rs = querys.listUserType();
                view.userType.addItem("Seleccione");                 
                while (rs.next()) {
                    view.userType.addItem(rs.getString("Tipo de Usuario"));                    
                }                                  
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al llenar los tipos de usuario");
            ex.printStackTrace();
        }
    }
    
    /*public void fillComboCareer(){
        try {                                       
                ResultSet rs = querys.listCareer();
                view.career.addItem("Seleccione");                 
                while (rs.next()) {
                    view.career.addItem(rs.getString("Carrera"));                    
                }                                  
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Se ha producido un error al llenar la carrera");
            ex.printStackTrace();
        }
    }*/
    
}
