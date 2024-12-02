/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;
import java.util.Date;

/**
 *
 * @author Mary
 */
public class Sanctions {
    private int code;
    private int code_tSanction;
    private int code_user;
    private Date star_Date;
    private Date end_Date;
    private Boolean status;

    public Sanctions(int code, int code_tSanction, int code_user, Date star_Date, Date end_Date,Boolean status) {
        this.code = code;
        this.code_tSanction = code_tSanction;
        this.code_user = code_user;
        this.star_Date = star_Date;
        this.end_Date = end_Date;
        this.status = status;
    }

    public Sanctions() {
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setCode_tSanction(int code_tSanction) {
        this.code_tSanction = code_tSanction;
    }

    public void setCode_user(int code_user) {
        this.code_user = code_user;
    }

    public void setStar_Date(Date star_Date) {
        this.star_Date = star_Date;
    }

    public void setEnd_Date(Date end_Date) {
        this.end_Date = end_Date;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public int getCode() {
        return code;
    }

    public int getCode_tSanction() {
        return code_tSanction;
    }

    public int getCode_user() {
        return code_user;
    }

    public Date getStar_Date() {
        return star_Date;
    }

    public Date getEnd_Date() {
        return end_Date;
    }

    public Boolean getStatus() {
        return status;
    }

    void getCode_user(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
