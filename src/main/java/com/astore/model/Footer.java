package com.astore.model;

public class Footer {
    private int id;
    private String title;
    private String content;
    private String createAt;

    public Footer() {
    }

    public Footer(int id, String title, String content, String createAt) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
}
