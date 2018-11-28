<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cinema Book Online</title>
<link rel="stylesheet" href="style.css"/>
</head>
<body style="background: url('resources/background.jpg')">
	<div style="margin: auto;width: 500px;height: 150px;background-color: white;margin-top: 150px;padding-top: 20px;">
		<p style="font-size: 24px; text-align: center;">Error! Please check details or try registering with different user name</p>
		<input style="margin-left: 217px;" id="submit1" type = "submit" value="redirect" onclick = "fun()">
	</div>
	<footer style="bottom: 0;position:fixed;">
		<p>&copy Sourish and Team 2018</p>
	</footer>
</body>
<script>
  
function fun() { 
    var url= document.getElementById("submit1"); 
    document.write("Redirecting in 1 second..."); 
    setTimeout(function(){window.location = 'registration.jsp';}, 1000); 
} 
</script>
</html>