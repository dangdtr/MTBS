package com.example.springlogin.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "booking_ticket")
public class BookingTicket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ticket_id")
    private int ticket_id;

    @Column(name = "booking_time")
    private LocalDateTime booking_time;

    @Column(name = "user_id")
    private int user_id;

    @Column(name = "seat_id")
    private int seat_id;

    @Column(name = "payment_id")
    private int payment_id;

    @Column(name = "booking_status")
    private Status booking_status;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "fk_userid", referencedColumnName = "user_id", nullable = false)
    private User user;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "fk_seatid", referencedColumnName = "seat_id", nullable = false)
    private Seat seat;

    public enum Status {
        Requested, Pending, Confirmed, Cancelled;
    }

    public BookingTicket() {

    }

    public BookingTicket(LocalDateTime booking_time, int user_id, int seat_id, int payment_id,
                         Status booking_status, User user, Seat seat) {
        this.booking_time = booking_time;
        this.user_id = user_id;
        this.seat_id = seat_id;
        this.payment_id = payment_id;
        this.booking_status = booking_status;
        this.user = user;
        this.seat = seat;
    }

    public int getTicket_id() {
        return ticket_id;
    }

    public void setTicket_id(int ticket_id) {
        this.ticket_id = ticket_id;
    }

    public LocalDateTime getBooking_time() {
        return booking_time;
    }

    public void setBooking_time(LocalDateTime booking_time) {
        this.booking_time = booking_time;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(int seat_id) {
        this.seat_id = seat_id;
    }

    public int getPayment_id() {
        return payment_id;
    }

    public void setPayment_id(int payment_id) {
        this.payment_id = payment_id;
    }

    public Status getBooking_status() {
        return booking_status;
    }

    public void setBooking_status(Status booking_status) {
        this.booking_status = booking_status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Seat getSeat() {
        return seat;
    }

    public void setSeat(Seat seat) {
        this.seat = seat;
    }
}