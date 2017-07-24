<%@ include file = "header1.jsp" %>
<title>Register | VacciIndia</title>
<%@ include file = "header2.jsp" %>

<div role="main" class="main">

	<section class="page-header custom-product">
		<div class="container">
			<div class="row">
				<div class="col-md-12 center">
					<h1 class="mb-none pb-none">Introduce your child to
						<strong>VacciIndia</strong>
					</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 center">
					<a href="#timeline" data-hash data-hash-offset="70" class="btn btn-default btn-lg mb-xl">Get Started!</a>
				</div>
			</div>
		</div>
	</section>

	<div class="container">

		<section class="timeline" id="timeline">
			<div class="timeline-body">
				<article class="timeline-box left">
					<div class="portfolio-item">
						<p>
							<h3 class="heading-primary text-uppercase mb-md">Fill Up The details here!</h3>
						</p>
						<hr>
							<div id="yo">
							<img src="" name="formula" id="formula" style:width="200" height="300">
							</div>
					</div>
				</article>
				<br>
					<article class="timeline-box right" style="width:45.58%">
						<article class="container" style="position:relative">
							<div class="portfolio-item">
								<div class="featured-boxes">
									<div class="row">
										<div class="col-sm-4">
											<div class="featured-box featured-box-primary align-left mt-xlg">
												<div class="box-content">
													<h4 class="heading-primary text-uppercase mb-md">Register Your Child</h4>
													<form action="addchild" id="frmSignIn" method="post">
														<div class="row">
															<div class="form-group">
																<div class="col-md-12">
																	<label>
																		<strong>Child's First Name</strong>
																	</label>
																	<input type="text" name="fname" value="" class="form-control input-lg"></div>
																</div>
															</div>
															<div class="row">
																<div class="form-group">
																	<div class="col-md-12">
																		<label>
																			<strong>Last Name</strong>
																		</label>
																		<input type="text" name="lname" value="" class="form-control input-lg"></div>
																	</div>
																</div>
																<div class="row">
																	<div class="form-group">
																		<div class="col-md-12">
																			<label>
																				<strong>Gender</strong>
																			</label>
																			<br>
																				<input type="radio" id="gender1" name="gender" value="Male">
																					Male
																					<br>
																						<input type="radio" id="gender2" name="gender" value="Female">
																							Female
																							<br></div>
																						</div>
																					</div>
																					<div class="row">
																						<div class="form-group">
																							<div class="col-md-12">
																								<label>
																									<strong>Birth Date</strong>
																								</label>
																								<br>
																									<input type="date" name="dob" value="" class="form-control input-lg"></div>
																								</div>
																							</div>

																							<div class="row">
																								<div class="form-group">
																									<div class="col-md-6">
																											<input type="submit" value="Register" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
																										</div>
																									</div>
																								</div>
																							</form>
																						</div>
																					</div>
																				</div>

																			</div>
																		</div>
																	</div>
																</article>

															</article>
													</div>
												</section>

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
									<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
									<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
									<script src="vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
									<script src="js/views/view.home.js"></script>
									<!-- Current Page Vendor and Views -->
									<script src="js/views/view.contact.js"></script>

									<!-- Demo -->
									<script src="js/demos/demo-medical.js"></script>

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

									<script type="text/javascript">

										$(document).ready(function () {
											$("input:radio[name=gender]").click(function () {
												var value = $(this).val();
												var image_name;
												if (value == 'Male') {
													image_name = "images/boy.png";
												} else {
													if (value == 'Female') {
														image_name = "images/girl.png";
													}
												}
												$('#formula').attr('src', image_name);
											});
										});
									</script>

								</body>
							</html>
