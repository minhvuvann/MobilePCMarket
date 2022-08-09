package com.astore.model;

import java.io.Serializable;

public class HistoryDelivery implements Serializable {
    private static  final  long serialVersionUID = 1L;
    int id ;
    String deliveryDate;
    String bookingDate;
    String moneyOrder;

    public HistoryDelivery(int id, String deliveryDate, String bookingDate, String moneyOrder) {
        this.id = id;
        this.deliveryDate = deliveryDate;
        this.bookingDate = bookingDate;
        this.moneyOrder = moneyOrder;
    }

    public int getId() {
        return id;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public String getMoneyOrder() {
        return moneyOrder;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public void setMoneyOrder(String moneyOrder) {
        this.moneyOrder = moneyOrder;
    }

    @Override
    public String toString() {
        return "HistoryDelivery{" +
                "id=" + id +
                ", deliveryDate='" + deliveryDate + '\'' +
                ", bookingDate='" + bookingDate + '\'' +
                ", moneyOrder='" + moneyOrder + '\'' +
                '}';
    }
}
