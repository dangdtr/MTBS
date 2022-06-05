package com.uet.mtbs.repository;

import com.uet.mtbs.model.BookingTicket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingTicketRepository extends JpaRepository<BookingTicket, Long> {
}
