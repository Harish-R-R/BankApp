
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Banking Services Home Page</title>
<style>
/* styles.css */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5e7e7; /* Light pink background */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

header {
    background: #ffffff; /* Green header background */
    color: #388e3c;
    padding: 20px 0;
    text-align: center;
}

nav {
    display: flex;
    justify-content: center;
    background: #fff; /* Darker green for nav */
}

nav a {
    color: #ffffff;
    padding: 14px 20px;
    text-decoration: none;
    text-transform: uppercase;
    font-weight: bold;
}

nav a:hover {
    background: #ffffff;
    color: #2e602b;
}

.container {
    width: 80%;
    margin: auto;
    overflow: hidden;
    flex: 1;
}

#showcase {
    background: url('banking-bg.jpg') no-repeat center center/cover;
    color: #ffffff;
    height: 400px;
    text-align: center;
    padding-top: 100px;
}

#showcase h1 {
    font-size: 55px;
    margin: 0;
}

section {
    padding: 20px 0;
    border-bottom: #388e3c 3px solid;
}

.service {
    text-align: center;
    padding: 20px;
}

.service img {
    width: 100px;
    height: 100px;
}

.service h3 {
    margin: 10px 0;
}

.service a {
    text-decoration: none;
    color: inherit;
}

footer {
    background: #388e3c;
    color: #ffffff;
    text-align: center;
    padding: 10px 0;
    margin-top: 20px;
}

</style>
</head>
<body>
    <header>
        <h1>Welcome to ABC Bank</h1>
        <p>Your Trusted Banking Partner</p>
    </header>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Accountopen.jsp">Open Account</a>
        <a href="AdminLogin.jsp">Admin Login</a>
        <a href="CustomerLogin.jsp">Customer Login</a>
        <a href="CustomerReg.jsp">Customer Registration</a>
        <a href="#">Contact Us</a>
    </nav>
    <section id="showcase">
        <div class="container">
            <h1>All Your Banking Needs in One Place</h1>
            <p>Secure, Reliable, and Efficient Banking Services</p>
        </div>
    </section>
    <section class="container">
        <div class="service">
            <a href="Accountopen.jsp">
                <img src="account-icon.png" alt="Accounts">
                <h3>Open Account</h3>
            </a>
            <p>Manage your savings, checking, and business accounts effortlessly.</p>
        </div>
        <div class="service">
            <a href="AdminLogin.jsp">
                <img src="loan-icon.png" alt="Loans">
                <h3>Admin Login</h3>
            </a>
            <p>Admin access to manage and oversee banking operations.</p>
        </div>
        <div class="service">
            <a href="CustomerLogin.jsp">
                <img src="investment-icon.png" alt="Investments">
                <h3>Customer Login</h3>
            </a>
            <p>Access your account and manage your banking services.</p>
        </div>
        <div class="service">
            <a href="CustomerReg.jsp">
                <img src="customer-service-icon.png" alt="Customer Service">
                <h3>Customer Registration</h3>
            </a>
            <p>Register as a new customer to start banking with us.</p>
        </div>
    </section>
    <footer>
        <p>ABC Bank &copy; 2024</p>
    </footer>
</body>
</html>

