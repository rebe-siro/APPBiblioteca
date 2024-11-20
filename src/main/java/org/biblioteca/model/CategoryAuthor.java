/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

/**
 *
 * @author Familia SIRO
 */
public class CategoryAuthor {
    private int codeAuthor;
    private int codeCategory;
    private String description;

    public CategoryAuthor(int codeAuthor, int codeCategory, String description) {
        this.codeAuthor = codeAuthor;
        this.codeCategory = codeCategory;
        this.description = description;
    }
    
    public CategoryAuthor(){
    }

    public int getCodeAuthor() {
        return codeAuthor;
    }

    public void setCodeAuthor(int codeAuthor) {
        this.codeAuthor = codeAuthor;
    }

    public int getCodeCategory() {
        return codeCategory;
    }

    public void setCodeCategory(int codeCategory) {
        this.codeCategory = codeCategory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
