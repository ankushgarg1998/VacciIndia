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
									<img width="200" height="55" src="images/logo-medical.png" alt="Porto">
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
<%@ include file = "scripts.jsp" %>
