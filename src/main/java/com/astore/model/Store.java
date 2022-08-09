package com.astore.model;

public class Store {
    private int id;
    private String name;
    private String linkLogo;
    private String dateAt;

    public Store() {
    }

    public Store(int id, String name, String linkLogo, String dateAt) {
        this.id = id;
        this.name = name;
        this.linkLogo = linkLogo;
        this.dateAt = dateAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLinkLogo() {
        return linkLogo;
    }

    public void setLinkLogo(String linkLogo) {
        this.linkLogo = linkLogo;
    }

    public String getDateAt() {
        return dateAt;
    }

    public void setDateAt(String dateAt) {
        this.dateAt = dateAt;
    }
}
