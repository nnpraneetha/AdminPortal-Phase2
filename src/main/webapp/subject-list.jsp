<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Subject-list</title>
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
	<br/><h2>Subjects List</h2>

	
	
	<table border="1">
		<tr>
			<th>Code</th>
			<th>Subject Name</th>
			<th>Shortcut</th>
			<th>Department</th>
			
			
		</tr>
		<c:forEach var="subject" items="${subjectList }">
			<tr>
				<td>${subject.code}</td>
				<td>${subject.subname}</td>
				<td>${subject.shortcut}</td>
				<td>${subject.department }</td>	
			</tr>
		</c:forEach>
	</table><br>
	
	
	<br><br>
	<form action="selectClass2.jsp" method="post">
			<input  type="Submit" value="Back"/>
		</form>
	
		
</body>
</html>