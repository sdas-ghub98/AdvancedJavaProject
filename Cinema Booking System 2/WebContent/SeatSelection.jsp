<%@page import="Model.MovieSeats"%>
<%@page import="Controller.MovieDAO"%>
<%@page import="Model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
	Movie movie = (Movie) session.getAttribute("movie");
	List<String> occupied = new ArrayList<String>();
	
	MovieDAO dao = new MovieDAO();
	String time = (String) session.getAttribute("movietime");
	MovieSeats ms = dao.getMovieSeats(movie.getName().toLowerCase().replaceAll(" ", ""), time);
	
	if (ms != null) {
		String seats[] = ms.getSeats().split(",");
		for (String x : seats) {
			occupied.add(x);
		}
	} else {
		occupied.add("");
	}
%>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title><%=movie.getName()%> - Cinema Book Online</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	<div class="seat">
		<h1>
			Select seats for
			<%=movie.getName()%></h1>
		<form action="Bill" id="bills" method="post">
			<div>
				<%
					for (int i = 0; i < 9; i++) {
						for (int j = 0; j < 10; j++) {
							char a = (char) ('A' + j);
							String temp = "" + (i + 1) + a;
							if (j == 2 || j == 8) {
								if (occupied.contains(temp)) {
				%>
				&nbsp&nbsp&nbsp&nbsp <input class="input_checkbox_occupied"
					disabled="disabled" name="selected" type="checkbox"
					value="<%=i + 1%><%=a%>"><%=i + 1%><%=a%>
				<%
					} else {
				%>
				&nbsp&nbsp&nbsp&nbsp <input class="input_checkbox" name="selected"
					type="checkbox" value="<%=i + 1%><%=a%>"><%=i + 1%><%=a%>
				<%
					}
							} else {
								if (occupied.contains(temp)) {
				%>
				<input class="input_checkbox_occupied" disabled="disabled"
					name="selected" type="checkbox" value="<%=i + 1%><%=a%>"><%=i + 1%><%=a%>
				<%
					} else {
				%>
				<input class="input_checkbox" name="selected" type="checkbox"
					value="<%=i + 1%><%=a%>"><%=i + 1%><%=a%>
				<%
					}
							}
						}
						if (i == 2 || i == 5) {
				%>
				<br>
				<%
					}
				%>
				<br>
				<%
					}
				%>
				<input type="button" id="submit1" value="Proceed">
			</div>
		</form>
	</div>
	<footer>
		<p>&copy Sourish and Team 2018</p>
	</footer>
	<script>
		$('.input_checkbox').each(function() {
			$(this).hide().after('<img class="checkbox" />');

		});

		$('.input_checkbox_occupied').each(function() {
			$(this).hide().after('<img class="checkbox_occupied" />');

		});

		$('.checkbox').on(
				'click',
				function() {
					$(this).toggleClass('checked').prev().prop('checked',
							$(this).is('.checked'))
				});
	</script>
	<script type="text/javascript">
		var form1 = document.getElementById('bills');
		var submit1 = document.getElementById('submit1');
		var input1 = form1.getElementsByTagName('input');

		form1.onclick = function() {
			for (var i = 0; i < input1.length; i++) {
				if (input1[i].checked) {
					submit1.disabled = false;
					break;
				} else {
					submit1.disabled = true;
				}
			}
		}

		submit1.onclick = function() {
			form1.submit();
			form1.reset();
			return false;
		}
	</script>
</body>
</html>