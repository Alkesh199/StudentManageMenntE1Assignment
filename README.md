# Student Management System

## Overview

Student Management System is a web-based CRUD application developed using Java Servlets, JSP, MySQL, Maven, and Apache Tomcat.

The application allows users to:

* Add a new student
* View all students
* Update student information
* Delete students
* Validate email format
* Prevent duplicate email registrations

---

## Technologies Used

* Java 21
* JSP
* Servlets
* MySQL
* Maven
* Apache Tomcat 10
* HTML
* CSS

---

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.student
│   │       ├── dao
│   │       ├── model
│   │       ├── servlet
│   │       └── util
│   │
│   ├── resources
│   │   └── .env
│   │
│   └── webapp
│       ├── css
│       ├── index.jsp
│       ├── viewStudents.jsp
│       └── editStudent.jsp
```

---

## Features

### Create Student

Add a new student with:

* Name
* Email
* Course

### View Students

Displays all students in a tabular format.

### Update Student

Edit existing student details.

### Delete Student

Delete a student record from the database.

### Validations

* Name cannot be empty
* Course cannot be empty
* Email format validation
* Duplicate emails are not allowed

---

## Prerequisites

Before running the application, ensure the following are installed:

* Java JDK 21
* Maven
* MySQL Server
* Apache Tomcat 10
* IntelliJ IDEA (Recommended)

---

## Database Setup

Create database:

```sql
CREATE DATABASE studentdb;
```

Use database:

```sql
USE studentdb;
```

Create table:

```sql
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100) NOT NULL
);
```

---

## Environment Configuration

Create a `.env` file inside:

```
src/main/resources
```

Example:

```env
DB_URL=jdbc:mysql://localhost:3306/studentdb
DB_USER=root
DB_PASSWORD=your_password
```

Do not commit the `.env` file to GitHub.

---

## Build Project

Clone repository:

```bash
git clone <repository-url>
```

Navigate to project:

```bash
cd StudentManagementSystem
```

Build project:

```bash
mvn clean package
```

---

## Run Application

1. Start MySQL Server.
2. Start Apache Tomcat.
3. Deploy the generated WAR file or run through IntelliJ.
4. Open browser.

Application URL:

```
http://localhost:8080/StudentManagementSystem_war_exploded/
```

---

## Screens

### Add Student

Allows creation of student records.

### Student List

Displays all students with Edit and Delete actions.

### Edit Student

Allows modification of existing student information.

---

## Future Enhancements

* Search Students
* Pagination
* Dashboard Statistics
* User Authentication
* Role Based Access Control
* REST API Integration

---

## Author

Alkesh Kumar

---

## License

This project is created for learning and educational purposes.
