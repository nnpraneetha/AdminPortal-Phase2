<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Class-report</title>
	<link type="text/css" rel="stylesheet" href="css/tablestyle.css">
	<style type="text/css">
		input[type=submit] {
		  background-color: paleturquoise;
		  border: 2px solid black;
		  color: black;
		  padding: 10px 32px;
		  text-decoration: none;
		  margin: 50px 100px;
		  cursor: pointer;
		  float:right;
		}
	</style>
</head>
<body>
	<jsp:include page="main-menu.jsp"></jsp:include>	
	<form action="selectClass.jsp" method="post">
		<input  type="Submit" value="Back"/>
	</form>
	
	<br/><h2>Class Report</h2><br/>
	<pre style="font-family:verdana">
		  <b>List of Subjects:</b>
	</pre>
	
	<table border="1">
		<tr>
			<th>Code</th>
			<th>Subject Name</th>
			<th>Shortcut</th>
			<th>Department</th>
			
		</tr>
		<c:forEach var="subject" items="${crsub }">
			<tr>
				<td>${subject.code}</td>
				<td>${subject.subname}</td>
				<td>${subject.shortcut}</td>
				<td>${subject.department }</td>	
			</tr>
		</c:forEach>
	</table><br>
	
	<pre style="font-family:verdana">
		  <b>List of Teachers:</b>
	</pre>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Teacher Name</th>
			<th>Designation</th>
			
		</tr>
		<c:forEach var="teacher" items="${crt }">
			<tr>
				<td>${teacher.tid}</td>
				<td>${teacher.tname}</td>
				<td>${teacher.designation}</td>
			</tr>
		</c:forEach>
	</table><br>
	
	<pre style="font-family:verdana">
		  <b>List of Students:</b>
	</pre>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Student Name</th>
			
		</tr>
		<c:forEach var="student" items="${crs }">
			<tr>
				<td>${student.sid}</td>
				<td>${student.sname}</td>
			</tr>
		</c:forEach>
	</table><br><br><br>
		
	
</body>
</html>