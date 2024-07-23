package com.banking.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/account-opening")
public class AccountopenServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pan = request.getParameter("pan");
        String aadhaar = request.getParameter("aadhaar");

        // Perform additional validation if needed

        // For demonstration, print received data to console
        System.out.println("First Name: " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Email: " + email);
        System.out.println("Phone: " + phone);
        System.out.println("PAN: " + pan);
        System.out.println("Aadhaar: " + aadhaar);

        // Here you would typically process this data further (e.g., store in database, send confirmation email)
        // Redirect to a success page or another appropriate page after processing
        response.sendRedirect("account-open-success.jsp");
    }
}

