<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.student.model.Student" %>

<html>
<head>
    <link rel="stylesheet"
          href="css/style.css">
    <title>Students</title>
</head>
<body>
<div class="container">
    <h1>Student List</h1>

    <a href="index.jsp"
       class="add-btn">
        Add Student
    </a>

<table>

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

            <a class="edit-btn"
               href="editStudent?id=<%= s.getId() %>">
                Edit
            </a>

            |

            <a class="delete-btn"
               href="deleteStudent?id=<%= s.getId() %>"
               onclick="return confirm('Delete this student?')">
                Delete
            </a>

        </td>

    </tr>

    <%
        }
    %>

</table>
</div>

</body>
</html>