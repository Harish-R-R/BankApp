package com.banking.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

// Annotation to define the servlet URL mapping
@WebServlet("/customer-login")
public class CustomerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Basic validation (you can add more as needed)
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            // Set error message and forward back to the login page
            request.setAttribute("errorMessage", "Please fill in all fields.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerLogin.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Simulated authentication logic (replace with your actual logic)
        if (isValidUser(username, password)) {
            // Successful login
            request.getSession().setAttribute("username", username); // Store username in session
            response.sendRedirect("dashboard.jsp"); // Redirect to dashboard or home page
        } else {
            // Invalid credentials
            request.setAttribute("errorMessage", "Invalid username or password.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerLogin.jsp");
            dispatcher.forward(request, response);
        }
    }

    // Simulated method to check if username and password are valid
    private boolean isValidUser(String username, String password) {
        // Replace with your actual authentication logic (e.g., database query)
        // For demonstration purposes, check against hardcoded values
        return username.equals("demo") && password.equals("demo123");
    }
}
