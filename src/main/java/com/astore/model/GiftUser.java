package com.astore.model;

public class GiftUser {
    private int idGift;
    private int idUser;
    private String dateGift;
    private String nameGift;
    private long valueGift;

    public GiftUser(int idGift, int idUser, String dateGift, String nameGift, long valueGift) {
        this.idGift = idGift;
        this.idUser = idUser;
        this.dateGift = dateGift;
        this.nameGift = nameGift;
        this.valueGift = valueGift;
    }

    public int getIdGift() {
        return idGift;
    }

    public void setIdGift(int idGift) {
        this.idGift = idGift;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getDateGift() {
        return dateGift;
    }

    public void setDateGift(String dateGift) {
        this.dateGift = dateGift;
    }

    public String getNameGift() {
        return nameGift;
    }

    public void setNameGift(String nameGift) {
        this.nameGift = nameGift;
    }

    public long getValueGift() {
        return valueGift;
    }

    public void setValueGift(long valueGift) {
        this.valueGift = valueGift;
    }

    @Override
    public String toString() {
        return "GiftUser{" +
                "idGift=" + idGift +
                ", idUser=" + idUser +
                ", dateGift='" + dateGift + '\'' +
                ", nameGift='" + nameGift + '\'' +
                ", valueGift=" + valueGift +
                '}';
    }
}
