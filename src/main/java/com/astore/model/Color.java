package com.astore.model;

public class Color {
    private int id;
    private String codeHex;
    private String name;
    private String createdAt;

    public Color(int id, String codeHex, String name, String createdAt) {
        this.id = id;
        this.codeHex = codeHex;
        this.name = name;
        this.createdAt = createdAt;
    }

    public Color() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodeHex() {
        return codeHex;
    }

    public void setCodeHex(String codeHex) {
        this.codeHex = codeHex;
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

    @Override
    public String toString() {
        return "Color{" +
                "id=" + id +
                ", codeHex='" + codeHex + '\'' +
                ", name='" + name + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
