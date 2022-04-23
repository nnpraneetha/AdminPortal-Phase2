<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Teacher-list</title>
	<link type="text/css" rel="stylesheet" href="css/tablestyle.css">
	
</head>
<body align="center">

	<jsp:include page="main-menu.jsp"></jsp:include>	
	<br/><h2>Teachers List</h2>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Designation</th>
			<th>Email</th>
			<th>Age</th>		
		</tr>
		<c:forEach var="teacher" items="${teacherList }">
			<tr>
				<td>${teacher.tid}</td>
				<td>${teacher.firstname}</td>
				<td>${teacher.lastname}</td>	
				<td>${teacher.designation}</td>
				<td>${teacher.email}</td>
				<td>${teacher.age}</td>
			</tr>
		</c:forEach>
	</table>
			
</body>
</html>