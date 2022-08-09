package com.astore.model;

import java.util.List;

public class Product {
    private int id;
    private int subCategoryId;
    private String name;
    private int colorId;
    private String colorName;
    private String colorHex;
    private double price;
    private String rom;
    private String ram;
    private String sizeScreen;
    private String screenResolution; // độ phân giải
    private String frontCamera;
    private String backCamera;
    private double saleRate;
    private String productDetail;
    private List<String> listPhotoUrl;
    private List<String> listProductDetail;
    private String createdAt;




    public Product() {
    }

    public Product(int id, int subCategoryId, String name, int colorId, String colorName, String colorHex, double price, String rom, String ram, String sizeScreen, String screenResolution, String frontCamera, String backCamera, double saleRate, String productDetail, List<String> listPhotoUrl, List<String> listProductDetail) {
        this.id = id;
        this.subCategoryId = subCategoryId;
        this.name = name;
        this.colorId = colorId;
        this.colorName = colorName;
        this.colorHex = colorHex;
        this.price = price;
        this.rom = rom;
        this.ram = ram;
        this.sizeScreen = sizeScreen;
        this.screenResolution = screenResolution;
        this.frontCamera = frontCamera;
        this.backCamera = backCamera;
        this.saleRate = saleRate;
        this.productDetail = productDetail;
        this.listPhotoUrl = listPhotoUrl;
        this.listProductDetail = listProductDetail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public void setSubCategoryId(int subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSubCategoryId() {
        return subCategoryId;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorHex() {
        return colorHex;
    }

    public void setColorHex(String colorHex) {
        this.colorHex = colorHex;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getSizeScreen() {
        return sizeScreen;
    }

    public void setSizeScreen(String sizeScreen) {
        this.sizeScreen = sizeScreen;
    }

    public String getScreenResolution() {
        return screenResolution;
    }

    public void setScreenResolution(String screenResolution) {
        this.screenResolution = screenResolution;
    }

    public String getFrontCamera() {
        return frontCamera;
    }

    public void setFrontCamera(String frontCamera) {
        this.frontCamera = frontCamera;
    }

    public String getBackCamera() {
        return backCamera;
    }

    public void setBackCamera(String backCamera) {
        this.backCamera = backCamera;
    }

    public double getSaleRate() {
        return saleRate;
    }

    public void setSaleRate(double saleRate) {
        this.saleRate = saleRate;
    }

    public String getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(String productDetail) {
        this.productDetail = productDetail;
    }

    public List<String> getListPhotoUrl() {
        return listPhotoUrl;
    }

    public void setListPhotoUrl(List<String> listPhotoUrl) {
        this.listPhotoUrl = listPhotoUrl;
    }

    public List<String> getListProductDetail() {
        return listProductDetail;
    }

    public void setListProductDetail(List<String> listProductDetail) {
        this.listProductDetail = listProductDetail;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", dongSpID=" + subCategoryId +
                ", name='" + name + '\'' +
                ", colorId=" + colorId +
                ", color='" + colorName + '\'' +
                ", price=" + price +
                ", rom='" + rom + '\'' +
                ", ram='" + ram + '\'' +
                ", sizeScreen='" + sizeScreen + '\'' +
                ", screenResolution='" + screenResolution + '\'' +
                ", frontCamera='" + frontCamera + '\'' +
                ", backCamera='" + backCamera + '\'' +
                ", saleRate=" + saleRate +
                ", productDetail='" + productDetail + '\'' +
                ", listPhotoUrl=" + listPhotoUrl +
                ", listProductDetail=" + listProductDetail +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }

    public String toStringListImgDetails() {
        return "Product{" +
                "id=" + id +
                ", dongSpID=" + subCategoryId +
                ", name='" + name + '\'' +
                ", listProductDetail=" + listProductDetail +
                '}';
    }
}
