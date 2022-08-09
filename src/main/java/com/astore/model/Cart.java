package com.astore.model;

import java.io.Serializable;

public class Cart implements Serializable {

    private int id;
    private int idCustomer;
    private String nameCustomer;
    private int idProduct;
    private String nameProduct;
    private String rom;
    private double price;
    private long quantity;
    private String linkImgProduct;
    private String dateAt;


    public Cart() {
    }


    public Cart(int id, int idCustomer, String nameCustomer, int idProduct, String nameProduct, String rom, double price, long quantity, String linkImgProduct, String dateAt) {
        this.id = id;
        this.idCustomer = idCustomer;
        this.nameCustomer = nameCustomer;
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.rom = rom;
        this.price = price;
        this.quantity = quantity;
        this.linkImgProduct = linkImgProduct;
        this.dateAt = dateAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public String getLinkImgProduct() {
        return linkImgProduct;
    }

    public void setLinkImgProduct(String linkImgProduct) {
        this.linkImgProduct = linkImgProduct;
    }

    public String getDateAt() {
        return dateAt;
    }

    public void setDateAt(String dateAt) {
        this.dateAt = dateAt;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", idCustomer=" + idCustomer +
                ", nameCustomer='" + nameCustomer + '\'' +
                ", idProduct=" + idProduct +
                ", nameProduct='" + nameProduct + '\'' +
                ", ram='" + rom + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", linkImgProduct='" + linkImgProduct + '\'' +
                ", dateAt='" + dateAt + '\'' +
                '}';
    }

    public Cart augmentQuantity() {
        Cart updateQuantity = new Cart();
        updateQuantity.setId(this.getId());
        updateQuantity.setIdCustomer(this.getIdCustomer());
        updateQuantity.setNameCustomer(this.getNameCustomer());
        updateQuantity.setIdProduct(this.getIdProduct());
        updateQuantity.setNameProduct(this.getNameProduct());
        updateQuantity.setRom(this.getRom());
        updateQuantity.setPrice(this.getPrice());
        updateQuantity.setQuantity(this.getQuantity() + 1);
        updateQuantity.setLinkImgProduct(this.getLinkImgProduct());
        return updateQuantity;
    }

    public Cart reduceQuantity() {
        Cart updateQuantity = new Cart();
        updateQuantity.setId(this.getId());
        updateQuantity.setIdCustomer(this.getIdCustomer());
        updateQuantity.setNameCustomer(this.getNameCustomer());
        updateQuantity.setIdProduct(this.getIdProduct());
        updateQuantity.setNameProduct(this.getNameProduct());
        updateQuantity.setRom(this.getRom());
        updateQuantity.setPrice(this.getPrice());
        updateQuantity.setQuantity(this.getQuantity() - 1);
        updateQuantity.setLinkImgProduct(this.getLinkImgProduct());

        return updateQuantity;
    }

}
