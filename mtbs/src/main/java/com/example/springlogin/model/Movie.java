package com.example.springlogin.model;

import javax.persistence.*;

@Entity
@Table(name = "movie")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_id")
    private Long movie_id;

    @Column(name = "movie_name")
    private String movie_name;

    @Column(name = "movie_poster_url")
    private String movie_poster_url;

    @Column(name = "movie_trailer_url")
    private String movie_trailer_url;

    @Column(name = "movie_duration")
    private String movie_duration;

    @Column(name = "movie_genre")
    private String movie_genre;

    @Column(name = "director")
    private String director;

    @Column(name = "producer")
    private String producer;

    @Column(name = "cast")
    private String cast;

    @Column(name = "description")
    private String description;

    public Movie() {}

    public Movie(String movie_name, String movie_poster_url, String movie_trailer_url, String movie_duration,
                 String movie_genre, String director, String producer, String cast, String description) {
        this.movie_name = movie_name;
        this.movie_poster_url = movie_poster_url;
        this.movie_trailer_url = movie_trailer_url;
        this.movie_duration = movie_duration;
        this.movie_genre = movie_genre;
        this.director = director;
        this.producer = producer;
        this.cast = cast;
        this.description = description;
    }

    public String getMovie_genre() {
        return movie_genre;
    }

    public void setMovie_genre(String movie_genre) {
        this.movie_genre = movie_genre;
    }

    public Long getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(Long movie_id) {
        this.movie_id = movie_id;
    }

    public String getMovie_name() {
        return movie_name;
    }

    public void setMovie_name(String movie_name) {
        this.movie_name = movie_name;
    }

    public String getMovie_poster_url() {
        return movie_poster_url;
    }

    public void setMovie_poster_url(String movie_poster_url) {
        this.movie_poster_url = movie_poster_url;
    }

    public String getMovie_trailer_url() {
        return movie_trailer_url;
    }

    public void setMovie_trailer_url(String movie_trailer_url) {
        this.movie_trailer_url = movie_trailer_url;
    }

    public String getMovie_duration() {
        return movie_duration;
    }

    public void setMovie_duration(String movie_duration) {
        this.movie_duration = movie_duration;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getCast() {
        return cast;
    }

    public void setCast(String cast) {
        this.cast = cast;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
