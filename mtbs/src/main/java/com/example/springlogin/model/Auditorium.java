package com.example.springlogin.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

@Entity
@Table(name = "auditorium")
public class Auditorium {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "auditorium_id")
    private Long auditorium_id;

    @Column(name = "date")
    private LocalDate date;

    @Column(name = "start_time")
    private LocalTime start_time;

    @Column(name = "end_time")
    private LocalTime end_time;

    @Column(name = "is_full")
    private boolean is_full;

    @Column(name = "movie_id")
    private int movie_id;

    public Auditorium() {}

    public Auditorium(LocalDate date, LocalTime start_time, LocalTime end_time, boolean is_full, int movie_id) {
        this.date = date;
        this.start_time = start_time;
        this.end_time = end_time;
        this.is_full = is_full;
        this.movie_id = movie_id;
    }

    public Long getAuditorium_id() {
        return auditorium_id;
    }

    public void setAuditorium_id(Long auditorium_id) {
        this.auditorium_id = auditorium_id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getStart_time() {
        return start_time;
    }

    public void setStart_time(LocalTime start_time) {
        this.start_time = start_time;
    }

    public LocalTime getEnd_time() {
        return end_time;
    }

    public void setEnd_time(LocalTime end_time) {
        this.end_time = end_time;
    }

    public boolean isIs_full() {
        return is_full;
    }

    public void setIs_full(boolean is_full) {
        this.is_full = is_full;
    }

    public int getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }
}