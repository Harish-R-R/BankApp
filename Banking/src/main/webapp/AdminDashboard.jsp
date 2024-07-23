<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard - Bank Application</title>
<style>
/* Admin Dashboard Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f0f0f0;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.header {
  background-color: #4CAF50;
  color: white;
  width: 100%;
  padding: 15px 0;
  text-align: center;
}

.container {
  background-color: #fff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  width: 80%;
  max-width: 1200px;
  margin: 20px 0;
}

h1 {
  text-align: center;
}

nav {
  margin: 20px 0;
  text-align: center;
}

nav a {
  margin: 0 15px;
  text-decoration: none;
  color: #4CAF50;
  font-weight: bold;
}

nav a:hover {
  color: #3e8e41;
}

.logout {
  text-align: right;
  width: 100%;
}

.logout a {
  text-decoration: none;
  color: #4CAF50;
  font-weight: bold;
}

.logout a:hover {
  color: #3e8e41;
}
</style>
</head>
<body>
<div class="header">
  <h1>Bank Application - Admin Dashboard</h1>
</div>
<div class="container">
  <div class="logout">
    <a href="logout.jsp">Logout</a>
  </div>
  <h1>Welcome, <c:out value="${sessionScope.username}" />!</h1>
  <nav>
    <a href="viewUsers.jsp">View Users</a>
    <a href="manageAccounts.jsp">Manage Accounts</a>
    <a href="transactionHistory.jsp">Transaction History</a>
  </nav>
  <p>Select an option above to manage the banking application.</p>
</div>
</body>
</html>
