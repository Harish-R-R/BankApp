package com.banking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Basic validation to check if passwords match
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "New passwords do not match!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("ChangePassword.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Simulated logic to change password (replace with actual logic)
        // For demonstration purposes, just redirect to a success page
        response.sendRedirect("password-changed.jsp");
    }
}

