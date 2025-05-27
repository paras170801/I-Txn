package com.example.payment.controller;

import com.example.payment.model.Payment;
import com.example.payment.service.PaymentService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

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

        PaymentService service = new PaymentService();
        boolean result = service.processPayment(payment);

        request.setAttribute("result", result ? "Payment Successful" : "Payment Failed");
        request.getRequestDispatcher("jsp/result.jsp").forward(request, response);
    }
}

