package com.student.servlet;

import com.student.dao.StudentDAO;
import com.student.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/editStudent")
public class EditStudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        Student student = StudentDAO.getStudentById(id);

        request.setAttribute("student", student);

        request.getRequestDispatcher("/editStudent.jsp")
                .forward(request, response);
    }
}