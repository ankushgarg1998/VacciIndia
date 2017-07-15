<%@ include file = "header1.jsp" %>
		<title>Vacci @Home | VacciIndia</title>
<%@ include file = "header2.jsp" %>
			<div role="main" class="main">

				<section class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1 class="mt-xs">Vacci @Home <span>A doorstep service for vaccination of your Child</span></h1>
								<ul class="breadcrumb breadcrumb-valign-mid">
									<li><a href="#">Home</a></li>
									<li class="active">Vacci@Home</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container">
					<div class="row">
						<div class="col-md-12 center">
							<div class="logo">
								<a href="index.html">
									<img width="111" height="54" src="img/logo-default.png" alt="Porto">*to be changed*
								</a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 center">
							<h1 class="mb-sm small">Vacci at Home is coming soon.</h1>
							<p class="mb-none lead">Vacci at Home is an initiative to provide with vaccination services at your Doorstep</p>
							<p>With this feature you will be able to pre-book vaccination on a particular date. And you child will be supplied vaccination from certified doctors at your home.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="progress-bars">
								<div class="progress-label">
									<span><strong>Conception:</strong> Finished</span>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="100%">
										<span class="progress-bar-tooltip">100%</span>
									</div>
								</div>
								<div class="progress-label">
									<span><strong>Design</strong></span>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="85%" data-appear-animation-delay="300">
										<span class="progress-bar-tooltip">85%</span>
									</div>
								</div>
								<div class="progress-label">
									<span><strong>Development</strong></span>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="65%" data-appear-animation-delay="600">
										<span class="progress-bar-tooltip">65%</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="newsletter">
								<h5 class="heading-primary">Let me know when the site is done</h5>

								<div class="alert alert-success hidden" id="newsletterSuccess">
									<strong>Success!</strong> You've been added to our email list.
								</div>

								<div class="alert alert-danger hidden" id="newsletterError"></div>

								<form id="newsletterForm" action="php/newsletter-subscribe.php" method="POST">
									<div class="input-group">
										<input class="form-control" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text">
										<span class="input-group-btn">
											<button class="btn btn-default" type="submit">Subscribe Now</button>
										</span>
									</div>
								</form>
							</div>
						</div>
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

		<!-- Theme Custom -->
		<script src="js/custom.js"></script>

		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>

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
