<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>

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
            margin-top:15px;
            width:100%;
            padding:10px;
            background:#2196f3;
            color:white;
            border:none;
        }
    </style>

</head>

<body>

<div class="container">

    <h2>Add Student</h2>

    <form action="addStudent" method="post">

        <input
                type="text"
                name="name"
                placeholder="Name"
                required>

        <input
                type="email"
                name="email"
                placeholder="Email"
                required>

        <input
                type="text"
                name="course"
                placeholder="Course"
                required>

        <button type="submit">
            Save Student
        </button>

    </form>
    <br><br>

    <a href="viewStudents">
        View Students
    </a>

</div>

</body>
</html>