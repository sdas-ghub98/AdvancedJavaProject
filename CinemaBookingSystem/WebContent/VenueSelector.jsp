<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Venues</title>
</head>
<body>
<%
	
%>
<h1>Venue 1 </h1>
<form action="Venue1Time" method="post">
	<input type="checkbox" name=t1 value="10:30"> 10:30 <br>
	<input type="checkbox" name=t2 value="12:30"> 12:30 <br>
	<input type="checkbox" name=t3 value="14:30"> 14:30 <br>
	<input type="checkbox" name=t4 value="16:30"> 16:30 <br>
	<input type="submit" id=b1 value="Submit">
</form>
 <hr width=500>
 
<h1>Venue 2 </h1>
<form action="Venue2Time" method="post">
	<input type="checkbox" name=t5 value="11:30"> 11:30 <br>
	<input type="checkbox" name=t6 value="13:30"> 13:30 <br>
	<input type="checkbox" name=t7 value="15:30"> 15:30 <br>
	<input type="checkbox" name=t8 value="17:30"> 17:30 <br>
	<input type="submit" id=b2 value="Submit">
</form>
</body>
</html>