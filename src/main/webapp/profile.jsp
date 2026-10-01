<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.studentapp.dto.Student" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Student Details</title>

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;

    font-family: Arial, sans-serif;

    background: linear-gradient(
        135deg,
        #eef2ff,
        #fce7f3
    );

    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;
}


/* Main container */

.student-container {

    width: 800px;

    background: white;

    padding: 35px;

    border-radius: 15px;

    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}


/* Heading */

.student-container h2 {

    text-align: center;

    color: #333;

    margin-bottom: 25px;
}


/* Table */

.student-table {

    width: 100%;

    border-collapse: collapse;

    overflow: hidden;

    border-radius: 8px;
}


/* Table heading */

.student-table th {

    background: #4f46e5;

    color: white;

    padding: 15px;

    text-align: left;

    font-size: 15px;
}


/* Table data */

.student-table td {

    padding: 15px;

    border-bottom: 1px solid #ddd;

    color: #333;

    font-size: 15px;
}


/* Alternate row */

.student-table tbody tr:hover {

    background-color: #f5f5ff;
}


/* Back button */

.back-btn {

    display: inline-block;

    margin-top: 25px;

    padding: 11px 22px;

    background: #4f46e5;

    color: white;

    text-decoration: none;

    border-radius: 7px;

    font-size: 15px;
}


.back-btn:hover {

    background: #3730a3;
}


/* Mobile responsive */

@media (max-width: 700px) {

    .student-container {

        width: 95%;

        padding: 20px;

        overflow-x: auto;
    }

    .student-table {

        min-width: 650px;
    }

}

</style>

</head>


<body>


<%

Student s = (Student) session.getAttribute("student");

%>


<div class="student-container">

    <h2>Student Details</h2>


    <table class="student-table">

        <thead>

            <tr>

                <th>SID</th>

                <th>Name</th>

                <th>Phone</th>

                <th>Email</th>

                <th>Location</th>

                <th>Branch</th>

            </tr>

        </thead>


        <tbody>

            <tr>

                <td><%= s.getSid() %></td>

                <td><%= s.getSname() %></td>

                <td><%= s.getPhone() %></td>

                <td><%= s.getEmail() %></td>

                <td><%= s.getLocation() %></td>

                <td><%= s.getBranch() %></td>

            </tr>

        </tbody>

    </table>


    <a href="dashboard.jsp" class="back-btn">
        Back to Dashboard
    </a>


</div>


</body>

</html>