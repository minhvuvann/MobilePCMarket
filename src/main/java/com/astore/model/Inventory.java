package com.astore.model;

public class Inventory {
    int id;
    int idSP;
    String nameSP;
    long count;
    String createAt;

    public Inventory() {

    }

    public Inventory(int id, int idSP, String nameSP, long count, String createAt) {
        this.id = id;
        this.idSP = idSP;
        this.nameSP = nameSP;
        this.count = count;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdSP() {
        return idSP;
    }

    public void setIdSP(int idSP) {
        this.idSP = idSP;
    }

    public String getNameSP() {
        return nameSP;
    }

    public void setNameSP(String nameSP) {
        this.nameSP = nameSP;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }
}
