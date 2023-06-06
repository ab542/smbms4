package com.liying.pojo;

public class UserShow {
    private String src;
    private String description;
    private Integer good;
    private Integer discussion;
    private String author;

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getGood() {
        return good;
    }

    public void setGood(Integer good) {
        this.good = good;
    }

    public Integer getDiscussion() {
        return discussion;
    }

    public void setDiscussion(Integer discussion) {
        this.discussion = discussion;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "UserShow{" +
                "src='" + src + '\'' +
                ", description='" + description + '\'' +
                ", good=" + good +
                ", discussion=" + discussion +
                ", author='" + author + '\'' +
                '}';
    }
}
