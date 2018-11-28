<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String url = request.getHeader("referer");
	if (url == null) {
		response.sendRedirect("index.jsp");
	}

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
				<div class="step active"></div>
				<div class="step"></div>
				<div class="step"></div>
			</div>
			<form id="form1" action="ticket.jsp" method="post">
				<div class="payment-method">

					<label for="card" class="method card">
						<div class="card-logos">
							<img src="resources/visa.png" /> <img
								src="resources/mastercard.png" />
						</div>

						<div class="radio-input">
							<input id="card" type="radio" name="payment" value="card"> Pay with
							Visa credit card
						</div>
					</label> <label for="paypal" class="method paypal"> <img
						src="resources/paytm.png" style="width: 120px;" />
						<div class="radio-input">
							<input id="PayTM" type="radio" name="payment" value="PayTM"> Pay with
							PayTM
						</div>
					</label>
				</div>
			</form>
		</div>
		<div class="panel-footer">
			<a href="confirmation.jsp"><button id=prev class="btn back-btn">Back</button></a>
			<button id=next class="btn next-btn" disabled="disabled">Next Step</button>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="conf.js"></script>
	<script type="text/javascript">
		radio1 = document.getElementsByTagName('input');
		button1 = document.getElementById('next');

		form1.onclick = function() {
			for (var i = 0; i < radio1.length; i++) {
				if (radio1[i].checked) {
					button1.disabled = false;
					break;
				} else {
					button1.disabled = true;
				}
			}
		}
		
		button1.onclick = function() {
			form1.submit();
			return false;
		}
	</script>
</body>
</html>