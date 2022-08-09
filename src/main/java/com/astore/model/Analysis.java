package com.astore.model;

public class Analysis {
    private int amountOrder; // số đơn hàng
    private double sales; // doanh số
    private double orderRate;
    private double salesRate;

    public Analysis(int amountOrder, double sales, double orderRate, double salesRate) {
        this.amountOrder = amountOrder;
        this.sales = sales;
        this.orderRate = orderRate;
        this.salesRate = salesRate;
    }

    public double getSalesRate() {
        return salesRate;
    }

    public void setSalesRate(double salesRate) {
        this.salesRate = salesRate;
    }

    public Analysis() {
    }

    public int getAmountOrder() {
        return amountOrder;
    }

    public void setAmountOrder(int amountOrder) {
        this.amountOrder = amountOrder;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public double getOrderRate() {
        return orderRate;
    }

    public void setOrderRate(double orderRate) {
        this.orderRate = orderRate;
    }

}
