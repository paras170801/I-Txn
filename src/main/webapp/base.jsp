<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AVM Tours</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="theme">

    <!-- Navigation -->
    <nav>
        <img src="images/avm-logo.jpg" alt="AVM" class="logo">
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="payment.jsp">Payment</a></li>
            <li><a href="thankyou.jsp">Thank You</a></li>
        </ul>
    </nav>

    <!-- Main Content Placeholder -->


    <div class="main">
        <jsp:include page="content.jsp" />
    </div>

</body>
</html>