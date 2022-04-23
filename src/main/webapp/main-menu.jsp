<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>main-menu</title>
	<style>
	body {
	  margin: 0;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	.topnav {
	  overflow: hidden;
	  background-color: #333;
	}
	
	.topnav a {
	  float: left;
	    background-color: #333;
	  color: #f2f2f2;
	  text-align: center;
	  padding: 20px 16px;
	  text-decoration: none;
	  font-size: 19px;
	}
	
	.topnav a:hover {
	  background-color: #ddd;
	  color: black;
	}
	.topnav a.last {
	  float:right;
	}
	
	</style>
</head>
<body>
	
	<!--  <div id="mainmenu" class="topnav">
	  <a href="SubjectServlet">Subjects</a>
	  <a href="TeacherServlet">Teachers</a>
	  <a href="ClassServlet">Classes</a>
	  <a href="StudentServlet">Students</a>
	  <a href="selectClass.jsp">Class Report</a> 
	  <a class="last" href="login.html">Logout</a>
	</div>
	-->
	<div id="mainmenu" class="topnav">
	<input type="hidden" name="option" value="LOGIN" />
	<c:url var="classesLink" value="ServiceServlet">
		<c:param name="option" value="CLASSES" />
	</c:url>
	
	
	<c:url var="teachersLink" value="ServiceServlet">
		<c:param name="option" value="TEACHERS" />
	</c:url>

	<c:url var="studentsLink" value="ServiceServlet">
		<c:param name="option" value="STUDENTS" />
	</c:url>
		
		<a  href="selectClass2.jsp">Subjects</a>
		<a  href="${teachersLink}">Teachers</a> 
		<a href="${classesLink}">Classes</a>
		<a  href="${studentsLink}">Students</a> 
		<a href="selectClass.jsp">Class Report</a> 		
		<a class="last" href="login.jsp">Log out</a>
	</div>
	
	
</body>
</html>