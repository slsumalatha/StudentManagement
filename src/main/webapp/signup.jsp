<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Student Management - Sign Up</title>

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
    background: linear-gradient(135deg, #eef2ff, #f8fafc);
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    padding: 30px;
    background-image:linear-gradient(to bottom, #00C4CC, #7B2FF7);
}


/* =========================
   SIGNUP CONTAINER
========================= */

.signup-container {
    width: 100%;
    max-width: 650px;
}


/* =========================
   CARD
========================= */

.signup-card {
    background:white;

    padding: 40px;

    border-radius: 16px;

    box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
}


/* =========================
   HEADER
========================= */

.signup-header {
    text-align: center;
    margin-bottom: 30px;
}

.signup-header h1 {
    color: #1f2937;
    font-size: 30px;
    margin-bottom: 8px;
}

.signup-header p {
    color: #6b7280;
    font-size: 14px;
}


/* =========================
   FORM
========================= */

.signup-form {
    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 18px;
}


/* =========================
   INPUT GROUP
========================= */

.input-group {
    display: flex;
    flex-direction: column;
}


.input-group.full {
    grid-column: span 2;
}


.input-group label {
    font-size: 20px;
    font-weight: 600;
    color: #374151;

    margin-bottom: 7px;
}


.input-group input {
    width: 100%;

    padding: 12px 14px;

    border: 1px solid #d1d5db;

    border-radius: 8px;

    font-size: 14px;

    outline: none;

    transition: all 0.3s ease;
}


.input-group input:focus {
    border-color: #4f46e5;

    box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
}


.input-group input::placeholder {
    color: #9ca3af;
}


/* =========================
   SIGNUP BUTTON
========================= */

.signup-button {
    grid-column: span 2;

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


.signup-button:hover {
    background: #4338ca;

    transform: translateY(-1px);
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
   LOGIN LINK
========================= */

.login-link {
    text-align: center;

    margin-top: 22px;

    font-size: 14px;

    color: #6b7280;
}


.login-link a {
    color: #4f46e5;

    text-decoration: none;

    font-weight: 600;

    margin-left: 4px;
}


.login-link a:hover {
    text-decoration: underline;
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    margin-top: 20px;

    font-size: 12px;

    color: #9ca3af;
}


/* =========================
   MOBILE
========================= */

@media (max-width: 600px) {

    body {
        padding: 15px;
    }

    .signup-card {
        padding: 25px;
    }

    .signup-form {
        grid-template-columns: 1fr;
    }

    .input-group.full {
        grid-column: span 1;
    }

    .signup-button {
        grid-column: span 1;
    }

    .signup-header h1 {
        font-size: 25px;
    }

}

</style>

</head>


<body>


<div class="signup-container">


    <div class="signup-card">


        <!-- Header -->

        <div class="signup-header">

            <h1>Create Account</h1>

            <p>
                Register as a student to access the Student Management System
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


        <!-- Signup Form -->

        <form action="signup"
              method="post"
              class="signup-form">


            <!-- Name -->

            <div class="input-group">

                <label>Full Name</label>

                <input
                    type="text"
                    name="name"
                    placeholder="Enter your name"
                    required>

            </div>


            <!-- Phone -->

            <div class="input-group">

                <label>Phone Number</label>

                <input
                    type="tel"
                    name="phone"
                    placeholder="Enter phone number"
                    required>

            </div>


            <!-- Email -->

            <div class="input-group">

                <label>Email</label>

                <input
                    type="email"
                    name="email"
                    placeholder="Enter your email"
                    required>

            </div>


            <!-- Location -->

            <div class="input-group">

                <label>Location</label>

                <input
                    type="text"
                    name="loc"
                    placeholder="Enter your location"
                    required>

            </div>


            <!-- Branch -->

            <div class="input-group">

                <label>Branch</label>

                <input
                    type="text"
                    name="branch"
                    placeholder="Enter your branch"
                    required>

            </div>


            <!-- Password -->

            <div class="input-group">

                <label>Password</label>

                <input
                    type="password"
                    name="password"
                    placeholder="Enter password"
                    required>

            </div>


            <!-- Confirm Password -->

            <div class="input-group full">

                <label>Confirm Password</label>

                <input
                    type="password"
                    name="confirm"
                    placeholder="Re-enter your password"
                    required>

            </div>


            <!-- Signup Button -->

            <button
                type="submit"
                class="signup-button">

                Create Account

            </button>


        </form>


        <!-- Login -->

        <div class="login-link">

            Already have an account?

            <a href="login.jsp">
                Login
            </a>

        </div>


    </div>




</div>


</body>

</html>