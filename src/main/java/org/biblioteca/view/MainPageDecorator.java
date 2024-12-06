/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.view;

/**
 *
 * @author Luzzio
 */
public abstract class MainPageDecorator implements MainPage {
    protected MainPage decoratedMainPage;

    public MainPageDecorator(MainPage decoratedMainPage) {
        this.decoratedMainPage = decoratedMainPage;
    }

    @Override
    public void display() {
        decoratedMainPage.display();
    }

    @Override
    public void enableButtons() {
        decoratedMainPage.enableButtons();
    }
}

