package com.po;

import java.util.Date;

public class Article {

    private Integer id;
    private String title;
    private String author;
    private Date date;
    private String content;
    private String music;

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Article(Integer id, String title, String author, Date date, String content, String music) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.date = date;
        this.content = content;
        this.music = music;
    }

    public Article() {
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", date=" + date +
                ", content='" + content + '\'' +
                ", music='" + music + '\'' +
                '}';
    }
}
