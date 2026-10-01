<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.studentapp.dto.Student" %>

<%
Student s = (Student) session.getAttribute("student");

if (s == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Student Dashboard</title>

<link rel="stylesheet" href="dashboard.css">
<style>
     body{
           backgroundColor:blue;
     }
</style>

</head>

<body>

<!-- TOP NAVIGATION -->

<nav class="navbar">

    <div class="logo">

        Welcome, <%=s.getSname()%>

    </div>


    <div class="nav-links">

        <%
if (s != null && s.getSid() == 1) {
%>

<a href="viewstudents">View Students</a>

<%
}
%>

        <a href="update.jsp">Update</a>

        <a href="profile.jsp">View Profile</a>

        <a href="login.jsp" class="logout">
            Logout
        </a>

    </div>

</nav>


<!-- MAIN CONTENT -->

<main class="main-content">

    <section class="welcome-section">

        <h1>
            Welcome to Student Dashboard
        </h1>

        <p>
            Manage your student information easily
        </p>

    </section>

</main>


</body>

</html>