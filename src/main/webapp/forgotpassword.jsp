<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Student Management - Forgot Password</title>

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
           CONTAINER
        ========================= */

        .forgot-container {
            width: 100%;
            max-width: 450px;

            background: white;

            padding: 40px;

            border-radius: 16px;

            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
        }


        /* =========================
           HEADER
        ========================= */

        .forgot-header {
            text-align: center;

            margin-bottom: 28px;
        }

        .forgot-header h2 {
            color: #1f2937;

            font-size: 28px;

            margin-bottom: 8px;
        }

        .forgot-header p {
            color: #6b7280;

            font-size: 14px;

            line-height: 1.5;
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
           FORM
        ========================= */

        .forgot-form {
            display: flex;

            flex-direction: column;

            gap: 16px;
        }


        /* =========================
           INPUT
        ========================= */

        .forgot-form input {
            width: 100%;

            padding: 13px 14px;

            border: 1px solid #d1d5db;

            border-radius: 8px;

            font-size: 14px;

            outline: none;

            transition: 0.3s;
        }


        .forgot-form input:focus {
            border-color: #4f46e5;

            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
        }


        .forgot-form input::placeholder {
            color: #9ca3af;
        }


        /* =========================
           RESET BUTTON
        ========================= */

        .reset-button {
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


        .reset-button:hover {
            background: #4338ca;

            transform: translateY(-1px);
        }


        /* =========================
           LOGIN LINK
        ========================= */

        .login-link {
            text-align: center;

            margin-top: 25px;

            font-size: 14px;
        }


        .login-link a {
            color: #4f46e5;

            text-decoration: none;

            font-weight: 600;
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

            .forgot-container {
                padding: 28px 22px;
            }

            .forgot-header h2 {
                font-size: 25px;
            }

        }

    </style>

</head>


<body>


    <div>


        <div class="forgot-container">


            <!-- Header -->

            <div class="forgot-header">

                <h2>Forgot Password?</h2>

                <p>
                    Enter your registered details to reset your password.
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


            <!-- Forgot Password Form -->

            <form action="forgotpassword"
                  method="post"
                  class="forgot-form">


                <!-- Email -->

                <input
                    type="email"
                    name="email"
                    placeholder="Enter your email"
                    required>


                <!-- Phone -->

                <input
                    type="tel"
                    name="phone"
                    placeholder="Enter your phone number"
                    required>


                <!-- New Password -->

                <input
                    type="password"
                    name="password"
                    placeholder="Enter your new password"
                    required>


                <!-- Confirm Password -->

                <input
                    type="password"
                    name="confirm"
                    placeholder="Confirm your password"
                    required>


                <!-- Reset Button -->

                <button
                    type="submit"
                    class="reset-button">

                    Reset Password

                </button>


            </form>


            <!-- Back to Login -->

            <div class="login-link">

                <a href="login.jsp">
                    ← Back to Login
                </a>

            </div>


        </div>
    </div>


</body>

</html>