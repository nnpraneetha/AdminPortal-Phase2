<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ include file="/left-list.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Class</title>
	<style>
		select{
			width:200px;
		}
		input[type=submit] {
		  background-color: paleturquoise;
		  border: 2px solid black;
		  color: black;
		  padding: 5px 32px;
		  text-decoration: none;
		  margin: 4px 2px;
		  cursor: pointer;
		}
	</style>
</head>
<body align="center">
    <jsp:include page="main-menu.jsp"></jsp:include>
    <br><br>
     <form action="ClassReportServlet" method="get">
		  <select  name="classname">
		  	<option value="Class ">Class </option>
		  	<option value="A">A</option>
		  	<option value="B">B</option>
		  </select>
	  <input type="submit" value="submit"/>
	  </form>
	  	
	  
</body>
</html>