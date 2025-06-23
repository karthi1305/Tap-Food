<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: url('images/loginAndsignup.jpg') no-repeat center center/cover;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: #fff;
            overflow: hidden;
        }

        header {
            background: rgba(30, 30, 30, 0.9);
            padding: 0.5rem 0;
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

        nav .logo img {
            height: 60px;
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

        .auth-container {
            position: relative; /* Ensure it stacks properly */
		    background: rgba(30, 30, 30, 0.9);
		    padding: 2rem;
		    border-radius: 10px;
		    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.7);
		    width: 500px;
		    text-align: center;
		    margin-top: 80px; /* Push down to avoid navbar overlap */
		    z-index: 1; /* Ensure it appears above bubbles */
        }

        h2 {
            color: #ff6b6b;
            margin-bottom: 1.5rem;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            background: #333;
            color: #fff;
        }

        input:focus {
            outline: none;
            border: 1px solid #ff6b6b;
        }

        .terms-container {
		    display: flex;
		    align-items: center;
		    justify-content: flex-start;
		    margin-top: 8px;
		}
		
		.terms {
		    display: flex;
		    align-items: center;
		    gap: 6px; /* Adjust the space between the checkbox and text */
		}
		
		.terms-container input {
		    margin: 0;
		    transform: scale(1.2);
		}
		
		.terms-container label {
		    font-size: 0.9rem;
		    margin-left: 8px; /* Adjust the spacing between the checkbox and text */
		    white-space: nowrap;
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
		
        button {
            width: 100%;
            background: #ff6b6b;
            border: none;
            padding: 10px;
            color: #fff;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }

        button:hover {
            background: #e74c3c;
        }

        .switch-auth {
            margin-top: 15px;
        }

        .switch-auth a {
            color: #ff6b6b;
            text-decoration: none;
        }

        .switch-auth a:hover {
            text-decoration: underline;
        }

        /* Sliding Banner */
        .sliding-banner {
            position: fixed;
            bottom: 50px;
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
            from {
                transform: translateX(100%);
            }
            to {
                transform: translateX(-100%);
            }
        }

        /* Footer */
        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background: rgba(30, 30, 30, 0.9);
            text-align: center;
            padding: 10px 0;
            color: #fff;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <a href="index.jsp"><div class="logo"><img src="images/logo.png" alt="Tap Foods"></div></a>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Browse Restaurant</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>
    
    <div class="floating-bubbles">
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
    </div>

     <div class="auth-container">
        <h2>Sign Up</h2>
        <form action="signup">
            <input type="text" placeholder="User Name" name="username" required>
            <input type="password" placeholder="Password" name="password" required>
            <input type="password" placeholder="Confirm Password" name="confirmPassword" required>
            <input type="email" placeholder="Email" name="email" required>
            <input type="text" placeholder="Address" name="address" required>

            <div class="terms-container">
            	<div class = "terms">
                	<input type="checkbox" id="terms" required>
                	<label for="terms">I Agree To The Terms & Conditions</label>
                </div>
            </div>

            <a href="login.jsp">
            	<button type="submit">Sign Up</button>
            </a>
        </form>
        <p class="switch-auth">Already have an account? <a href="login.jsp">Login</a></p>
    </div>
    
    <section class="sliding-banner">
        <div class="banner-content">
            <p>Special Offer: Get 20% off on your first order! Use code: FIRST20</p>
        </div>
    </section>

    <footer>
        <p>2024 Tap Foods. All rights reserved.</p>
    </footer>

    <script>
        window.addEventListener('scroll', function() {
            const nav = document.querySelector('nav');
            if (window.scrollY > 50) {
                nav.classList.add('scrolled');
            } else {
                nav.classList.remove('scrolled');
            }
        });
    </script>
</body>
</html>
