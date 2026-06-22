<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.student.model.Student" %>

<html>
<head>
    <title>Students</title>
</head>
<body>

<h1>Student List</h1>

<table border="1">

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Action</th>
    </tr>

    <%
        List<Student> students =
                (List<Student>) request.getAttribute("students");

        for(Student s : students){
    %>

    <tr>
        <td><%= s.getId() %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getEmail() %></td>
        <td><%= s.getCourse() %></td>
        <td>
            <a href="editStudent?id=<%= s.getId() %>">
                Edit
            </a>

            &nbsp; | &nbsp;

            <a href="deleteStudent?id=<%= s.getId() %>"
               onclick="return confirm('Delete this student?')">
                Delete
            </a>
        </td>

    </tr>

    <%
        }
    %>

</table>

</body>
</html>