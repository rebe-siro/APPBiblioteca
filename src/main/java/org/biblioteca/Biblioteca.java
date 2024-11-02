//Esta es la clase main

package org.biblioteca;

import org.biblioteca.controller.LoginScreenController;
import org.biblioteca.view.LoginScreen;
import org.biblioteca.model.Conexion;

/**
 *
 * @author Luzzio
 */
public class Biblioteca {

    public static void main(String[] args) { 
        
        Conexion cn = new Conexion();
        cn.getConexion();
        
        LoginScreen ls = new LoginScreen();
        ls.setVisible(true);
        ls.setLocationRelativeTo(null);
        
        LoginScreenController lsc = new LoginScreenController(ls);
    }
}