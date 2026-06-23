<!DOCTYPE html>
<html>
<head>

    <title>Student Management System</title>

    <link rel="stylesheet"
          href="css/style.css">

</head>

<body>

<div class="container">

    <div class="card">

        <h1>Add Student</h1>

        <form action="addStudent"
              method="post">

            <input type="text"
                   name="name"
                   placeholder="Enter Name"
                   required>

            <input type="email"
                   name="email"
                   placeholder="Enter Email"
                   required>

            <input type="text"
                   name="course"
                   placeholder="Enter Course"
                   required>

            <button type="submit">
                Save Student
            </button>

        </form>

        <br>

        <center>
            <a href="viewStudents"
               class="add-btn">
                View Students
            </a>
        </center>

    </div>

</div>

</body>
</html>