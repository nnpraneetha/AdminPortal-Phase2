<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy</title>
 <link type="text/css" rel="stylesheet" href="css/login.css"> 
</head>
<body style="background-color:paleturquoise">
	
	<center><h1>Admin Login</h1></center><br/>
	<form action="adminLoginAction.jsp" method="post">
		<div class="div1">
			<label>Username : </label>  
		    <input type="text" placeholder="Enter Username" name="username" required> 
		    <label>Password : </label>   
		    <input type="password" placeholder="Enter Password" name="password" required>  
		    <button type="submit">Login</button>   
		</div>
	</form>

</body>
</html>