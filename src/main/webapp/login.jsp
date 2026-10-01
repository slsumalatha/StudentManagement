<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Student Management - Login</title>

<style>

/* =========================
   RESET
========================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* =========================
   BODY
========================= */

body {
    font-family: "Segoe UI", Arial, sans-serif;

    background: linear-gradient(135deg, rgb(128, 255, 255),violet);

    min-height: 100vh;

    display: flex;

    justify-content: center;

    align-items: center;

    padding: 20px;
}


/* =========================
   LOGIN CONTAINER
========================= */

.login-container {
    width: 100%;
    max-width: 420px;
}


/* =========================
   LOGIN CARD
========================= */

.login-card {
    background: white;

    padding: 40px;

    border-radius: 16px;

    box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
}


/* =========================
   HEADER
========================= */

.login-header {
    text-align: center;

    margin-bottom: 30px;
}

.login-header h1 {
    color: #1f2937;

    font-size: 30px;

    margin-bottom: 8px;
}

.login-header p {
    color: #6b7280;

    font-size: 14px;
}


/* =========================
   ERROR MESSAGE
========================= */

.error-message {
    background: #fef2f2;

    color: #b91c1c;

    border-left: 4px solid #ef4444;

    padding: 12px 15px;

    border-radius: 6px;

    margin-bottom: 20px;

    font-size: 14px;
}


/* =========================
   SUCCESS MESSAGE
========================= */

.success-message {
    background: #ecfdf5;

    color: #047857;

    border-left: 4px solid #10b981;

    padding: 12px 15px;

    border-radius: 6px;

    margin-bottom: 20px;

    font-size: 14px;
}


/* =========================
   FORM
========================= */

.login-form {
    display: flex;

    flex-direction: column;

    gap: 18px;
}


/* =========================
   INPUT GROUP
========================= */

.input-group {
    display: flex;

    flex-direction: column;
}


.input-group label {
    font-size: 14px;

    font-weight: 600;

    color: #374151;

    margin-bottom: 7px;
}


.input-group input {
    width: 100%;

    padding: 13px 14px;

    border: 1px solid #d1d5db;

    border-radius: 8px;

    font-size: 14px;

    outline: none;

    transition: 0.3s;
}


.input-group input:focus {
    border-color: #4f46e5;

    box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
}


.input-group input::placeholder {
    color: #9ca3af;
}


/* =========================
   LOGIN BUTTON
========================= */

.login-button {
    width: 100%;

    padding: 13px;

    border: none;

    border-radius: 8px;

    background: #4f46e5;

    color: white;

    font-size: 16px;

    font-weight: 600;

    cursor: pointer;

    transition: 0.3s;

    margin-top: 5px;
}


.login-button:hover {
    background: #4338ca;

    transform: translateY(-1px);
}


/* =========================
   LINKS
========================= */

.links {
    text-align: center;

    margin-top: 25px;

    font-size: 14px;

    color: #6b7280;
}


.links p {
    margin-bottom: 12px;
}


.links a {
    color: #4f46e5;

    text-decoration: none;

    font-weight: 600;
}


.links a:hover {
    text-decoration: underline;
}


/* =========================
   DIVIDER
========================= */

.divider {
    display: flex;

    align-items: center;

    gap: 10px;

    margin: 20px 0;

    color: #9ca3af;

    font-size: 12px;
}

.divider::before,
.divider::after {
    content: "";

    flex: 1;

    height: 1px;

    background: #e5e7eb;
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    margin-top: 20px;

    color: #9ca3af;

    font-size: 12px;
}


/* =========================
   MOBILE
========================= */

@media (max-width: 500px) {

    body {
        padding: 15px;
    }

    .login-card {
        padding: 28px 22px;
    }

    .login-header h1 {
        font-size: 26px;
    }

}

</style>

</head>


<body>


<div class="login-container">


    <div class="login-card">


        <!-- Header -->

        <div class="login-header">

            <h1>Welcome Back</h1>

            <p>
                Login to your Student Management account
            </p>

        </div>


        <!-- Error Message -->

        <%
        if(request.getAttribute("fail") != null) {
        %>

            <div class="error-message">

                <%=request.getAttribute("fail")%>

            </div>

        <%
        }
        %>


        <!-- Success Message -->

        <%
        if(request.getAttribute("success") != null) {
        %>

            <div class="success-message">

                <%=request.getAttribute("success")%>

            </div>

        <%
        }
        %>


        <!-- Login Form -->

        <form action="Login"
              method="post"
              class="login-form">


            <!-- Email -->

            <div class="input-group">

                <label>Email</label>

                <input
                    type="email"
                    name="identifier"
                    placeholder="Enter your email"
                    required>

            </div>


            <!-- Password -->

            <div class="input-group">

                <label>Password</label>

                <input
                    type="password"
                    name="pwd"
                    placeholder="Enter your password"
                    required>

            </div>


            <!-- Login Button -->

            <button
                type="submit"
                class="login-button">

                Login

            </button>


        </form>


        <!-- Links -->

        <div class="links">

            <p>
                Don't have an account?
                <a href="signup.jsp">Sign Up</a>
            </p>

            <div class="divider">
                OR
            </div>

            <p>
                <a href="forgotpassword.jsp">
                    Forgot Password?
                </a>
            </p>

        </div>


    </div>


    <div class="footer">

        © 2026 StudentApp | Student Management System

    </div>


</div>


</body>

</html>