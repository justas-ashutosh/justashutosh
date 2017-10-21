<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login/Sign Up@E-Gas</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<link href="style/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="style/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome icons -->
<link href="style/font-awesome.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="Java_script/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link
	href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="Java_script/move-top.js"></script>
<script type="text/javascript" src="Java_script/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<style>
#domain {
	margin-top: 100px;
	padding: 10px 25px;
	border: 8px groove black;
	border-radius: 8px;
}

#domain1 {
	padding: 10px 25px;
	border: 8px outset black;
	border-radius: 8px;
}
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
	<!-- products-breadcrumb -->
	<jsp:include page="Header.jsp" />
	<!-- //products-breadcrumb -->
	<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left" id=domain>
			<nav class="navbar nav_bottom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="Contact.html">Contact Us </a></li>
						<li><a href="Faq.html">Faq's</a></li>
						<li><a href="kitchen.jsp">Kitchen</a></li>
						<li><a href="Inst.jsp">Instruction Manual</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Reviews<span class="caret"></span></a>
							<div
								class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="#">Complains</a></li>
										<li><a href="comments.jsp">Comments</a></li>
									</ul>
								</div>
							</div></li>
				</div>
		</div>
	</div>
	<!-- /.navbar-collapse -->
	</nav>
	</div>
	<div class="w3l_banner_nav_right">
		<!-- login -->
		<div class="w3_login">
			<h3 id=domain1>
				<u>Sign In & Sign Up</u>
			</h3>
			<div class="w3_login_module" id=domain1 style="margin: 35px;">
				<div class="module form-module">
					<div class="toggle">
						<i class="fa fa-times fa-pencil"></i>
						<div class="tooltip">Click Me</div>
					</div>
					<div class="form">
						<h2>Login to your account</h2>
						<form action="/Chat_on_1.0/Login_reg" method="post">
							<h2>${message}</h2>
							<input type="text" name="Username" placeholder="Username"
								required=" "> <input type="password" name="Password"
								placeholder="Password" required=" "> <input type="radio"
								name="actors" value="Customer" required=" "> Customer <input
								type="radio" name="actors" value="Distributers" required=" ">
							Distributer <br> <br> <input type="submit"
								value="Login">
						</form>
						<br>
						<div class="cta">
							<a href="Forgot.jsp">Forgot your password?</a>
						</div>
					</div>
					<div class="form">
						<h2>Create an account</h2>
						<form action="/Chat_on_1.0/Registeration" method="post">
							<input type="text" name="fname" placeholder="Username"
								required=" "> <input type="password" name="Password"
								placeholder="Password" required=" "> <input type="email"
								name="Email" placeholder="Email Address" required=" "> <input
								type="text" name="Phone" placeholder="Phone Number" required=" ">
							<input type="text" name="Addhar" placeholder="Addhar Number"
								required=" ">
							<div class="g-recaptcha" data-callback="recaptchaCallback"
								data-sitekey="6LfQhjAUAAAAAFjQ1NJOLbbefpBGtLsvTI5-_cUX"></div>
							<br> <input id="submitBtn" disabled type="submit"
								value="Register">
						</form>
					</div>
				</div>
			</div>
			<script>
				function recaptchaCallback() {
					$('#submitBtn').removeAttr('disabled');
				};
			</script>
			<script>
				$('.toggle').click(function() {
					// Switches the Icon
					$(this).children('i').toggleClass('fa-pencil');
					// Switches the forms  
					$('.form').animate({
						height : "toggle",
						'padding-top' : 'toggle',
						'padding-bottom' : 'toggle',
						opacity : "toggle"
					}, "slow");
				});
			</script>
		</div>
		<!-- //login -->
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- //banner -->
	<!-- newsletter-top-serv-btm -->
	<!-- footer -->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="Java_script/minicart.js"></script>
	<script>
		paypal.minicart.render();

		paypal.minicart.cart
				.on(
						'checkout',
						function(evt) {
							var items = this.items(), len = items.length, total = 0, i;

							// Count the number of each item in the cart
							for (i = 0; i < len; i++) {
								total += items[i].get('quantity');
							}

							if (total < 3) {
								alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
								evt.preventDefault();
							}
						});
	</script>
</body>
<jsp:include page="Footer.jsp" />
</html>