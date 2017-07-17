<%@ include file = "header1.jsp" %>
		<title>Sign In/Up | VacciIndia</title>
<%@ include file = "header2.jsp" %>

			<div role="main" class="main">

				<section class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1 class="mt-xs">Sign In / Sign Up <span>To use full functionality of this website, please Login.</span></h1>
								<ul class="breadcrumb breadcrumb-valign-mid">
									<li><a href="home">Home</a></li>
									<li class="active">Sign In/ Sign Up</li>
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
									<div class="col-sm-6">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Login</h4>
												<form action="/" id="frmSignIn" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Username / E-mail Address</label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<a class="pull-right" href="#">(Lost Password?)</a>
																<label>Password</label>
																<input type="password" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<span class="remember-box checkbox">
																<label for="rememberme">
																	<input type="checkbox" id="rememberme" name="rememberme">Remember Me
																</label>
															</span>
														</div>
														<div class="col-md-6">
															<input type="submit" value="Login" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Register An Account</h4>
												<form action="/" id="frmSignUp" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Parent's Name</label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
														<div class="form-group">
															<div class="col-md-12">
																<label>E-mail Address</label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
														<div class="form-group">
															<div class="col-md-6">
																<label>Password</label>
																<input type="password" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>Confirm Password</label>
																<input type="password" value="" class="form-control input-lg">
															</div>
															<div class="col-md-12">
																<label>Contact No.</label>
																<input type="number" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<input type="submit" value="Register" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
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
