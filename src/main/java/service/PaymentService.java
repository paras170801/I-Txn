package com.example.payment.service;

import com.example.payment.model.Payment;

public class PaymentService {
    public boolean processPayment(Payment payment) {
        return payment.getAmount() > 0;
    }
}

