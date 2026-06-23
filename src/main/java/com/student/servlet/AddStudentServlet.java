package com.student.servlet;

import com.student.dao.StudentDAO;
import com.student.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        if(name == null || name.trim().isEmpty()) {
            response.getWriter().println("Name cannot be empty");
            return;
        }

        if(course == null || course.trim().isEmpty()) {
            response.getWriter().println("Course cannot be empty");
            return;
        }

        String emailRegex =
                "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";

        if(!email.matches(emailRegex)) {
            response.getWriter().println("Invalid email format");
            return;
        }

        if(StudentDAO.emailExists(email)) {
            response.getWriter().println("Email already exists");
            return;
        }

        Student student = new Student();

        student.setName(name);
        student.setEmail(email);
        student.setCourse(course);

        StudentDAO dao = new StudentDAO();

        if (dao.addStudent(student)) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}