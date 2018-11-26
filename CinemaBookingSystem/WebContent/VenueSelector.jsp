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
	<input type="checkbox" name=time value="10:30" id="t1"> 10:30 <br>
	<input type="checkbox" name=time value="12:30" id="t2"> 12:30 <br>
	<input type="checkbox" name=time value="14:30" id="t3"> 14:30 <br>
	<input type="checkbox" name=time value="16:30" id="t4"> 16:30 <br>
	<input type="submit" id=b1 value="Submit">
</form>
 <hr width=500>
 
<h1>Venue 2 </h1>
<form action="Venue2Time" method="post">
	<input type="checkbox" name=time value="11:30" id="t5"> 11:30 <br>
	<input type="checkbox" name=time value="13:30" id="t6"> 13:30 <br>
	<input type="checkbox" name=time value="15:30" id="t7"> 15:30 <br>
	<input type="checkbox" name=time value="17:30" id="t8"> 17:30 <br>
	<input type="submit" id=b2 value="Submit">
</form>
</body>
</html>