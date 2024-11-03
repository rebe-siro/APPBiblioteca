/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package org.biblioteca.view;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JCheckBox;
//import com.toedter.calendar.JDateChooser;
import java.util.List;
import javax.swing.table.DefaultTableModel;
import org.biblioteca.controller.ConexionController;

/**
 *
 * @author JESUS
 */
public class LoanView extends javax.swing.JFrame {
    //private ConexionController cc;
     DefaultTableModel dt = new DefaultTableModel();
    /**
     * Creates new form LoanView
     */
    public LoanView() {
        initComponents();
        //cc = new ConexionController();        
        String ids [] = {"Código", "Título", "Autor", "Tipo", "Estatus"};
        dt.setColumnIdentifiers(ids);
        jTableResources.setModel(dt);        

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        LabelLoanDate = new javax.swing.JLabel();
        LabelReturnDate = new javax.swing.JLabel();
        NoteCheckBox = new javax.swing.JCheckBox();
        LabelNote = new javax.swing.JLabel();
        ButtonLoan = new javax.swing.JButton();
        ButtomCancel = new javax.swing.JButton();
        jToolBar1 = new javax.swing.JToolBar();
        jButtonBack = new javax.swing.JButton();
        LabelLoanTittle = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTableResources = new javax.swing.JTable();
        jTextFieldUserName = new javax.swing.JTextField();
        jTextFieldStarDate = new javax.swing.JTextField();
        jTextFieldEndDate = new javax.swing.JTextField();
        jComboBoxUserType = new javax.swing.JComboBox<>();
        LabelLoanDate1 = new javax.swing.JLabel();
        LabelLoanDate2 = new javax.swing.JLabel();
        LabelLoanDate3 = new javax.swing.JLabel();
        jTextFieldUserRegister = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        LabelLoanDate.setText("Nombre del usuario");

        LabelReturnDate.setText("Fecha de Devolucion");

        NoteCheckBox.setText("Me comprometo a devolver el recurso antes o durante la fecha de devolcion");
        NoteCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                NoteCheckBoxActionPerformed(evt);
            }
        });

        LabelNote.setText("DE NO DEVOLVER EL RECURSO, SE LE APLICARA UNA SANCION.");

        ButtonLoan.setText("Solicitar Prestamo");
        ButtonLoan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButtonLoanActionPerformed(evt);
            }
        });

        ButtomCancel.setText("Cancelar");
        ButtomCancel.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ButtomCancelMouseClicked(evt);
            }
        });
        ButtomCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButtomCancelActionPerformed(evt);
            }
        });

        jToolBar1.setRollover(true);

        jButtonBack.setText("REGRESAR");
        jButtonBack.setFocusable(false);
        jButtonBack.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jButtonBack.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        jButtonBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonBackActionPerformed(evt);
            }
        });
        jToolBar1.add(jButtonBack);

        LabelLoanTittle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        LabelLoanTittle.setText("Seleccione el Recurso");

        jTableResources.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTableResources);

        jComboBoxUserType.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione", "Estudiante", "Profesor", "Externo" }));

        LabelLoanDate1.setText("Tipo de usuario");

        LabelLoanDate2.setText("Fecha del Prestamo");

        LabelLoanDate3.setText("Usuario registrador");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(31, 31, 31)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(NoteCheckBox)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(LabelLoanTittle)
                                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 597, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(LabelLoanDate)
                                            .addComponent(jTextFieldUserName)
                                            .addComponent(LabelLoanDate1)
                                            .addComponent(LabelLoanDate2)
                                            .addComponent(jComboBoxUserType, 0, 190, Short.MAX_VALUE)
                                            .addComponent(jTextFieldStarDate)
                                            .addComponent(LabelReturnDate)
                                            .addComponent(jTextFieldEndDate)
                                            .addComponent(LabelLoanDate3)
                                            .addComponent(jTextFieldUserRegister)))))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(84, 84, 84)
                                .addComponent(ButtonLoan, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(88, 88, 88)
                                .addComponent(ButtomCancel, javax.swing.GroupLayout.PREFERRED_SIZE, 288, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(63, 63, 63)
                                .addComponent(LabelNote)))
                        .addGap(0, 88, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jToolBar1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(jToolBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(LabelLoanTittle)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 448, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(LabelLoanDate, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldUserName, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(23, 23, 23)
                        .addComponent(LabelLoanDate1, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jComboBoxUserType, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(LabelLoanDate2, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldStarDate, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(LabelReturnDate, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldEndDate, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(LabelLoanDate3, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldUserRegister, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 68, Short.MAX_VALUE)
                .addComponent(NoteCheckBox)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(LabelNote)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ButtonLoan, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ButtomCancel, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(22, 22, 22))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void NoteCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_NoteCheckBoxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_NoteCheckBoxActionPerformed

    private void ButtonLoanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButtonLoanActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ButtonLoanActionPerformed

    private void ButtomCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButtomCancelActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ButtomCancelActionPerformed

    private void ButtomCancelMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ButtomCancelMouseClicked
    dispose();        // TODO add your handling code here:
    }//GEN-LAST:event_ButtomCancelMouseClicked

    private void jButtonBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonBackActionPerformed
    dispose();         // TODO add your handling code here:
    }//GEN-LAST:event_jButtonBackActionPerformed

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton ButtomCancel;
    public javax.swing.JButton ButtonLoan;
    private javax.swing.JLabel LabelLoanDate;
    private javax.swing.JLabel LabelLoanDate1;
    private javax.swing.JLabel LabelLoanDate2;
    private javax.swing.JLabel LabelLoanDate3;
    private javax.swing.JLabel LabelLoanTittle;
    private javax.swing.JLabel LabelNote;
    private javax.swing.JLabel LabelReturnDate;
    public javax.swing.JCheckBox NoteCheckBox;
    private javax.swing.JButton jButtonBack;
    public javax.swing.JComboBox<String> jComboBoxUserType;
    private javax.swing.JScrollPane jScrollPane1;
    public javax.swing.JTable jTableResources;
    public javax.swing.JTextField jTextFieldEndDate;
    public javax.swing.JTextField jTextFieldStarDate;
    public javax.swing.JTextField jTextFieldUserName;
    public javax.swing.JTextField jTextFieldUserRegister;
    private javax.swing.JToolBar jToolBar1;
    // End of variables declaration//GEN-END:variables
   
    
    
    public JButton getButtonCancel (){
            return ButtomCancel;
 }
    public JButton getButtonLoan (){
            return ButtomCancel;
 }
    public JCheckBox getNoteCheckBox (){
            return NoteCheckBox;
}
    /*public JDateChooser getDateChooserLoan (){
            return DateChooserLoan;
}
    public JDateChooser getDateChooserReturn (){
            return DateChooserReturn;      
}
*/

}