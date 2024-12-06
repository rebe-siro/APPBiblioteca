package org.biblioteca.view;

/**
 *
 * @author Luzzio
 */

public class AdminDecorator extends MainPageDecorator {

    public AdminDecorator(MainPage decoratedMainPage) {
        super(decoratedMainPage);
    }

    @Override
    public void enableButtons() {
        super.enableButtons();
        if (decoratedMainPage instanceof BasicMainPage) {
            BasicMainPage basicMainPage = (BasicMainPage) decoratedMainPage;
            basicMainPage.getUserRegister().setVisible(true);
            basicMainPage.getJButtonAuthor().setVisible(true);
            basicMainPage.getJButtonCategoria().setVisible(true);
            basicMainPage.getJButtonAplicarSanciones().setVisible(true);
            basicMainPage.getJButtonPosPrestamo().setVisible(true);
            basicMainPage.getJButtonReportes().setVisible(true);
            basicMainPage.getJButtonSanciones().setVisible(true);
            basicMainPage.getjButtonPrestamo().setVisible(true);
        }
    }
}
