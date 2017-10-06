<%@ include file = "header1.jsp" %>
		<title>Reset Password | VacciIndia</title>
<%@ include file = "header2.jsp" %>

			<div role="main" class="main">

				<section class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1 class="mt-xs">Reset Password <span>Please enter the Unique ID sent on your email.</span></h1>
								<ul class="breadcrumb breadcrumb-valign-mid">
									<li><a href="home">Home</a></li>
									<li class="active">Reset Password</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-md-12">

							<div class="featured-boxes">
								<div class="row">
									<div class="col-sm-8">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Enter your unique ID and new Password </h4>
												<form action="/resetuid" id="frmSignIn" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Unique ID</label>
																<input type="text" name="uid" value="" class="form-control input-lg" required>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>New Password</label>
																<input type="password" name="upass" value="" class="form-control input-lg" required>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Retype Password</label>
																<input type="password" name="upasscheck" value="" class="form-control input-lg" required>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-8">
															<input type="submit" value="Login" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>

			</div>
<%@ include file = "footer.jsp" %>
		</div>
<%@ include file = "scripts.jsp" %>
