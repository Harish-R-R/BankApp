<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Account Opening - Bank Application</title>
<style>
/* Responsive Customer Account Opening Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f5e7e7; /* Light pink background */
  min-height: 100vh; /* Set minimum height for full viewport */
  display: flex;
  justify-content: center;
  align-items: center;
}

.container {
  background-color: #fff; /* White background for registration form */
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  width: 500px; /* Adjust width for different screen sizes */
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 5px;
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
  margin-bottom: 15px;
}

.btn {
  background-color: #388e3c; /* Green button */
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.btn:hover {
  background-color: #2e602b; /* Darker green on hover */
}

#errorMessage {
  display: none; /* Hide error message initially */
}

@media (max-width: 768px) {
  .container {
    width: 90%;
  }
}
</style>
<script>
const errorMessage = document.getElementById("errorMessage");
const accountOpeningForm = document.getElementById("accountOpeningForm");

accountOpeningForm.addEventListener("submit", function(event) {
  const password = document.getElementById("password").value;
  const confirmPassword = document.getElementById("confirmPassword").value;

  // Basic validation to check if passwords match
  if (password !== confirmPassword) {
    errorMessage.textContent = "New passwords do not match!";
    errorMessage.style.display = "block";
    event.preventDefault(); // Prevent form submission if passwords don't match
    return;
  }
  
  // Add more validation logic here (optional)
  // You can add regular expressions for PAN and Aadhaar number validation
});
</script>
</head>
<body>
<div class="container">
  <h1>Account Opening</h1>
  <form action="Accountopen" method="post" id="accountOpeningForm">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required><br><br>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required><br><br>
    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" required><br><br>
    <label for="phone">Phone Number:</label>
    <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required><br><br>
    <label for="pan">PAN Number:</label>
    <input type="text" id="pan" name="pan" pattern="[0-9]{10}" required><br><br>
    <label for="aadhaar">Aadhaar Number:</label>
    <input type="text" id="aadhar" name="aadhaar" pattern="[0-9]{10}" required><br><br>
     <input type="submit" value="Login" class="btn"></form></div>
