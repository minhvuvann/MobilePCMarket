package com.astore.model;

public class Delivery {
    private int id;
    private int orderId;
    private String address;
    private String deliveryDate;
    private String createdAt;

    public Delivery(int id, int orderId, String address, String deliveryDate, String createdAt) {
        this.id = id;
        this.orderId = orderId;
        this.address = address;
        this.deliveryDate = deliveryDate;
        this.createdAt = createdAt;
    }

    public Delivery() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
