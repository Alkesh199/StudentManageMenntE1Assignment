<%@ page import="com.student.model.Student" %>

<%
    Student s = (Student) request.getAttribute("student");
%>

<html>
<head>
    <title>Edit Student</title>

    <style>

        body{
            font-family: Arial;
            background:#f4f4f4;
        }

        .container{
            width:400px;
            margin:50px auto;
            background:white;
            padding:20px;
            border-radius:10px;
        }

        input{
            width:100%;
            padding:10px;
            margin-top:10px;
        }

        button{
            width:100%;
            padding:10px;
            margin-top:15px;
        }

    </style>

</head>

<body>

<div class="container">

    <h2>Edit Student</h2>

    <form action="updateStudent" method="post">

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

</body>
</html>