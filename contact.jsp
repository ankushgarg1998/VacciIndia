<%@ include file = "header1.jsp" %>
		<title>Contact Us | VacciIndia</title>
<%@ include file = "header2.jsp" %>

			<div role="main" class="main">

			<section class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="mt-xs">Contact <span>Send us a message or call us for more information</span></h1>
							<ul class="breadcrumb breadcrumb-valign-mid">
								<li><a href="home">Home</a></li>
								<li class="active">Contact</li>
							</ul>
						</div>
					</div>
				</div>
			</section>

			<div class="container">

				<div class="row mt-lg">
					<div class="col-md-4">
						<div class="feature-box feature-box-style-2">
							<div class="feature-box-icon">
								<i class="icon-location-pin icons"></i>
							</div>
							<div class="feature-box-info">
								<h4 class="mb-sm">Address</h4>
								<p class="font-size-lg">
									Maharaja Surajmal Institue of Technology<br>
									Janakpuri, New Delhi
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature-box feature-box-style-2">
							<div class="feature-box-icon">
								<i class="icon-phone icons"></i>
							</div>
							<div class="feature-box-info">
								<h4 class="mb-sm">Phone</h4>
								<p class="font-size-lg">
									(+91)7838765582 <br>
									(+91)9013174700
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature-box feature-box-style-2">
							<div class="feature-box-icon">
								<i class="icon-envelope icons"></i>
							</div>
							<div class="feature-box-info">
								<h4 class="mb-sm">Email</h4>
								<p class="font-size-lg">
									<a href="mailto:info@vacciindia.com" class="text-decoration-none">info@vacciindia.com</a><br>
									<a href="mailto:support@vacciindia.com" class="text-decoration-none">support@vacciindia.com</a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<hr class="solid">

				<div class="row pt-lg mb-lg pb-xl">
					<div class="col-md-6">
						<div id="googlemaps" class="google-map m-none mb-xl"></div>
					</div>
					<div class="col-md-6">

						<h4 class="font-weight-semibold mb-xlg">Send a Message to Us</h4>

						<div class="alert alert-success hidden mt-lg" id="contactSuccess">
							<strong>Success!</strong> Your message has been sent to us.
						</div>

						<div class="alert alert-danger hidden mt-lg" id="contactError">
							<strong>Error!</strong> There was an error sending your message.
							<span class="font-size-xs mt-sm display-block" id="mailErrorMessage"></span>
						</div>

						<form id="contactForm" action="php/contact-form.php" method="POST">
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<input type="text" placeholder="Your Name" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<input type="email" placeholder="Your E-mail" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" id="email" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<input type="text" placeholder="Subject" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control" name="subject" id="subject" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<textarea maxlength="5000" placeholder="Message" data-msg-required="Please enter your message." rows="5" class="form-control" name="message" id="message" required></textarea>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="submit" value="Send Message" class="btn btn-primary btn-lg mb-xlg" data-loading-text="Loading...">
								</div>
							</div>
						</form>

					</div>
				</div>

			</div>

<%@ include file = "footer.jsp" %>
		</div>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="vendor/jquery-cookie/jquery-cookie.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/common/common.min.js"></script>
		<script src="vendor/jquery.validation/jquery.validation.min.js"></script>
		<script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
		<script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
		<script src="vendor/isotope/jquery.isotope.min.js"></script>
		<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="vendor/vide/vide.min.js"></script>

		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>

		<!-- Current Page Vendor and Views -->
		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Current Page Vendor and Views -->
		<script src="js/views/view.contact.js"></script>

		<!-- Demo -->
		<script src="js/demos/demo-medical.js"></script>

		<!-- Theme Custom -->
		<script src="js/custom.js"></script>

		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>


		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYi6ChCG9E7HDpeO0fyUfSZ635t7FquUE"></script>
		<script>

			/*
			Map Settings

				Find the Latitude and Longitude of your address:
					- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
					- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

			*/

			// Map Markers
			var mapMarkers = [{
				address: "MSIT",
				html: "<strong>MSIT</strong><br>Janakpuri, New Delhi",
				icon: {
					image: "img/pin.png",
					iconsize: [26, 46],
					iconanchor: [12, 46]
				},
				popup: true
			}];

			// Map Initial Location
			var initLatitude = 28.621175;
			var initLongitude = 77.092686;

			// Map Extended Settings
			var mapSettings = {
				controls: {
					draggable: (($.browser.mobile) ? false : true),
					panControl: true,
					zoomControl: true,
					mapTypeControl: true,
					scaleControl: true,
					streetViewControl: true,
					overviewMapControl: true
				},
				scrollwheel: false,
				markers: mapMarkers,
				latitude: initLatitude,
				longitude: initLongitude,
				zoom: 16
			};

			var map = $('#googlemaps').gMap(mapSettings),
				mapRef = $('#googlemaps').data('gMap.reference');

			// Map Center At
			var mapCenterAt = function(options, e) {
				e.preventDefault();
				$('#googlemaps').gMap("centerAt", options);
			}

			var mapRef = $('#googlemaps').data('gMap.reference');

			// Styles from https://snazzymaps.com/
			var styles = [{"featureType":"water","elementType":"geometry","stylers":[{"color":"#e9e9e9"},{"lightness":17}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":20}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":16}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":21}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#dedede"},{"lightness":21}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":16}]},{"elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#333333"},{"lightness":40}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":19}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#fefefe"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#fefefe"},{"lightness":17},{"weight":1.2}]}];

			var styledMap = new google.maps.StyledMapType(styles, {
				name: 'Styled Map'
			});

			mapRef.mapTypes.set('map_style', styledMap);
			mapRef.setMapTypeId('map_style');

		</script>


		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->


	</body>
</html>
