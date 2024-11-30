/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

/**
 *
 * @author Familia SIRO
 */
public class AuthorResource {
    private int codeResource;
    private int codeAuthor;
    private String description;
    
    public AuthorResource(){   
    }

    /*public AuthorResource(int codeResource, int codeAuthor, String description) {
        this.codeResource = codeResource;
        this.codeAuthor = codeAuthor;
        this.description = description;
    }*/

    public int getCodeResource() {
        return codeResource;
    }

    public void setCodeResource(int codeResource) {
        this.codeResource = codeResource;
    }

    public int getCodeAuthor() {
        return codeAuthor;
    }

    public void setCodeAuthor(int codeAuthor) {
        this.codeAuthor = codeAuthor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
