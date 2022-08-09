package com.astore.model;

public class Slide {
    private int id;
    private String linkImage;
    private String title;
    private String content;
    private String createdAt;

    public Slide() {
    }
    public Slide(int id, String linkImage, String title, String content, String createdAt) {
        this.id = id;
        this.linkImage = linkImage;
        this.title = title;
        this.content = content;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
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

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Slide{" +
                "id=" + id +
                ", linkImage='" + linkImage + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
