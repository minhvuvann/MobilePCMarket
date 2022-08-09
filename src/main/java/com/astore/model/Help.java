package com.astore.model;

public class Help {
    private int id;
    private String  fullName;
    private String email;
    private String numberPhone;
    private String content;
    private String createAt;

    public Help() {
    }

    public Help(int id, String fullName, String email, String numberPhone, String content, String createAt) {
        this.id = id;
        this.fullName = fullName;
        this.email = email;
        this.numberPhone = numberPhone;
        this.content = content;
        this.createAt = createAt;
    }

    public Help(String fullName, String content, String email) {
        this.fullName = fullName;
        this.content = content;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    @Override
    public String
    toString() {
        return "Help{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", numberPhone='" + numberPhone + '\'' +
                ", content='" + content + '\'' +
                ", createAt='" + createAt + '\'' +
                '}';
    }
}
