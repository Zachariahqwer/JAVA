package com.po;

import java.util.Date;

public class Movies {

    private Integer id;
    private String name;
    private String movie;
    private String context;
    private Date date;
    private String actor;


    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMovie() {
        return movie;
    }

    public void setMovie(String movie) {
        this.movie = movie;
    }

    public Movies(Integer id, String name, String movie, String context, Date date, String actor) {
        this.id = id;
        this.name = name;
        this.movie = movie;
        this.context = context;
        this.date = date;
        this.actor = actor;
    }

    public Movies() {
    }

    @Override
    public String toString() {
        return "Movies{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", movie='" + movie + '\'' +
                ", context='" + context + '\'' +
                ", date=" + date +
                ", actor='" + actor + '\'' +
                '}';
    }
}
