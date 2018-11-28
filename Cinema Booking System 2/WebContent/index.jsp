<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cinema Book Online</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="swiper.min.css">
<link rel="stylesheet" href="style.css">
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
	<div style="margin-top: 50px;">
		<h3 style="margin-left: 20px; color: #FFFFFF; margin-bottom: 7px;">What's
			Showing Now!</h3>
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=1"><img src="resources/1.jpg"
						alt="Goosebumps: the stories are alive"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=2"><img src="resources/2.jpg"
						alt="The host"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=3"><img src="resources/3.jpg"
						alt="Pirates of the caribbean"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=4"><img src="resources/4.jpg"
						alt="Black panther"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=5"><img src="resources/5.jpg"
						alt="Rogue one"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=6"><img src="resources/6.jpg"
						alt="The pursuit of happiness"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=7"><img src="resources/7.jpg"
						alt="Captain america"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=8"><img src="resources/8.jpg"
						alt="Justice league"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=9"><img src="resources/9.jpg"
						alt="Bohemian rhapsody"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=10"><img src="resources/10.jpg"
						alt="Baby driver"></a>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<div style="margin-top: 50px;">
		<h3 style="margin-left: 20px; color: #FFFFFF; margin-bottom: 7px;">Genre:
			Drama</h3>
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=2"><img src="resources/2.jpg"
						alt="The host"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=6"><img src="resources/6.jpg"
						alt="The pursuit of happiness"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=9"><img src="resources/9.jpg"
						alt="Bohemian rhapsody"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=10"><img src="resources/10.jpg"
						alt="Baby driver"></a>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<div style="margin-top: 50px;">
		<h3 style="margin-left: 20px; color: #FFFFFF; margin-bottom: 7px;">Genre:
			Fantasy and Action</h3>
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=1"><img src="resources/1.jpg"
						alt="Goosebumps: the stories are alive"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=3"><img src="resources/3.jpg"
						alt="Pirates of the caribbean"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=8"><img src="resources/8.jpg"
						alt="Justice league"></a>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<div style="margin-top: 50px;">
		<h3 style="margin-left: 20px; color: #FFFFFF; margin-bottom: 7px;">Genre:
			Sci - Fi</h3>
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=4"><img src="resources/4.jpg"
						alt="Black panther"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=5"><img src="resources/5.jpg"
						alt="Rogue one"></a>
				</div>
				<div class="swiper-slide">
					<a href="Movie.jsp?movieId=7"><img src="resources/7.jpg"
						alt="Captain america"></a>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<!-- Swiper JS -->
	<script src="swiper.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 1,
			spaceBetween : 30,
			loop : true,
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});
	</script>
	<footer>
		<p>&copy Sourish and Team 2018</p>
	</footer>
</body>
</html>