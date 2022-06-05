package com.uet.mtbs.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "payment")
public class Payment {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    @Column(name = "payment_id")
    private Long paymentId;

    @Column(name = "amount")
    private Long amount;

    @Column(name = "discount_coupon")
    private String discountCoupon;

    @Column(name = "payment_method")
    private String paymentMethod;

    @Column(name = "payment_time")
    private Timestamp paymentTime;

    @Column(name = "payment_status")
    private String paymentStatus;

    public Payment( Long amount, String discountCoupon, String paymentMethod, Timestamp paymentTime, String paymentStatus) {
        this.amount = amount;
        this.discountCoupon = discountCoupon;
        this.paymentMethod = paymentMethod;
        this.paymentTime = paymentTime;
        this.paymentStatus = paymentStatus;
    }

    public Payment() {

    }

    public Long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public String getDiscountCoupon() {
        return discountCoupon;
    }

    public void setDiscountCoupon(String discountCoupon) {
        this.discountCoupon = discountCoupon;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Timestamp getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Timestamp paymentTime) {
        this.paymentTime = paymentTime;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
}
