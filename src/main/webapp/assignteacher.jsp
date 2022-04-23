<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign-teacher</title>
<style>
select{
	width:200px;
}
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
<link type="text/css" rel="stylesheet" href="css/tablestyle.css"> 

</head>
<body align="center">
	<jsp:include page="main-menu.jsp"></jsp:include>
	<br><br>
	<h2>Assign Teacher</h2><br>
	
	<form action="AssignTeacherServlet" method="post">
		 
			
			<table style="width:50%">
				<tr>
					<td><label>Teacher Name:</label></td>
					<td><select name="tname" >
						<option value="Name">Name</option>
						<option value="Narayana Rao">Narayana Rao</option>
						<option value="Rama Devi">Rama Devi</option>
						<option value="Uma Devi">Uma Devi</option>
						<option value="Padmavathi naradasu">Padmavathi naradasu</option>
						<option value="Nageswara Rao">Nageswara Rao</option>
						<option value="Lakshmi N">Lakshmi N</option>
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
					<td><label>Time:</label></td>
					<td><input type="text" name="time" required/></td>
				</tr>
				
				
			</table>
		
		
		<br/>
		<input type="submit" value="Submit"/>
		</form>
		
		
		
	
</body>
</html>