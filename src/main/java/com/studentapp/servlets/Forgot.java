package com.studentapp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentapp.dao.StudentDao;
import com.studentapp.dao.StudentDaoImplement;
import com.studentapp.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/forgotpassword")
public class Forgot  extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	StudentDao st=new StudentDaoImplement();
	String email=req.getParameter("email");
	long phone=Long.parseLong(req.getParameter("phone"));
	Student s=st.getStudent(email,phone);
	PrintWriter out=resp.getWriter();
	
	if(s!=null) {
		if(req.getParameter("password").equals(req.getParameter("confirm"))) {
			if(s.getPassword().equals(req.getParameter("confirm"))) {
				out.print("This password is already used");
			}else {
				s.setPassword(req.getParameter("confirm"));
				if(st.updateStudent(s)) {
					out.print("password updated");
					RequestDispatcher rd=req.getRequestDispatcher("forgotpassword.jsp");
					req.setAttribute("fail","Password updated successfully....");
					rd.forward(req, resp);
				}
				else {
					out.print("some thing went wrong....");
				}
			}
		}else {
			out.print("password missmatch");
		}
	}else {
		out.print("no data found..");
	}
	
	
	
	
	
	
}
}
