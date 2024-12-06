/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

/**
 *
 * @author Rebe
 */
public class User {
    private int code;
    //Login
    private String name;
    private String lastName;
    private String identification;
    private String career;
    private int type;
    private boolean status;
    private String password;
    private String username;

    public User(int code, String name, String lastName, String identification, String career, int type, boolean status, String password, String username) {
        this.code = code;
        this.name = name;
        this.lastName = lastName;
        this.identification = identification;
        this.career = career;
        this.type = type;
        this.status = status;
        this.password = password;
        this.username = username;
    }

    public User() {
       
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setPassword(String password){
        this.password = password;
    }
    
    public String getPassword(){
        return password;
    }
  
    public void setUsername(String username){
        this.username = username;
    }
   
    public String getUsername(){
        return username;
    }
}
