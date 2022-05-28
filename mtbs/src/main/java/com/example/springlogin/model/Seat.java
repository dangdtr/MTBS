package com.example.springlogin.model;

import javax.persistence.*;

@Entity
@Table(name = "seat")
public class Seat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "seat_id")
    private int seat_id;

    @Column(name = "is_reversed")
    private boolean is_reversed;

    @Column(name = "auditorium_id")
    private int auditorium_id;

    enum Seat_Type {
        Regular, Premium;
    }

    public Seat() {

    }

    public Seat(boolean is_reversed, int auditorium_id) {
        this.is_reversed = is_reversed;
        this.auditorium_id = auditorium_id;
    }

    public int getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(int seat_id) {
        this.seat_id = seat_id;
    }

    public boolean isIs_reversed() {
        return is_reversed;
    }

    public void setIs_reversed(boolean is_reversed) {
        this.is_reversed = is_reversed;
    }

    public int getAuditorium_id() {
        return auditorium_id;
    }

    public void setAuditorium_id(int auditorium_id) {
        this.auditorium_id = auditorium_id;
    }
}
