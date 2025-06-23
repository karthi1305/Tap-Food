<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List, com.tapfood.model.OrderTable" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="CSS/order_history.css">
</head>
<body>
    <header class="animate__animated animate__fadeInDown bg-dark text-white py-3">
        <nav class="navbar navbar-expand-lg navbar-dark container">
            <a class="navbar-brand logo" href="#"><img src="images/logo.png" height="60px" alt="Tap Foods"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="container my-5 animate__animated animate__fadeInUp">
        <h1 class="text-center mb-4">Order History</h1>
        <%
            List<OrderTable> orderHistory = (List<OrderTable>) request.getAttribute("orderHistory");
            if (orderHistory != null && !orderHistory.isEmpty()) {
        %>
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Order ID</th>
                    <th scope="col">Date</th>
                    <th scope="col">Total Amount</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (OrderTable order : orderHistory) {
                %>
                <tr>
                    <th scope="row"><%= order.getOrderId() %></th>
                    <td><%= order.getOrderDate() %></td>
                    <td>₹<%= order.getTotalAmount() %></td>
                    <td><%= order.getStatus() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <% 
            } else { 
        %>
        <p class="text-center">You have no order history.</p>
        <% 
            } 
        %>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background: #333 url(images/background.jpg) no-repeat center center/cover;
    background-size: cover;
    background-attachment: fixed;
    color: #333;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
    color: #ff6b6b;
    transition: transform 0.3s, color 0.3s;
}

.logo:hover {
    transform: scale(1.1);
    color: #ff2e2e;
}

.container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.table-hover tbody tr:hover {
    background-color: rgba(255, 107, 107, 0.2);
}

thead.thead-dark th {
    background-color: #333;
    color: white;
}

.text-center {
    margin-bottom: 20px;
}
</style>
</body>
</html>