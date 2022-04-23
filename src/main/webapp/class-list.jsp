<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class-list</title>
<link type="text/css" rel="stylesheet" href="css/tablestyle.css">
<style type="text/css">
		input[type=submit] {
		  background-color: paleturquoise;
		  border: 2px solid black;
		  color: black;
		  padding: 10px 32px;
		  text-decoration: none;
		  margin: 4px 2px;
		  cursor: pointer;
		}
	</style>
</head>
<body align="center">

	<jsp:include page="main-menu.jsp"></jsp:include>
	<br/><h2>Classes List</h2><br/>
	
	<table border="1">
		<tr>
			<th>Class</th>
			<th>Subject Name</th>
			<th>Teacher</th>
			<th>Time</th>		
		</tr>
		<c:forEach var="c" items="${classList }">
			<tr>
				<td>${c.classname}</td>
				<td>${c.subname}</td>
				<td>${c.teacher}</td>	
				<td>${c.time}</td>
			</tr>
		</c:forEach>
	</table><br><br>
	
	<form action="assignteacher.jsp" method="post">
		<label><b>To assign teacher to a class for a subject:</b></label>
		<input  type="Submit" value="Assign teacher"/>
	</form>
	
	
			
	
</body>
</html>