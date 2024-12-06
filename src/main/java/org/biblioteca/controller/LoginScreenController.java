package org.biblioteca.controller;

import org.biblioteca.view.LoginScreen;
import org.biblioteca.view.MainPage;
import org.biblioteca.view.BasicMainPage;
import org.biblioteca.view.AdminDecorator;
import org.biblioteca.view.PSDecorator;
import org.biblioteca.model.UserConsults;

import javax.swing.JOptionPane;
import org.biblioteca.view.ErrorDecorator;

public class LoginScreenController {
    private final LoginScreen ls;
    private final UserConsults uc;

    public LoginScreenController(LoginScreen ls, UserConsults uc) {
        this.ls = ls;
        this.uc = uc;

        this.ls.getJButtonLogin().addActionListener(e -> {
            String enteredUser = ls.getJTextFieldUser().getText();
            String enteredPassword = new String(ls.getJPasswordField().getPassword());
            if (uc.validateLogin(enteredUser, enteredPassword)) {
                int userType = uc.getUserType(enteredUser);
                ls.dispose();
                MainPage mp = createMainPage(userType);
                mp.enableButtons();
                mp.display();
                System.out.println(userType);
            } else {
                JOptionPane.showMessageDialog(ls, "Nombre de usuario o contraseña incorrectos", "Error de autenticación", JOptionPane.WARNING_MESSAGE);
            }
        });

        this.ls.getJButtonGuest().addActionListener(e -> {
            ls.dispose();
            JOptionPane.showMessageDialog(ls, "Has entrado como invitado", "", JOptionPane.INFORMATION_MESSAGE);
            MainPage mp = new BasicMainPage();
            mp.display();
        });
    }

    private MainPage createMainPage(int userType) {
        MainPage basicMainPage = new BasicMainPage();
        switch (userType) {
            case 0:
                return new PSDecorator(basicMainPage);
            case 1:
                return new PSDecorator(basicMainPage);
            case 2:
                return new AdminDecorator(basicMainPage);
            case -1:
                return new ErrorDecorator(basicMainPage);
            default:
                return basicMainPage;
        }
    }
}
