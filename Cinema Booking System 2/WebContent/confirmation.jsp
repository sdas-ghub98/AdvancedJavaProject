<%@page import="Model.Movie"%>
<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String url = request.getHeader("referer");
	if (url == null) {
		response.sendRedirect("index.jsp");
	}
	
	String seats = (String) session.getAttribute("seats");
	seats = seats.substring(0, seats.length()-1);
	String movietime = (String) session.getAttribute("movietime");
	String movievenue = (String) session.getAttribute("movievenue");
	String moviedate = (String) session.getAttribute("moviedate");
	Customer cust = (Customer) session.getAttribute("customer");
	Movie movie = (Movie) session.getAttribute("movie");
	int total_price = (int) session.getAttribute("price");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Payment - Cinema Book Online</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="conf.css">
<meta name="robots" content="noindex,follow" />
</head>
<body>

	<div class="checkout-panel">
		<div class="panel-body">
			<h2 class="title">Checkout</h2>

			<div class="progress-bar">
				<div class="step "></div>
				<div class="step"></div>
				<div class="step"></div>
			</div>

			<div class="input-fields">
				<div class="column-1">
					<h4>Name : <%=cust.getName() %></h4>
					<h4>Mobile : <%=cust.getMobile() %></h4>
					<h4>Movie : <%=movie.getName() %></h4>
					<h4>Time : <%=movietime %></h4>
					<h4>Date : <%=moviedate %></h4>
					<h4>Venue : <%=movievenue %></h4>
					<h4>Seat(s) : <%=seats %></h4>
				</div>
				<div class="column-2">
					<h4>Price to be paid : Rs.<%=total_price %></h4>
				</div>
			</div>
		</div>

		<div class="panel-footer">
			<a style="margin: auto;" href="payment.jsp"><button class="btn next-btn">Next</button></a>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="conf.js"></script>
</body>
</html>