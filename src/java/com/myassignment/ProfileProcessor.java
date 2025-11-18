package com.myassignment; 

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProfileProcessor
 * This class handles the data submitted from the HTML form.
 */
@WebServlet(name = "ProfileProcessor", urlPatterns = {"/ProfileProcessor"})
public class ProfileProcessor extends HttpServlet {

    // Handles HTTP POST requests from the form
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Collect user information from the form parameters
        String name = request.getParameter("name");
        String studentID = request.getParameter("studentID");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        // 2. Set the collected data as attributes in the request object
        // This makes the data accessible in the target JSP page.
        request.setAttribute("name", name);
        request.setAttribute("studentID", studentID);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("introduction", introduction);

        // 3. Define the path to the JSP page for display
        String url = "/displayProfile.jsp";
        
        // 4. Forward the request (which now contains the data) to the JSP page
        // This is the demonstration of the interaction between Servlet and JSP.
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}