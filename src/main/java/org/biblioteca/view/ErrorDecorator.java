/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.view;

/**
 *
 * @author Luzzio
 */
public class ErrorDecorator extends MainPageDecorator {

    public ErrorDecorator (MainPage decoratedMainPage) {
        super(decoratedMainPage);
    }

    @Override
    public void enableButtons() {
        super.enableButtons();
        if (decoratedMainPage instanceof BasicMainPage) {
            BasicMainPage basicMainPage = (BasicMainPage) decoratedMainPage;
            basicMainPage.getjButtonBiblioteca().setVisible(false);
            basicMainPage.getErrorLabel().setVisible(true);
        }
    }
}