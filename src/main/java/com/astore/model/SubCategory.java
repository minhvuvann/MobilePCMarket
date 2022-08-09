package com.astore.model;

public class SubCategory {
    private int id;
    private int idCategory;
    private String name;
    private String createdAt;

    public SubCategory(int id, int idCategory, String name) {
        this.id = id;
        this.idCategory = idCategory;
        this.name = name;
    }

    public SubCategory() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
