package com.astore.model;

import java.util.Objects;

public class Insurance {
    private int id;
    private int idProduct;
    private int idOrder;
    private int idUser;
    private String nameUser;
    private String dateTake;
    private String datePay;
    private double rateInsurance;
    private String note;
    private int status;
    private String contentStatus;
    private String createAt;

    public Insurance() {
    }

    public Insurance(int id, int idProduct, int idOrder, int idUser, String nameUser, String dateTake, String datePay, double rateInsurance, String note, int status, String contentStatus, String createAt) {
        this.id = id;
        this.idProduct = idProduct;
        this.idOrder = idOrder;
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.dateTake = dateTake;
        this.datePay = datePay;
        this.rateInsurance = rateInsurance;
        this.note = note;
        this.status = status;
        this.contentStatus = contentStatus;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
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

    public String getDateTake() {
        return dateTake;
    }

    public void setDateTake(String dateTake) {
        this.dateTake = dateTake;
    }

    public String getDatePay() {
        return datePay;
    }

    public void setDatePay(String datePay) {
        this.datePay = datePay;
    }

    public double getRateInsurance() {
        return rateInsurance;
    }

    public void setRateInsurance(double rateInsurance) {
        this.rateInsurance = rateInsurance;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getContentStatus() {
        return contentStatus;
    }

    public void setContentStatus(String contentStatus) {
        this.contentStatus = contentStatus;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }
}
