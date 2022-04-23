<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign-class</title>
<link type="text/css" rel="stylesheet" href="css/tablestyle.css"> 
<style>
input[type=submit] {
  background-color: paleturquoise;
  border: 2px solid black;
  color: black;
  padding: 10px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
select{
	width:200px;
}

</style>
</head>
<body align="center">
	
	<jsp:include page="main-menu.jsp"></jsp:include>
	<br><br>
	<h2>Assign Class for Subject</h2><br>
	
	<form action="AssignClassServlet" method="post">
		
		
			<table>
				<tr>
					<td><label>Subject Name:</label></td>
					<td><select name="subname">
					<option value="Name">Name</option>
					<option value="Search Engine">Search Engine</option>
					<option value="Information Security">Information Security</option>
					<option value="Mobile Communications">Mobile Communications</option>
					<option value="Embedded Systems">Embedded Systems</option>
					<option value="Maths">Maths</option>
					<option value="Physics">Physics</option>
					<option value="Biology">Biology</option>
					<option value="Chemistry">Chemistry</option>
					</select></td>
				</tr>
				
				<tr>
					<td><label>Class:</label></td>
					<td><select name="class">
						<option value="class">Class</option>
						<option value="A">A</option>
						<option value="B">B</option>
					</select></td>
				</tr>
				
				
			</table>
		<br/>
			<input type="submit" value="Submit">
	</form><br>
				
		
</body>
</html>