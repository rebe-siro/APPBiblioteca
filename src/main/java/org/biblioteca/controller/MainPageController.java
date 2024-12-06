/* * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license *
Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template */

package org.biblioteca.controller; 
import org.biblioteca.view.BasicMainPage; 
import java.awt.event.ActionEvent; 
import java.awt.event.ActionListener; 
import org.biblioteca.view.LoanView; 
import org.biblioteca.view.ResourcesManager; 

public class MainPageController {
    private BasicMainPage mp; 
    private ResourcesManager rm; 
    private LoanView lv; 
    
public MainPageController(BasicMainPage mp, ResourcesManager rm, LoanView lv) { 
    this.mp = mp; 
    this.rm = rm; 
    this.lv = lv; 
    
    this.mp.getjButtonBiblioteca().addActionListener(new ActionListener() {
        @Override 
        public void actionPerformed(ActionEvent e) { 
            ResourcesManager rm = new ResourcesManager(); 
            rm.setVisible(true);
            rm.setLocationRelativeTo(null); 
        } 
    }); 
    
    this.mp.getjButtonPrestamo().addActionListener(new ActionListener() {
        @Override 
        public void actionPerformed(ActionEvent e) { 
            LoanView lv = new LoanView();
            lv.setVisible(true);
            lv.setLocationRelativeTo(null);
        } 
    });

} } /** * * @author JESUS */