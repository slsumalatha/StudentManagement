<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.studentapp.dto.Student" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Student</title>

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


/* Update box */

.update-container {

    width: 420px;

    background: white;

    padding: 35px;

    border-radius: 15px;

    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}


/* Heading */

.update-container h2 {

    text-align: center;

    margin-bottom: 30px;

    color: #333;

}


/* Labels */

label {

    display: block;

    margin-bottom: 7px;

    font-weight: bold;

    color: #444;
}


/* Input fields */

input[type="text"] {

    width: 100%;

    padding: 12px;

    margin-bottom: 20px;

    border: 1px solid #ccc;

    border-radius: 7px;

    font-size: 15px;

    outline: none;
}


input[type="text"]:focus {

    border-color: #4f46e5;

    box-shadow: 0 0 5px rgba(79, 70, 229, 0.25);
}


/* Update button */

input[type="submit"] {

    width: 100%;

    padding: 12px;

    border: none;

    border-radius: 7px;

    background: #4f46e5;

    color: white;

    font-size: 16px;

    cursor: pointer;
}


input[type="submit"]:hover {

    background: #3730a3;
}


/* Back button */

.back-btn {

    display: block;

    text-align: center;

    margin-top: 15px;

    padding: 12px;

    background: #6b7280;

    color: white;

    text-decoration: none;

    border-radius: 7px;
}


.back-btn:hover {

    background: #4b5563;
}

</style>

</head>


<body>


<%

Student s = null;

if(session.getAttribute("student") != null) {

    s = (Student) session.getAttribute("student");

}

%>


<div class="update-container">

    <h2>Update Student</h2>


    <form action="update" method="post">


        <label>Name</label>

        <input
            type="text"
            name="name"
            value="<%= s.getSname() %>"
        >


        <label>Branch</label>

        <input
            type="text"
            name="branch"
            value="<%= s.getBranch() %>"
        >


        <label>Location</label>

        <input
            type="text"
            name="location"
            value="<%= s.getLocation() %>"
        >


        <input
            type="submit"
            value="Update"
        >


        <a href="dashboard.jsp" class="back-btn">
            Back
        </a>


    </form>

</div>


</body>

</html>