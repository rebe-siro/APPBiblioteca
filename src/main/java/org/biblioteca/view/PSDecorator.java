package org.biblioteca.view;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Luzzio
 */

public class PSDecorator extends MainPageDecorator {

    public PSDecorator(MainPage decoratedMainPage) {
        super(decoratedMainPage);
    }

    @Override
    public void enableButtons() {
        super.enableButtons();
        if (decoratedMainPage instanceof BasicMainPage) {
            BasicMainPage basicMainPage = (BasicMainPage) decoratedMainPage;
            basicMainPage.getJButtonPosPrestamo().setVisible(true);
            basicMainPage.getjButtonPrestamo().setVisible(true);
        }
    }
}

