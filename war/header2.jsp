<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Web Fonts  -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light"
	rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="vendor/animate/animate.min.css">
<link rel="stylesheet"
	href="vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet"
	href="vendor/magnific-popup/magnific-popup.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/theme-elements.css">
<link rel="stylesheet" href="css/theme-blog.css">
<link rel="stylesheet" href="css/theme-shop.css">

<!-- Current Page CSS -->
<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">
<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet"
	href="vendor/circle-flip-slideshow/css/component.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="css/skins/default.css">
<link rel="stylesheet" href="css/skins/skin-medical.css">

<!-- Demo CSS -->
<link rel="stylesheet" href="css/demos/demo-medical.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Head Libs -->
<script src="vendor/modernizr/modernizr.min.js"></script>

</head>
<body>

	<div class="body">
		<header id="header" class="header-narrow"
			data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 35, 'stickySetTop': '-35px', 'stickyChangeLogo': false}">
			<div class="header-body">
				<div
					class="header-top header-top header-top-style-3 header-top-custom">
					<div class="container">
						<nav class="header-nav-top pull-right">
							<ul class="nav nav-pills">
								<%
									HttpSession sess = request.getSession(false);
									if (sess != null) {
								%>
								<li class="hidden-xs"><span class="ws-nowrap"></i>
										Welcome <%=sess.getAttribute("name")%></span></li>
								<%
									}
								%>
								<li class="hidden-xs"><span class="ws-nowrap"><i
										class="icon-location-pin icons"></i> MSIT, Janakpuri, New
										Delhi</span></li>
								<li class="hidden-xs"><span class="ws-nowrap"><i
										class="icon-envelope-open icons"></i> <a
										class="text-decoration-none"
										href="mailto:support@vacciindia.com">support@vacciindia.com</a></span>
								</li>
								<li><span class="ws-nowrap"><i
										class="icon-call-out icons"></i></i> (+91)7838765583</span></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="header-container container">
					<div class="header-row">
						<div class="header-column">
							<div class="header-logo">
								<a href="home"> <img alt="Porto" width="143" height="40"
									src="images/logo-medical.png">
								</a>
							</div>
						</div>
						<div class="header-column">
							<div class="header-row">
								<div class="header-nav pt-xs">
									<button class="btn header-btn-collapse-nav"
										data-toggle="collapse" data-target=".header-nav-main">
										<i class="fa fa-bars"></i>
									</button>
									<div
										class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
										<nav>
											<ul class="nav nav-pills" id="mainNav">
												<li
													class="${pageContext.request.requestURI eq '/home' ? 'active' : ''}dropdown-full-color dropdown-secondary">
													<a href="home"> Home </a>
												</li>
												<li
													class="${pageContext.request.requestURI eq '/about' ? 'active' : ''}dropdown-full-color dropdown-secondary">
													<a href="about"> About Us </a>
												</li>
												<li
													class="${pageContext.request.requestURI eq '/vaccines' ? 'active' : ''}dropdown-full-color dropdown-secondary">
													<a href="vaccines"> Vaccines Details </a>
												</li>

												<%-- <li class="dropdown dropdown-full-color dropdown-secondary">
                        <a class="dropdown-toggle" href="vaccines">
                          Vaccines
                        </a>
                        <ul class="dropdown-menu">
													<li><a href="vaccine-bcg">BCG Vaccine</a></li>
													<li><a href="vaccine-dtp">DTP-containing vaccine</a></li>
													<li><a href="vaccine-hepb">Hepatitis-B</a></li>
													<li><a href="vaccine-hib">Haemophilus Influenzae type B</a></li>
													<li><a href="vaccine-hpv">Human papilloma virus </a></li>
													<li><a href="vaccine-mmr">MMR</a></li>
													<li><a href="vaccine-pneum">Pneumococcal (Conjugate)</a></li>
													<li><a href="vaccine-polio">Polio</a></li>
													<li><a href="vaccine-rota">Rotavirus</a></li>
                        </ul>
                      </li> --%>
												<li class="dropdown dropdown-full-color dropdown-secondary">
													<a class="dropdown-toggle"> Services </a>
													<ul class="dropdown-menu">
														<li><a href="scheduler">Vacci Scheduler</a></li>
														<li><a href="vaccilocator">Vacci Locator</a></li>
														<li><a href="pdlocator">Pediatrician Locator</a></li>
														<li><a href="vacciathome">Vaaci @Home</a></li>
													</ul>
												</li>
												<li
													class="${pageContext.request.requestURI eq '/faq' ? 'active' : ''}dropdown-full-color dropdown-secondary">
													<a href="faq"> FAQ </a>
												</li>
												<li
													class="${pageContext.request.requestURI eq '/contact' ? 'active' : ''}dropdown-full-color dropdown-secondary">
													<a href="contact"> Contact </a>
												</li>
												<%
													if (sess == null) {
												%>
												<li
													class="dropdown dropdown-mega dropdown-mega-signin signin"
													id="headerAccount"><a class="dropdown-toggle"
													href="sign"> <i class="fa fa-user"></i> Sign In/Up
												</a>
													<ul class="dropdown-menu">
														<li>
															<div class="dropdown-mega-content">
																<div class="row">
																	<div class="col-md-12">

																		<div class="signin-form">

																			<span class="dropdown-mega-sub-title">Sign In</span>

																			<form action="signin" id="frmSignIn" method="post">
																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12 p-none">
																							<label>E-mail Address</label> <input type="text"
																								name="uname" value=""
																								class="form-control input-lg" tabindex="1"
																								required>
																						</div>
																					</div>
																				</div>
																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12 p-none">
																							<a class="pull-right mt-none p-none"
																								id="headerRecover" href="#">(Lost Password?)</a>
																							<label>Password</label> <input type="password"
																								name="upass" value=""
																								class="form-control input-lg" tabindex="2"
																								required>
																						</div>
																					</div>
																				</div>
																				<div class="row">
																					<div class="col-md-6 pl-none">
																						<span class="remember-box checkbox"> <label
																							for="rememberme"> <input type="checkbox"
																								id="rememberme" name="rememberme">Remember
																								Me
																						</label>
																						</span>
																					</div>
																					<div class="col-md-6 pr-none">
																						<input type="submit" value="Login"
																							class="btn btn-primary pull-right mb-xl"
																							data-loading-text="Loading...">
																					</div>
																				</div>
																			</form>

																			<p class="sign-up-info">
																				Don't have an account yet? <a href="#"
																					id="headerSignUp" class="p-none m-none ml-xs">Sign
																					Up</a>
																			</p>

																		</div>

																		<div class="signup-form">
																			<span class="dropdown-mega-sub-title">Create
																				Account</span>
																			<form action="/register" method="post">
																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-6">
																							<label>First Name (Parent)*</label> <input
																								type="text" name="fname" value=""
																								data-msg-required="Please enter your first name."
																								maxlength="100" class="form-control" name="name"
																								id="name" required>
																						</div>
																						<div class="col-md-6">
																							<label>Last Name *</label> <input type="text"
																								name="lname" value=""
																								data-msg-required="Please enter your last name."
																								maxlength="100" class="form-control" name="name"
																								id="name" required>
																						</div>


																					</div>

																				</div>

																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12">
																							<label>Parent's email address *</label> <input
																								type="email" name="email" value=""
																								data-msg-required="Please enter your email address."
																								data-msg-email="Please enter a valid email address."
																								maxlength="100" class="form-control"
																								name="email" id="email" required>
																						</div>
																					</div>

																				</div>

																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12">
																							<label>Password *</label> <input type="password"
																								name="pass" value=""
																								data-msg-required="Please enter your email address."
																								data-msg-email="Password only consists of (A-Z),(a-z) and (0-9)"
																								maxlength="100" class="form-control"
																								name="password" id="password" required>
																						</div>
																					</div>

																				</div>


																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12">
																							<label>Contact Number *</label> <input
																								type="text" name="contact" value=""
																								data-msg-required="Please enter the mobile number."
																								maxlength="100" class="form-control" name="mob"
																								id="mob" required>
																						</div>
																					</div>
																				</div>

																				<div class="row">
																					<div class="col-md-4">
																						<input type="submit" value="Register"
																							class="btn btn-primary mb-xl"
																							data-loading-text="Loading...">
																					</div>
																				</div>


																				<p class="log-in-info">
																					Already have an account? <a href="#"
																						id="headerSignIn" class="p-none m-none ml-xs">Log
																						In</a>
																				</p>
																			</form>

																			<p class="log-in-info">
																				Already have an account? <a href="#"
																					id="headerRecoverCancel"
																					class="p-none m-none ml-xs">Log In</a>
																			</p>
																		</div>

																	</div>
																</div>
															</div>
														</li>
													</ul></li>
												<%
													} else {
												%>
												<li class="dropdown-full-color dropdown-secondary"><a
													href="dashboard"> Dashboard </a></li>
												<li class="dropdown-full-color dropdown-secondary"><a
													href="signout"> Logout </a></li>
												<%
													}
												%>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>