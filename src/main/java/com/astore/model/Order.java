package com.astore.model;

public class Order {
    private int id;
    private String dateAtOrder;
    private int idUser;
    private String nameUser;
    private double priceOrder;
    private String createAt;

    public Order(int id, String dateAtOrder, int idUser, String nameUser, double priceOrder, String createAt) {
        this.id = id;
        this.dateAtOrder = dateAtOrder;
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.priceOrder = priceOrder;
        this.createAt = createAt;
    }

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDateAtOrder() {
        return dateAtOrder;
    }

    public void setDateAtOrder(String dateAtOrder) {
        this.dateAtOrder = dateAtOrder;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public double getPriceOrder() {
        return priceOrder;
    }

    public void setPriceOrder(double priceOrder) {
        this.priceOrder = priceOrder;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }
}
