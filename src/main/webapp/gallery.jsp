<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AVM - Gallery</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="theme">

    <!-- Navigation Bar -->
    <nav>
        <h1 class="logo">AVM Travels</h1>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="payment.jsp">Payment</a></li>
            <li><a href="thankyou.jsp">Thank You</a></li>
        </ul>
    </nav>

    <section class="gallery">
        <h2>📸 Our Moments</h2>
        <div class="gallery-grid">
            <!-- Office Images -->
            <div class="gallery-item">
                <img src="images/office1.jpg" alt="Office 1">
                <div class="caption">Our Modern Office in Mumbai</div>
            </div>
            <div class="gallery-item">
                <img src="images/office2.jpg" alt="Office 2">
                <div class="caption">Customer Support & Ticketing Area</div>
            </div>

            <!-- Bus Images -->
            <div class="gallery-item">
                <img src="images/bus1.jpg" alt="Luxury Bus 1">
                <div class="caption">Luxury AC Bus Fleet</div>
            </div>
            <div class="gallery-item">
                <img src="images/bus2.jpg"alt="Luxury Bus 2">
                <div class="caption">Spacious Seating & Wi-Fi Enabled</div>
            </div>

            <!-- Team/Group Images -->
            <div class="gallery-item">
                <img src="images/team1.jpg" alt="Team">
                <div class="caption">Our Enthusiastic Travel Team</div>
            </div>
            <div class="gallery-item">
                <img src="images/group1.jpg" alt="Tour Group">
                <div class="caption">Memories Made with Our Guests</div>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 AVM Travel Agency. All rights reserved.</p>
    </footer>

</body>
</html>
