package com.studentapp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentapp.dao.StudentDao;
import com.studentapp.dao.StudentDaoImplement;
import com.studentapp.dto.Student;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")

public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st = new StudentDaoImplement();
		PrintWriter out = resp.getWriter();
		Student s = st.getStudent(req.getParameter("identifier"),req.getParameter("pwd"));	
		HttpSession session=req.getSession(true);
		if(s != null) {
//			out.print("Login successfully ");
			
//			req.setAttribute("student", s);
			session.setAttribute("student", s);
			req.setAttribute("success","Login Successfully...");
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}else {
//			out.print("Login Failed");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			req.setAttribute("fail","Login Failed....");
			rd.forward(req, resp);
		}
		
	}
	

}