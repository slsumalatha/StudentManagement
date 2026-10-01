package com.studentapp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentapp.dao.StudentDao;
import com.studentapp.dao.StudentDaoImplement;
import com.studentapp.dto.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/signup")
public class SignUp extends GenericServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    	StudentDao st=new StudentDaoImplement();
    	Student s=new Student();
    	
    	PrintWriter out=res.getWriter();
    	
    	s.setSname(req.getParameter("name"));
    	s.setPhone(Long.parseLong(req.getParameter("phone"))); //parseLong: convert phone string into long phone
    	s.setEmail(req.getParameter("email"));
    	s.setLocation(req.getParameter("loc"));
    	s.setBranch(req.getParameter("branch"));
    	
    	String password=req.getParameter("password");
    	String confirm=req.getParameter("confirm");
    	
    	if(password.equals(confirm)) {
    		s.setPassword(password);
    		if(st.insertStudent(s)) {
    			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
    			req.setAttribute("success","Sign Up Successfully...");
    			rd.forward(req, res);
    		}
    		else {
//        		out.print("Sign up failed....");
    			RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
    			req.setAttribute("fail", "Sign up failed");
    			rd.forward(req, res);
        	}
    	}
    	else {
//    		out.print("Password Mismatch...");
    		RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
			req.setAttribute("fail", "Password Mismatch");
			rd.forward(req, res); //sending it to signup.jsp
    	}
    	
            	
    	
    	
    	

    }
}