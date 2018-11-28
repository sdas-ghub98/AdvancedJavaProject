<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign-Up/Login Form - Cinema Book Online</title>
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="registration.css">
<script type="text/javascript">
	var numberCount = 0;
	function isnumber(evt) {
		evt = (evt) ? evt : window.event;
		var ch = (evt.which) ? evt.which : evt.keywhich;
		if (!(ch >= 48 && ch <= 57) && numberCount <= 10) {
			alert("Enter numbers only");
			return false;
		} else if (numberCount >= 10) {
			alert("Invalid Number");
			numberCount = 0;
			document.getElementById("mobileno").value = "";
			return false;
		} else {
			numberCount++;
		}
	}
</script>
</head>
<body>
	<div class="form">

		<ul class="tab-group">
			<li class="tab active"><a href="#login">Log In</a></li>
			<li class="tab"><a href="#signup">Sign Up</a></li>
		</ul>

		<div class="tab-content">

			<div id="login">
				<h1>Welcome Back!</h1>

				<form action="Login" method="post">

					<div class="field-wrap">
						<label> User Name<span class="req">*</span>
						</label> <input name="user" type="text" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input name="pass" type="password" required autocomplete="off" />
					</div>

					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>

					<button class="button button-block">Log In</button>

				</form>

			</div>

			<div id="signup">
				<h1>Sign Up for Free</h1>

				<form action="Register" method="post">

					<div class="top-row">
						<div class="field-wrap">
							<label> First Name<span class="req">*</span>
							</label> <input type="text" name="first_name" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> Last Name </label> <input name="last_name" type="text" autocomplete="off" />
						</div>
					</div>

					<div class="field-wrap">
						<label> Mobile Number<span class="req">*</span>
						</label> <input name="mobile_no" id="mobileno" onkeypress="return isnumber()" type="text" required
							autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> City<span class="req">*</span>
						</label> <input name="city" type="text" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input name="email" type="email" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> User Name<span class="req">*</span>
						</label> <input type="text" name="user" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> Set A Password<span class="req">*</span>
						</label> <input type="password" name="pass" required autocomplete="off" />
					</div>

					<button type="submit" class="button button-block">Get
						Started</button>

				</form>

			</div>

		</div>
		<!-- tab-content -->
	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="index.js"></script>
	<footer>
		<p>&copy Sourish and Team 2018</p>
	</footer>
</body>
</html>