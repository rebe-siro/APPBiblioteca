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
import org.biblioteca.model.Author;
import org.biblioteca.model.ConsultasRecurso;
import org.biblioteca.view.RegisterAuthor;


/**
 *
 * @author Rebe
 */
public class AuthorController implements ActionListener {
    private final Author model;
    private final ConsultasRecurso querys; 
    private final RegisterAuthor view;
    
    public AuthorController(Author model, ConsultasRecurso querys, RegisterAuthor view){
        this.model = model;
        this.querys = querys;
        this.view = view;
        this.view.jButtonNew.addActionListener(this);
        this.view.jButtonSave.addActionListener(this);
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
                model.setCode(Integer.parseInt(view.jTextFieldCode.getText()));
                model.setName(view.jTextFieldName.getText());
                JOptionPane.showMessageDialog(null, "Recurso Guardado");   
            }  catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Error al Registrar el Autor");
            }        

        }
    }
    
}