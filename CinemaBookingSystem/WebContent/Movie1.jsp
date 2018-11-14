<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="JavaClasses.*" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<%
	CinemaDetails c1 = new CinemaDetails();
	CinemaDetailsDAO d1 = new CinemaDetailsDAO();
	String sql = "Select * from cinemadetails where Sno=1;";
	c1 = d1.fetchRecord(sql);
%>
<title>Movie Details : <%=c1.getName() %></title>
</head>
<body>
<h1><%=c1.getName() %></h1>
<hr width=500>
<a href="VenueSelector.jsp"><button class="button button2">Book</button></a>
<h4><%=c1.getGenre() %></h4>
<h4><%=c1.getCertification() %></h4>
<h4><%=c1.getRun_time() %> mins</h4>
<h4>Released : <b><%=c1.getDt()%></b></h4>

</body>
</html>