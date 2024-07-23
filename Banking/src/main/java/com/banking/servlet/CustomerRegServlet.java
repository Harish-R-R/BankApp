package com.banking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

// Annotation to define the servlet URL mapping
@WebServlet("/customer-registration")
public class CustomerRegServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Basic validation to check if passwords match
        if (!password.equals(confirmPassword)) {
            // Redirect back to the registration form with an error message
            request.setAttribute("errorMessage", "Passwords do not match!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerReg.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Additional validation can be added here (e.g., check if username already exists)

        // Implement further processing like saving the data to a database
        // For this example, we'll just print the data to the console
        System.out.println("Customer Registration Details:");
        System.out.println("First Name: " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Email: " + email);
        System.out.println("Username: " + username);

        // Redirect to a success page or show a success message
        request.setAttribute("successMessage", "Registration successful!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("registration-success.jsp");
        dispatcher.forward(request, response);
    }
}
