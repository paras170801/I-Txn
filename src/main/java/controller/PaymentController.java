package com.example.payment.controller;

import com.example.payment.model.Payment;
import com.example.payment.service.PaymentService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.UUID;

public class PaymentController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String payer = request.getParameter("payer");
        double amount = Double.parseDouble(request.getParameter("amount"));
        String method = request.getParameter("method");

        Payment payment = new Payment();
        payment.setPayer(payer);
        payment.setAmount(amount);
        payment.setPaymentMethod(method);
        payment.setCurrency("USD");
        payment.setTransactionId(UUID.randomUUID().toString());

        PaymentService service = new PaymentService();
        boolean success = service.processPayment(payment);

        payment.setStatus(success ? "SUCCESS" : "FAILED");

        request.setAttribute("result", "Transaction " + payment.getTransactionId() + ": " + payment.getStatus());
        request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
    }
}
