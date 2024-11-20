/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.biblioteca.model;

/**
 *
 * @author Familia SIRO
 */
public class CategoryResource {
    private int codeResource;
    private int codeCategory;
    private String description;
    
    public CategoryResource(){
    }

    public CategoryResource(int codeResource, int codeCategory, String description) {
        this.codeResource = codeResource;
        this.codeCategory = codeCategory;
        this.description = description;
    }

    public int getCodeResource() {
        return codeResource;
    }

    public void setCodeResource(int codeResource) {
        this.codeResource = codeResource;
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
