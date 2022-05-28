package com.example.springlogin.repository;

import com.example.springlogin.model.BookingTicket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingTicketRepository extends JpaRepository<BookingTicket, Long> {
}
