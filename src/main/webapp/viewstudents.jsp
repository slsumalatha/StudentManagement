<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="com.studentapp.dto.Student" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>View Students</title>

<style>

body {
    font-family: Arial, sans-serif;
    background: #f4f6fb;
    margin: 0;
    padding: 30px;
}

.container {
    max-width: 1100px;
    margin: auto;
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

h1 {
    color: #222;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th {
    background: #4f46e5;
    color: white;
    padding: 12px;
}

td {
    padding: 12px;
    border-bottom: 1px solid #ddd;
}

/* Delete button */

.delete-btn {
    display: inline-block;
    padding: 7px 14px;
    background: #ef4444;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.delete-btn:hover {
    background: #dc2626;
}

.back-btn {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    background: #4f46e5;
    color: white;
    text-decoration: none;
    border-radius: 6px;
}

</style>

</head>


<body>

<div class="container">

<h1>Student Records</h1>


<%

ArrayList<Student> list =
    (ArrayList<Student>) request.getAttribute("stdlist");

%>
<%if(request.getParameter("success")!=null){ %>
<%=request.getParameter("success") %>
<%} %>
<table>

<thead>

<tr>

    <th>SID</th>

    <th>Name</th>

    <th>Phone</th>

    <th>Email</th>

    <th>Branch</th>

    <th>Location</th>

    <th>Action</th>

</tr>

</thead>


<tbody>

<%

if (list != null && !list.isEmpty()) {

    for (Student st : list) {

%>

<tr>

    <td><%= st.getSid() %></td>

    <td><%= st.getSname() %></td>

    <td><%= st.getPhone() %></td>

    <td><%= st.getEmail() %></td>

    <td><%= st.getBranch() %></td>

    <td><%= st.getLocation() %></td>

    <td>

        <a href="Delete?Sid=<%=st.getSid()%>">
        <button type="button">Delete</button>
        </a>
    </td>

</tr>


<%

    }

} else {

%>

<tr>

    <td colspan="7" style="text-align:center;">

        No students found.

    </td>

</tr>

<%

}

%>

</tbody>

</table>


<a href="dashboard.jsp" class="back-btn">

    Back to Dashboard

</a>


</div>

</body>

</html>