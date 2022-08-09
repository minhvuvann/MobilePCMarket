package com.astore.model;

public class Image {
    private int id;
    private int productId;
    private int subCategoryId;
    private String url;

    public Image() {
    }

    public Image(int id, int productId,int subCategoryId, String url) {
        this.id = id;
        this.productId = productId;
        this.subCategoryId = subCategoryId;
        this.url = url;
    }

    public int getSubCategoryId() {
        return subCategoryId;
    }

    public void setSubCategoryId(int subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
