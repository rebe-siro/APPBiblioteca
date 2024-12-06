/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

import java.sql.Date;

/**
 *
 * @author Mary
 */
public class Return {
    private int code;
    private int code_user;
    private int code_resourse;
    private Date date_return;
    private Boolean status;
    
    public Return(int code,int code_user, int code_resourse, Date date_return, Boolean status) {
        this.code = code;
        this.code_user = code_user;
        this.code_resourse = code_resourse;
        this.date_return = date_return;
        this.status = status;

    }


    public Return() {
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    
    public void setCode(int code) {
        this.code = code;
    }

    public void setCode_user(int code_user) {
        this.code_user = code_user;
    }

    public void setCode_resourse(int code_resourse) {
        this.code_resourse = code_resourse;
    }

    public void setDate_return(Date date_return) {
        this.date_return = date_return;
    }

    public int getCode() {
        return code;
    }

    public int getCode_user() {
        return code_user;
    }

    public int getCode_resourse() {
        return code_resourse;
    }

    public Date getDate_return() {
        return date_return;
    }

    public Boolean getStatus() {
        return status;
    }
    
    
}
