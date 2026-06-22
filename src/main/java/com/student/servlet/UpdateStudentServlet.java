package com.student.servlet;

import com.student.dao.StudentDAO;
import com.student.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Student student = new Student();

        student.setId(
                Integer.parseInt(request.getParameter("id")));

        student.setName(
                request.getParameter("name"));

        student.setEmail(
                request.getParameter("email"));

        student.setCourse(
                request.getParameter("course"));

        StudentDAO.updateStudent(student);

        response.sendRedirect("viewStudents");
    }
}