package com.astore.model;

public class Sale {
    private int productId;
    private double saleRate;
    private String createdAt;

    public Sale(int productId, double saleRate, String createdAt) {
        this.productId = productId;
        this.saleRate = saleRate;
        this.createdAt = createdAt;
    }

    public Sale() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public double getSaleRate() {
        return saleRate;
    }

    public void setSaleRate(double saleRate) {
        this.saleRate = saleRate;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
