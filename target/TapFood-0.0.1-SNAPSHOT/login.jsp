<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
  
</head>
<body>
    <header>
        <nav>
           <a href="index.jsp"> <div class="logo"><img src="images/logo.png" height="60px" alt="Tap Foods"></div></a>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Browse Restaurant</a></li>
                <li><a href="#">About Us</a></li>

                <li><a href="#">Contact</a></li>

                <li><a href="signup.jsp">Sign Up</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="auth-section">
        <div class="floating-bubbles">
            <div class="bubble"></div>
            <div class="bubble"></div>
            <div class="bubble"></div>
            <div class="bubble"></div>
            <div class="bubble"></div>
        </div>
         <div class="auth-container">
            <div class="auth-left">
                <h2 class="hero-header">Log in to your account</h2>
                <button class="facebook-login">Login with Facebook</button>
                <p>- Or -</p>
                <form action="login">
                    <input type="text" name="email" placeholder="Email" required="required">
                    <input type="password" name="password" placeholder="Password" required="required">
                    <a href="#" class="forgot-password">Forgot Password?</a>
                    <button type="submit" class="login-btn">Login</button>
                </form>
                <p class="switch-auth">Don't have an account? <a href="signup.html">Sign Up</a></p>
            </div>
        </div>
    </section>
    <section class="sliding-banner">
        <div class="banner-content">
            <p>Special Offer: Get 20% off on your first order! Use code: FIRST20</p>
        </div>
    </section>
    
    <footer>
        <p>2023 Tap Foods. All rights reserved.</p>
    </footer>
    
    <script src="JavaScript/loginANDsignup.js">
        window.addEventListener('scroll', function() {
            const nav = document.querySelector('nav');
            if (window.scrollY > 50) {
                nav.classList.add('scrolled');
            } else {
                nav.classList.remove('scrolled');
            }
        });
    </script>

     <style>
		{
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		}
		
		body {
		    margin: 0;
		    font-family: 'Arial', sans-serif;
		    background: #333 url(images/loginAndsignup.jpg) no-repeat center center/cover;
		    background-size: cover;
		    background-attachment: fixed;
		    color: #333;
		    transition: background 1s ease-in-out;
		    
		}
		
		/* Header styles */
		header {
		    background: rgba(30, 30, 30, 0.9);
		    padding: .5rem 0;
		    position: fixed;
		    width: 100%;
		    top: 0;
		    z-index: 1000;
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.7);
		}
		
		nav {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    max-width: 89em;
		    margin: 0 auto;
		    padding: 0 1rem;
		}
		
		nav .logo {
		    font-size: 1.5rem;
		    font-weight: bold;
		    color: #ff6b6b;
		    transition: transform 0.3s;
		    
		}
		
		nav .logo:hover {
		    transform: scale(1.1);
		}
		
		nav ul {
		    list-style: none;
		    display: flex;
		    gap: 1rem;
		}
		
		nav ul li a {
		    color: #ffffff;
		    text-decoration: none;
		    font-size: 1rem;
		    transition: color 0.3s, border-bottom 0.3s;
		    padding-bottom: 0.5rem;
		}
		
		nav ul li a:hover {
		    color: #ff6b6b;
		    border-bottom: 2px solid #ff6b6b;
		}
		
		/* Authentication section styles */
		.auth-section {
		    padding: 6rem 1rem;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    height: 100vh;
		    animation: fadeIn 1.5s ease-in-out;
		}
		
		@keyframes fadeIn {
		    from {
		        opacity: 0;
		        transform: scale(0.95);
		    }
		    to {
		        opacity: 1;
		        transform: scale(1);
		    }
		}
		
		.hero-header {
		    color: #ff6b6b;
		    text-align: center;
		    font-family: monospace;
		    margin-bottom: 2rem;
		}
		
		.hero-header~p{
		    color: #ffffff;
		    
		}
		
		.auth-container {
		    position: fixed; /* Change from absolute to fixed */
		    top: 50%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		    display: flex;
		    background: rgba(30, 30, 30, 0.9);
		    border-radius: 10px;
		    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.7);
		    overflow: hidden;
		    width: 25em;
		    max-width: 90%;
		    padding: 1rem 2rem;
		    z-index: 1000; /* Ensure it stays on top */
		}

		@keyframes slideInNew 
		{
		    from 
		    {
		        opacity: 0;
		        transform: translate(-50%, -50%) scale(0.95); /* Keep it centered */
		    }
		    to 
		    {
		        opacity: 1;
		        transform: translate(-50%, -50%) scale(1);
		    }
		}
		
		.auth-left, .auth-right {
		    width: 100%;
		}
		
		.auth-left {
		    border-right: 1px solid #333;
		}
		
		/* Other styles remain unchanged */
		
		
		.auth-left h2, .auth-right h2 {
		    font-size: 1.5rem;
		    margin-bottom: 1rem;
		}
		
		.facebook-login {
		    background: #3b5998;
		    color: #fff;
		    border: none;
		    padding: 0.5rem 1rem;
		    font-size: 1rem;
		    border-radius: 5px;
		    cursor: pointer;
		    width: 100%;
		    margin-bottom: 1rem;
		    transition: background-color 0.3s, transform 0.3s;
		}
		
		.facebook-login:hover {
		    background: #2d4373;
		    transform: translateY(-5px);
		}
		
		.auth-left form, .auth-right form {
		    display: flex;
		    flex-direction: column;
		}
		
		.auth-left form input, .auth-right form input {
		    padding: 0.5rem;
		    margin-bottom: 1rem;
		    border: 1px solid #333;
		    border-radius: 5px;
		    font-size: 1rem;
		    background: #333;
		    color: #fff;
		    transition: border-color 0.3s;
		}
		
		.auth-left form input:focus, .auth-right form input:focus {
		    border-color: #ff6b6b;
		}
		
		.forgot-password {
		    color: #ff6b6b;
		    text-align: right;
		    margin-bottom: 1rem;
		    text-decoration: none;
		    transition: color 0.3s;
		}
		
		.forgot-password:hover {
		    color: #e74c3c;
		}
		
		.login-btn, .signup-btn {
		    background: #ff6b6b;
		    color: #fff;
		    border: none;
		    padding: 0.5rem 1rem;
		    font-size: 1rem;
		    border-radius: 5px;
		    cursor: pointer;
		    width: 100%;
		    transition: background-color 0.3s, transform 0.3s;
		}
		
		.login-btn:hover, .signup-btn:hover {
		    background: #e74c3c;
		    transform: translateY(-5px);
		}
		
		.terms {
		    display: flex;
		    align-items: center;
		    margin-bottom: 1rem;
		}
		
		.terms input {
		    margin-right: 0.5rem;
		}
		
		.terms label {
		    color: #fff;
		}
		
		.switch-auth {
		    text-align: center;
		    margin-top: 1rem;
		}
		
		.switch-auth a {
		    color: #ff6b6b;
		    text-decoration: none;
		    transition: color 0.3s;
		}
		
		.switch-auth a:hover {
		    color: #e74c3c;
		}
		/* Floating Bubbles */
		.floating-bubbles {
		    position: absolute;
		    top: 0;
		    left: 0;
		    right: 0;
		    bottom: 0;
		    overflow: hidden;
		    z-index: 0;
		}
		
		.bubble {
		    position: absolute;
		    bottom: -100px;
		    background-color: rgba(255, 255, 255, 0.8);
		    border-radius: 50%;
		    opacity: 0.7;
		    animation: float 10s infinite;
		}
		
		.bubble:nth-child(1) {
		    width: 40px;
		    height: 40px;
		    left: 20%;
		    animation-duration: 15s;
		    animation-delay: 2s;
		}
		
		.bubble:nth-child(2) {
		    width: 60px;
		    height: 60px;
		    left: 50%;
		    animation-duration: 12s;
		    animation-delay: 4s;
		}
		
		.bubble:nth-child(3) {
		    width: 30px;
		    height: 30px;
		    left: 70%;
		    animation-duration: 10s;
		    animation-delay: 0s;
		}
		
		.bubble:nth-child(4) {
		    width: 80px;
		    height: 80px;
		    left: 80%;
		    animation-duration: 18s;
		    animation-delay: 6s;
		}
		
		.bubble:nth-child(5) {
		    width: 50px;
		    height: 50px;
		    left: 90%;
		    animation-duration: 20s;
		    animation-delay: 8s;
		}
		
		@keyframes float {
		    0% {
		        transform: translateY(0);
		    }
		    50% {
		        transform: translateY(-100vh);
		    }
		    100% {
		        transform: translateY(0);
		    }
		}
		
		/* Floating Bubbles */
		.floating-bubbles {
		    position: absolute;
		    top: 0;
		    left: 0;
		    right: 0;
		    bottom: 0;
		    overflow: hidden;
		    z-index: 0;
		}
		
		.bubble {
		    position: absolute;
		    bottom: -100px;
		    background-color: rgba(255, 255, 255, 0.8);
		    border-radius: 50%;
		    opacity: 0.7;
		    animation: float 10s infinite;
		}
		
		.bubble:nth-child(1) {
		    width: 40px;
		    height: 40px;
		    left: 20%;
		    animation-duration: 15s;
		    animation-delay: 2s;
		}
		
		.bubble:nth-child(2) {
		    width: 60px;
		    height: 60px;
		    left: 50%;
		    animation-duration: 12s;
		    animation-delay: 4s;
		}
		
		.bubble:nth-child(3) {
		    width: 30px;
		    height: 30px;
		    left: 70%;
		    animation-duration: 10s;
		    animation-delay: 0s;
		}
		
		.bubble:nth-child(4) {
		    width: 80px;
		    height: 80px;
		    left: 80%;
		    animation-duration: 18s;
		    animation-delay: 6s;
		}
		
		.bubble:nth-child(5) {
		    width: 50px;
		    height: 50px;
		    left: 90%;
		    animation-duration: 20s;
		    animation-delay: 8s;
		}
		
		@keyframes float {
		    0% {
		        transform: translateY(0);
		    }
		    50% {
		        transform: translateY(-100vh);
		    }
		    100% {
		        transform: translateY(0);
		    }
		}
		
		/* Sliding Banner */
		.sliding-banner {
		    position: fixed;
		    bottom: 0;
		    width: 100%;
		    background-color: #ff6347;
		    color: white;
		    text-align: center;
		    padding: 10px 0;
		    z-index: 1000;
		    overflow: hidden;
		}
		
		.banner-content {
		    display: inline-block;
		    white-space: nowrap;
		    animation: slide 20s linear infinite;
		}
		
		@keyframes slide {
		    0% {
		        transform: translateX(100%);
		    }
		    100% {
		        transform: translateX(-100%);
		    }
		}
	</style>
</body>
</html>