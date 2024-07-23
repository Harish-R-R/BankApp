<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Login - Bank Application</title>
<script>
const errorMessage = document.getElementById("errorMessage");
const loginForm = document.getElementById("loginForm");

loginForm.addEventListener("submit", function(event) {
  // Add form validation logic here (optional)

  // Example: Check if username or password is empty
  if (document.getElementById("username").value === "" || document.getElementById("password").value === "") {
    errorMessage.textContent = "Please fill in all fields.";
    errorMessage.style.display = "block";
    event.preventDefault(); // Prevent form submission if validation fails
  }
});
</script>
<style>
/* Responsive Customer Registration Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f0f8ff; /* Light blue background */
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
  width: 400px; /* Adjust width for different screen sizes */
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
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
  margin-bottom: 15px;
}

.btn {
  background-color: #4CAF50; /* Green button */
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.btn:hover {
  background-color: #3e8e41; /* Darker green on hover */
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
</head>
<body>
<div class="container">
  <h1>Customer Login</h1>
  <form action="CustomerLogin" method="post" id="loginForm">
    <label for="username">Username/Account Number:</label>
    <input type="text" id="username" name="username" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Login" class="btn">
  </form>
  <span style="color: red;" id="errorMessage">${errorMessage}</span>
  <a href="ChangePassword.jsp">Forgot Password?</a>
</div>
</body>
</html>
