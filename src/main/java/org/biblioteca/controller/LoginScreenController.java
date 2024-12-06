//Este es el controlador de la vista
package org.biblioteca.controller;

import org.biblioteca.view.LoginScreen;
import org.biblioteca.view.MainPage;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import org.biblioteca.model.UserConsults;

public class LoginScreenController {
    private final LoginScreen ls;
    private final UserConsults uc;
    
    
    public LoginScreenController(LoginScreen ls, UserConsults uc) {
        this.ls = ls;
        this.uc = uc;

        this.ls.getJButtonLogin().addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String enteredUser = ls.getJTextFieldUser().getText();
                String enteredPassword = new String(ls.getJPasswordField().getPassword());
                if (uc.validateLogin(enteredUser, enteredPassword)){
                    ls.dispose();
                    MainPage mp = new MainPage();
                    mp.setVisible(true);
                    mp.setLocationRelativeTo(null);
                }
                else {
                    JOptionPane.showMessageDialog(ls, "Nombre de usuario o contraseña incorrectos", "Error de autenticación", JOptionPane.WARNING_MESSAGE);
                }
            }
        });
        this.ls.getJButtonGuest().addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                    ls.dispose();
                    JOptionPane.showMessageDialog(ls, "Has entrado como invitado", "", JOptionPane.INFORMATION_MESSAGE);
                    MainPage mp = new MainPage();
                    mp.setVisible(true);
                    mp.setLocationRelativeTo(null);
            }
        });
    }
}

