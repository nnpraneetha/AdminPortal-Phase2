package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import javaobjects.subject;
import javaobjects.classes;
import javaobjects.student;
import javaobjects.teacher;


public class DbQueries {

	public static List<student> getStudents() {

		List<student> students=new ArrayList<student>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try(
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from students");
		){
			while(rs.next()) {
				student s=new student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
				students.add(s);
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		

		return students;

	}

	public static List<teacher> getTeachers() {

		List<teacher> teachers=new ArrayList<teacher>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try(
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from teachers");
		){
			while(rs.next()) {
				teacher t=new teacher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
				teachers.add(t);
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		

		return teachers;

	}

	public static List<subject> getSubjects(String classname) {

		List<subject> subjects=new ArrayList<subject>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try(
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select s.* from subjects s, classsub cs where cs.class='"+classname+"' and s.subname=cs.subname");
		){
			while(rs.next()) {
				subject s=new subject(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				subjects.add(s);
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		

		return subjects;

	}

	public static List<classes> getClasses() {

		List<classes> c=new ArrayList<classes>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try(
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admindb","root","Pandu$01");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from classes");
		){
			while(rs.next()) {
				classes cls=new classes(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
				c.add(cls);
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		

		return c;

	}
}
