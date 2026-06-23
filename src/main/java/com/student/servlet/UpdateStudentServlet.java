package com.student.servlet;

import com.student.dao.StudentDAO;
import com.student.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        // Name Validation
        if (name == null || name.trim().isEmpty()) {
            response.getWriter().println("Name cannot be empty");
            return;
        }

        // Course Validation
        if (course == null || course.trim().isEmpty()) {
            response.getWriter().println("Course cannot be empty");
            return;
        }

        // Email Validation
        String emailRegex =
                "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";

        if (!email.matches(emailRegex)) {
            response.getWriter().println("Invalid Email Format");
            return;
        }

        // Duplicate Email Validation
        if (StudentDAO.emailExistsForOtherStudent(email, id)) {
            response.getWriter()
                    .println("Email already exists for another student");
            return;
        }

        Student student = new Student();

        student.setId(id);
        student.setName(name);
        student.setEmail(email);
        student.setCourse(course);

        boolean updated = StudentDAO.updateStudent(student);

        if (updated) {
            response.sendRedirect("viewStudents");
        } else {
            response.getWriter().println("Failed to update student");
        }
    }
}