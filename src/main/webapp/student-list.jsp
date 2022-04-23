<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-list</title>
	<link type="text/css" rel="stylesheet" href="css/tablestyle.css"> 
</head>
<body align="center">

	<jsp:include page="main-menu.jsp"></jsp:include>
	<br/><h2>Students List</h2><br/>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Class</th>
			<th>Email</th>
			<th>Age</th>
			
		</tr>
		<c:forEach var="student" items="${studentList }">
			<tr>
				<td>${student.sid}</td>
				<td>${student.fname}</td>
				<td>${student.lname}</td>	
				<td>${student.classname}</td>	
				<td>${student.email}</td>	
				<td>${student.age}</td>	
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>