<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.Map, com.tapfood.model.Cart, com.tapfood.model.CartItem, com.tapfood.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Page</title>
    
</head>
<body>
    <header>
        <nav>
            <a href="index.jsp"><div class="logo animate__animated animate__bounce"><img src="images/logo.png" height="60px" alt="Tap Foods"></div></a>
            <ul>
                <% 
                User user = (User) session.getAttribute("loggedInUser");
                if(user != null) {
                %>
                <li><a>Welcome, <%=user.getUsername()%>!</a></li>
                <li><a href="restaurant">Restaurants</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="orderHistory">Order History</a></li>
                <li><a href="logout" class="login-btn">Logout</a></li>
                <%
                } else{
                %>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="login.jsp" class="login-btn">Login</a></li>
                <li><a href="signup.jsp" class="signup-btn">SignUp</a></li>  
                <%
                }
                %>
            </ul>
        </nav>
    </header>
    <main>
        <h1>Checkout</h1>
        <form class="hero" action="checkout">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            <label for="paymentMethod">Payment Method:</label>
            <select id="paymentMethod" name="paymentMethod" required>
                <option value="" disabled selected>Select</option>
                <option value="debitCard">Debit Card</option>
                <option value="UPI">PayPal</option>
                <option value="netBanking">Net Banking</option>
                <option value="cashOnDelivery">Cash on Delivery</option>
            </select>
            <button type="submit">Place Order</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Tap Foods. All Rights Reserved.</p>
    </footer>

    <style>
body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background: #333 url(images/b6.jpg) no-repeat center center/cover;
    background-size: cover;
    background-attachment: fixed;
    color: #333;
}

header {
    background: rgba(30, 30, 30, 0.9);
    padding: .5rem 0;
    width: 100%;
    position: fixed;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.7);
    transition: transform 0.3s ease, background 0.3s;
} 

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 87rem;
    margin: 0 auto;
    padding: 0 1rem;
}

nav .logo {
    font-size: 1.5rem;
    font-weight: bold;
    color: #ff6b6b;
    transition: transform 0.3s, color 0.3s;
}
nav .logo:hover {
    transform: scale(1.1);
    color: #ff2e2e;
}

nav ul {
    list-style: none;
    display: flex;
    gap: 1rem;
}

nav ul li a{
    text-decoration: none;
}

nav ul li a {
    color: #ffffff;
    text-decoration: none;
    font-size: 1rem;
    transition: color 0.3s, border-bottom 0.3s, transform 0.3s;
    padding-bottom: 0.5rem;
}

nav ul li a:hover {
    color: #ff6b6b;
    border-bottom: 2px solid #ff6b6b;
    transform: translateY(-2px);
}


.hero, h1{
    color: white;
}

main {
    padding: 20px;
    max-width: 1200px;
    margin: 5rem auto;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color:  #ff6b6b;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background 0.3s;
}

.btn:hover {
    background-color:  #ff6b6b;
}

form {
    display: flex;
    flex-direction: column;
    gap: 15px;
    max-width: 500px;
    margin: 0 auto;
}

form label {
    font-weight: bold;
}

form input, form select, form button {
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

form button {
    background-color: #ff6b6b;
    color: white;
    border: none;
    cursor: pointer;
    transition: background 0.3s;
}

form button:hover {
    background-color:#ff2e2e;
}

footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 15px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
</body>
</html>