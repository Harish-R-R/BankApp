<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Change Password - Bank Application</title>
<style>
/* Responsive Change Password Form Styles */
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
  background-color: #fff; /* White background for change password form */
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
<script>
const errorMessage = document.getElementById("errorMessage");
const changePasswordForm = document.getElementById("changePasswordForm");

changePasswordForm.addEventListener("submit", function(event) {
  const newPassword = document.getElementById("newPassword").value;
  const confirmPassword = document.getElementById("confirmPassword").value;

  // Basic validation to check if passwords match
  if (newPassword !== confirmPassword) {
    errorMessage.textContent = "New passwords do not match!";
    errorMessage.style.display = "block";
    event.preventDefault(); // Prevent form submission if passwords don't match
    return;
  }
  
  // Add more validation logic here (optional)
});
</script>
</head>
<body>
<div class="container">
  <h1>Change Password</h1>
  <form action="ChangePassword" method="post" id="changePasswordForm">
    <label for="currentPassword">Current Password:</label>
    <input type="password" id="currentPassword" name="currentPassword" required><br><br>
    <label for="newPassword">New Password:</label>
    <input type="password" id="newPassword" name="newPassword" required><br><br>
    <label for="confirmPassword">Confirm New Password:</label>
    <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>
    <input type="submit" value="Change Password" class="btn">
  </form>
  <span style="color: red;" id="errorMessage">${errorMessage}</span>
</div>
</body>
</html>
