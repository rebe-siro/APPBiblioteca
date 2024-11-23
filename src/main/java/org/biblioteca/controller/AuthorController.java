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
        this.view.jButtonNew.addActionListener(this);
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
                //model.setCode(Integer.parseInt(view.jTextFieldCode.getText()));
                modelAuthor.setName(view.jTextFieldName.getText());
                
                Author authorReg = querys.registerAuthor(modelAuthor);
                querys.registerAuthorResource(modelAuthorResource);
                JOptionPane.showMessageDialog(null, "Recurso Guardado");   
            }  catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Error al Registrar el Autor");
            }        

        }
    }
    
}