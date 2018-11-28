<%@page import="Model.Customer"%>
<%@page import="Model.Movie"%>
<%@page import="Controller.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
	int id = Integer.parseInt(request.getParameter("movieId"));
	MovieDAO dao = new MovieDAO();

	Movie movie = dao.getMovieDetails(id);
	int time = movie.getRuntime();
	int hrs = time / 60;
	int mins = time % 60;
	String disp_time = hrs + " Hrs " + mins + " Mins";
	session.setAttribute("movie", movie);
%>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title><%=movie.getName()%> - Cinema Book Online</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<div class="container">
			<h2 class="logo">
				<i>Cinema Book Online</i>
			</h2>
			<nav>
				<ul>
					<%
						Customer cust = (Customer) session.getAttribute("customer");
						String url, query = request.getQueryString();
						if (query == null) {
							url = request.getRequestURL().toString();
						} else {
							url = request.getRequestURL().toString() + "?" + query;
						}
						session.setAttribute("url", url);
						if (cust == null) {
					%>
					<li><a href="registration.jsp">Login</a></li>
					<%
						} else {
					%>
					<li><p>
							Welcome,
							<%=cust.getName()%></p></li>
					<li><a href="Login">Sign out</a></li>
					<%
						}
					%>
				</ul>
			</nav>
		</div>
	</header>
	<div class="description">
		<h1><%=movie.getName()%></h1>
		<img src="resources/movie_image/<%=id%>.jpg">
		<h2>Genre:</h2>
		<p><%=movie.getGenre()%></p>
		<h2>Synopsis:</h2>
		<p><%=movie.getSynopsis()%></p>
		<h2>Cast:</h2>
		<p><%=movie.getCast()%></p>
		<button id="book1">Book</button>
		<br> <br> <i style="margin-left: 40px;"
			class="fa fa-calendar" aria-hidden="true"></i> <label><%=" " + movie.getRelease()%></label>
		<i style="margin-left: 10px;" class="fa fa-clock-o" aria-hidden="true"></i>
		<label><%=" " + disp_time%></label> <i style="margin-left: 10px;"
			class="fa fa-certificate" aria-hidden="true"></i> <label><%=" " + movie.getCertification()%></label>
	</div>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<div class="modal-header">
				<span class="close">&times;</span>
				<h1>Select Venue and Timing</h1>
			</div>
			<div class="modal-body">
				<div class="venue">
					<form id="venue1" action="Venue" method="post">
						<label>Venue: </label> <select name="venue">
							<option value="Venue 1">Venue 1</option>
							<option value="Venue 2">Venue 2</option>
						</select><br> <label>Date: </label> <select name="date">
							<option value="23rd Nov 2018">23rd Nov 2018</option>
							<option value="24th Nov 2018">24th Nov 2018</option>
							<option value="25th Nov 2018">25th Nov 2018</option>
						</select><br> <label>Time: </label> <select name="time">
							<option value="12:30 PM">12:30 PM</option>
							<option value="3:30 PM">3:30 PM</option>
							<option value="7:30 PM">7:30 PM</option>
							<option value="10:30 PM">10:30 PM</option>
						</select><br> <label>Price: Rs. 150/Seat</label><br> <input
							id="submit1" type="button" value="Proceed">
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<p>&copy Sourish and Team 2018</p>
	</footer>

	<script>
		var modal = document.getElementById('myModal');
		var btn = document.getElementById("book1");
		var span = document.getElementsByClassName("close")[0];
		btn.onclick = function() {
			modal.style.display = "block";
		}
		span.onclick = function() {
			modal.style.display = "none";
		}
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

		var form1 = document.getElementById('venue1');
		var submit1 = document.getElementById('submit1');
		var label1 = form1.getElementsByTagName('label')[3];
		var select1 = form1.getElementsByTagName('select')[0];
		
		submit1.onclick = function() {
			form1.submit();
			form1.reset();
			return false;
		}
		
		form1.onclick = function() {
			if (select1.value == "Venue 1") {
				label1.textContent = "Price: Rs. 150/Seat";
			}
			else {
				label1.textContent = "Price: Rs. 180/Seat";
			}
		}
	</script>
</body>
</html>