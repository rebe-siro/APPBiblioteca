/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.sql.ResultSet;  
import java.util.HashSet;
import java.util.Set;
import javax.swing.JOptionPane;
import org.biblioteca.model.ConsultasRecurso;
import org.biblioteca.model.Author;
import org.biblioteca.model.AuthorResource;
import org.biblioteca.model.Resources;
import org.biblioteca.view.RegisterAuthor;


/**
 *
 * @author Rebe
 */
public class AuthorController implements ActionListener {
    private final Resources model;
    private final Author modelAuthor;
    private final AuthorResource modelAuthorResource;
    private final ConsultasRecurso querys; 
    private final RegisterAuthor view;
    
    public AuthorController(Resources model, Author modelAuthor, AuthorResource modelAuthorResource, ConsultasRecurso querys, RegisterAuthor view){
        this.model = model;
        this.modelAuthor = modelAuthor;
        this.modelAuthorResource = modelAuthorResource;
        this.querys = querys;
        this.view = view;
        //this.view.jButtonNew.addActionListener(this);
        this.view.jButtonSave.addActionListener((ActionListener) this);
        start();            
    }
    
    public void start() {
        view.setTitle("Autores");
        view.setLocationRelativeTo(null);
        
    }
    
    
    @Override
    public void actionPerformed(ActionEvent e) {
        
            if (e.getSource() == view.jButtonSave) {
                try {
                    modelAuthor.setName(view.jTextFieldName.getText());
                    Author authorReg = querys.registerAuthor(modelAuthor);
                    JOptionPane.showMessageDialog(null, "Autor Registrado con código: " + authorReg.getCode());
                    view.jTextFieldName.setText(""); 
                    //if ((Integer.parseInt(view.jTextFieldCode.getText())) > 0 ) {
                      //  modelAuthor.setCode((Integer.parseInt(view.jTextFieldCode.getText())));                        
                        //save
                     //   JOptionPane.showMessageDialog(null, "Autor Actualizado"); 
                        //view.jTextFieldCode.setText(String.valueOf(authorReg.getCode()));                        
                //  } else {
                      //  Author authorReg = querys.registerAuthor(modelAuthor);
                       // if (authorReg.getCode() > 0) {
                        //    JOptionPane.showMessageDialog(null, "Autor Registrado"); 
                       //     view.jTextFieldCode.setText(String.valueOf(authorReg.getCode()));
                       // }                    
                    } catch (NumberFormatException ex) {
                        JOptionPane.showMessageDialog(null, "Error al Registrar el Autor: " + ex.getMessage());
                        ex.printStackTrace(); //
                }
            }
    }
    
}