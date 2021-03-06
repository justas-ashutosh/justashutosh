<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Payment@E-gas</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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

<link
	href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<jsp:include page="Header.jsp" />
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout.jsp"></jsp:include>
	
        <%
        }else{  %>
     <jsp:include page="included pages/Guest_Cart.jsp"></jsp:include>   
        <%} %>
<br>
	
	<!-- header -->
	<!-- products-breadcrumb -->
	<!-- //products-breadcrumb -->
	<!-- banner -->

	<div class="w3l_banner_nav_right">
		<!-- payment -->
		<div class="privacy about">
			<h3>
				Pay<span>ment</span>
			</h3>

			<div class="checkout-right">
				<!--Horizontal Tab-->
				<div id="parentHorizontalTab">
					<ul class="resp-tabs-list hor_1">
						<li>Cash on delivery (COD)</li>
						<li>Credit/Debit</li>
						<li>Paypal Account</li>
					</ul>
					<div class="resp-tabs-container hor_1">

						<div>
							<div class="vertical_post check_box_agile">
								<h5>COD</h5>
								<div class="checkbox">
									<div class="check_box_one cashon_delivery">
										<label class="anim"> <input type="checkbox"
											class="checkbox"> <span> We also accept
												Credit/Debit card on delivery. Please Check with the agent.</span>
										</label>
									</div>

								</div>
							</div>
						</div>
						<div>
							<form action="#" method="post"
								class="creditly-card-form agileinfo_form">
								<section class="creditly-wrapper wthree, w3_agileits_wrapper">
									<div class="credit-card-wrapper">
										<div class="first-row form-group">
											<div class="controls">
												<label class="control-label">Name on Card</label> <input
													class="billing-address-name form-control" type="text"
													name="name" placeholder="John Smith">
											</div>
											<div class="w3_agileits_card_number_grids">
												<div class="w3_agileits_card_number_grid_left">
													<div class="controls">
														<label class="control-label">Card Number</label> <input
															class="number credit-card-number form-control"
															type="text" name="number" inputmode="numeric"onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required=""
															autocomplete="cc-number" autocompletetype="cc-number"
															x-autocompletetype="cc-number"
															placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
													</div>
												</div>
												<div class="w3_agileits_card_number_grid_right">
													<div class="controls">
														<label class="control-label">CVV</label> <input
															class="security-code form-control" · inputmode="numeric"
															type="text" name="security-code"
															placeholder="&#149;&#149;&#149;">
													</div>
												</div>
												<div class="clear"></div>
											</div>
											<div class="controls">
												<label class="control-label">Expiration Date</label> <input
													class="expiration-month-and-year form-control" type="text"
													name="expiration-month-and-year" placeholder="MM / YY">
											</div>
										</div>
										<button class="submit">Make a Payment</button>
									</div>
								</section>
							</form>

						</div>
						<div>
							<div id="tab4" class="tab-grid" style="display: block;">
								<div class="row">
									<div class="col-md-6">
										<img class="pp-img" src="myimages/paypal.png"
											alt="Image Alternative text" title="Image Title">
										<p>Important: You will be redirected to PayPal's website
											to securely complete your payment.</p>
										<a class="btn btn-primary">Checkout via Paypal</a>
									</div>
									<div class="col-md-6">
										<form class="cc-form">
											<div class="clearfix">
												<div class="form-group form-group-cc-number">
													<label>Card Number</label> <input class="form-control"
														placeholder="xxxx xxxx xxxx xxxx" type="text"><span
														class="cc-card-icon"></span>
												</div>
												<div class="form-group form-group-cc-cvc">
													<label>CVV</label> <input class="form-control"
														placeholder="xxx" type="text">
												</div>
											</div>
											<div class="clearfix">
												<div class="form-group form-group-cc-name">
													<label>Card Holder Name</label> <input class="form-control"
														type="text">
												</div>
												<div class="form-group form-group-cc-date">
													<label>Valid Thru</label> <input class="form-control"
														placeholder="mm/yy" type="text">
												</div>
											</div>
											<input class="btn btn-primary submit" type="submit"
												class="submit" value="Proceed Payment">
										</form>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>

				<!--Plug-in Initialisation-->

				<!-- // Pay -->

			</div>

		</div>
		<!-- //payment -->
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- //banner -->
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our Weather Reporter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="/Chat_on_1.0/My_Forward" method="post">
					<input type="email" name="email" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->

	<!-- //footer -->
	<!-- js -->
	<script src="Java_script/jquery-1.11.1.min.js"></script>
	<!-- easy-responsive-tabs -->
	<link rel="stylesheet" type="text/css"
		href="style/easy-responsive-tabs.css " />
	<script src="Java_script/easyResponsiveTabs.js"></script>
	<!-- //easy-responsive-tabs -->
	<script type="text/javascript">
		$(document).ready(function() {
			//Horizontal Tab
			$('#parentHorizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				tabidentify : 'hor_1', // The tab groups identifier
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
		});
	</script>
	<!-- credit-card -->
	<script type="text/javascript" src="Java_script/creditly.js"></script>
	<link rel="stylesheet" href="css/creditly.css" type="text/css"
		media="all" />

	<script type="text/javascript">
		$(function() {
			var creditly = Creditly.initialize(
					'.creditly-wrapper .expiration-month-and-year',
					'.creditly-wrapper .credit-card-number',
					'.creditly-wrapper .security-code',
					'.creditly-wrapper .card-type');

			$(".creditly-card-form .submit").click(function(e) {
				e.preventDefault();
				var output = creditly.validate();
				if (output) {
					// Your validated credit card output
					console.log(output);
				}
			});
		});
	</script>
	<!-- //credit-card -->

	<!-- //js -->
	<!-- script-for sticky-nav -->
	<script>
		$(document).ready(function() {
			var navoffeset = $(".agileits_header").offset().top;
			$(window).scroll(function() {
				var scrollpos = $(window).scrollTop();
				if (scrollpos >= navoffeset) {
					$(".agileits_header").addClass("fixed");
				} else {
					$(".agileits_header").removeClass("fixed");
				}
			});

		});
	</script>
	<!-- //script-for sticky-nav -->
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
	<!-- start-smoth-scrolling -->
	<!-- Bootstrap Core JavaScript -->
	<script src="Java_script/bootstrap.min.js"></script>
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