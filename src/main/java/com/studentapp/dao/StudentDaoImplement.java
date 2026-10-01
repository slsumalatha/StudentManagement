package com.studentapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.studentapp.conn.Connect;
import com.studentapp.dto.Student;

public class StudentDaoImplement implements StudentDao{
	
	Connection con=null;
	public StudentDaoImplement() {
		con=Connect.getConn();
	}
	@Override
	public boolean insertStudent(Student s) {
		String query="INSERT INTO STUDENT VALUES(0,?,?,?,?,?,?,SYSDATE())";
		PreparedStatement ps=null;
		int res=0;
		
			try {
				ps=con.prepareStatement(query);
//				String name=s.getSname();
//				ps.setString(1, name);
				ps.setString(1,s.getSname());
				ps.setLong(2,s.getPhone());
				ps.setString(3,s.getEmail());
				ps.setString(4,s.getBranch());
				ps.setString(5,s.getLocation());
				ps.setString(6,s.getPassword());
				
				res=ps.executeUpdate();		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(res>0)
				return true;
			else 
				return false;
	}
//===========================================================================
	@Override
	public boolean updateStudent(Student s) {
		// TODO Auto-generated method stub
		String query="UPDATE STUDENT SET SNAME=?, EMAIL=?, PHONE=?, BRANCH=?, LOCATION=?, PASSWORD=? WHERE SID=?";
		PreparedStatement ps=null;
		int res=0;
		try {
			ps=con.prepareStatement(query);
			
			ps.setString(1, s.getSname());
			ps.setString(2, s.getEmail());
			ps.setLong(3,   s.getPhone());
			ps.setString(4, s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6, s.getPassword());
			ps.setInt(7, s.getSid());
			
			res=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res>0)
			return true;
		else
		
		return false;
	}
//=============================================================================
	@Override
	public boolean deleteStudent(Student s) {
		String query = "Delete from student where sid=? and sid!=1";
		PreparedStatement ps = null;
		int res = 0;
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, s.getSid());

			res = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (res > 0)
			return true;
		else
			return false;
	}
//============================================================================
	@Override
	public Student getStudent(String email, String password) {
		// TODO Auto-generated method stub
		String query=("SELECT * FROM STUDENT WHERE EMAIL=? AND PASSWORD=?");
		PreparedStatement ps=null;
		Student s=null;
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				s=new Student();
//				int id=rs.gentInt("sid");
//				s.setSid(id);
				
				s.setSid(rs.getInt("sid"));
				s.setSname(rs.getString("sname"));
				s.setPhone(rs.getLong("phone"));
				s.setEmail(rs.getString("email"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return s;
	}
//===============================================================================
	@Override
	public Student getStudent(String email, long phone) {
		// TODO Auto-generated method stub
		String query = "SELECT * FROM STUDENT WHERE EMAIL=? AND PHONE=?";
	    Student s = null;

	    try {
	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, email);
	        ps.setLong(2, phone);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            s = new Student();

	            s.setSid(rs.getInt("sid"));
	            s.setSname(rs.getString("sname"));
	            s.setPhone(rs.getLong("phone"));
	            s.setEmail(rs.getString("email"));
	            s.setBranch(rs.getString("branch"));
	            s.setLocation(rs.getString("location"));
	            s.setPassword(rs.getString("password"));
	            s.setDate(rs.getString("date"));
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return s;
		
	}
	@Override
	public ArrayList<Student> getStudent() {
		// TODO Auto-generated method stub
String query="SELECT * FROM STUDENT WHERE SID!=1";
		
		ArrayList<Student> list=new ArrayList<Student>();
		PreparedStatement ps=null;
		Student s=null;
	    try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				s=new Student();
				s.setSid(rs.getInt("sid"));
				s.setSname(rs.getString("sname"));
				s.setPhone(rs.getLong("phone"));
				s.setEmail(rs.getString("email"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));
				list.add(s);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	

}
