<%@ page import="com.student.model.Student" %>

<%
    Student s = (Student) request.getAttribute("student");
%>

<html>
<head>
    <title>Edit Student</title>

    <link rel="stylesheet"
          href="css/style.css">

</head>

<body>

<div class="container">

    <div class="card">

        <h2>Edit Student</h2>

        <form action="updateStudent"
              method="post">

            <input type="hidden"
                   name="id"
                   value="<%= s.getId() %>">

            <input type="text"
                   name="name"
                   value="<%= s.getName() %>"
                   required>

            <input type="email"
                   name="email"
                   value="<%= s.getEmail() %>"
                   required>

            <input type="text"
                   name="course"
                   value="<%= s.getCourse() %>"
                   required>

            <button type="submit">
                Update Student
            </button>

        </form>

    </div>

</div>
</body>
</html>