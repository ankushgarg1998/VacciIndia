<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Web Fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="vendor/animate/animate.min.css">
<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/theme-elements.css">
<link rel="stylesheet" href="css/theme-blog.css">
<link rel="stylesheet" href="css/theme-shop.css">

<!-- Current Page CSS -->
<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">
<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">

<!-- Skin CSS -->
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
  <header id="header" class="header-narrow" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 35, 'stickySetTop': '-35px', 'stickyChangeLogo': false}">
    <div class="header-body">
      <div class="header-top header-top header-top-style-3 header-top-custom">
        <div class="container">
          <nav class="header-nav-top pull-right">
            <ul class="nav nav-pills">
              <li class="hidden-xs">
                <span class="ws-nowrap"><i class="icon-location-pin icons"></i> MSIT, Janakpuri, New Delhi</span>
              </li>
              <li class="hidden-xs">
                <span class="ws-nowrap"><i class="icon-envelope-open icons"></i> <a class="text-decoration-none" href="mailto:support@vacciindia.com">support@vacciindia.com</a></span>
              </li>
              <li>
                <span class="ws-nowrap"><i class="icon-call-out icons"></i></i> (+91)7838765583</span>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="header-container container">
        <div class="header-row">
          <div class="header-column">
            <div class="header-logo">
              <a href="home">
                <img alt="Porto" width="143" height="40" src="img/demos/medical/logo-medical.png">
              </a>
            </div>
          </div>
          <div class="header-column">
            <div class="header-row">
              <div class="header-nav pt-xs">
                <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
                  <i class="fa fa-bars"></i>
                </button>
                <div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
                  <nav>
                    <ul class="nav nav-pills" id="mainNav">
                      <li class="${pageContext.request.requestURI eq '/home' ? 'active' : ''}dropdown-full-color dropdown-secondary">
                        <a href="home">
                          Home
                        </a>
                      </li>
                      <li class="${pageContext.request.requestURI eq '/about' ? 'active' : ''}dropdown-full-color dropdown-secondary">
                        <a href="about">
                          About Us
                        </a>
                      </li>
                      <li class="dropdown dropdown-full-color dropdown-secondary">
                        <a class="dropdown-toggle" href="demo-medical-departments.html">
                          Vaccines
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Vaccine 1</a></li>
                          <li><a href="#">Vaccine 2</a></li>
                          <li><a href="#">Vaccine 3</a></li>
                          <li><a href="#">Vaccine 4</a></li>
                          <li><a href="#">Vaccine 5</a></li>
                          <li><a href="#">Vaccine 6</a></li>
													<li><a href="#">Vaccine 7</a></li>
													<li><a href="#">Vaccine 8</a></li>
													<li><a href="#">Vaccine 9</a></li>
													<li><a href="#">Vaccine 10</a></li>
                        </ul>
                      </li>
											<li class="dropdown dropdown-full-color dropdown-secondary">
                        <a class="dropdown-toggle" href="demo-medical-departments.html">
                          Services
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="scheduler">Vacci Scheduler</a></li>
                          <li><a href="vaccilocator">Vacci Locator</a></li>
                          <li><a href="pdlocator">Pediatrician Locator</a></li>
                          <li><a href="vacciathome">Vaaci @Home</a></li>
                        </ul>
                      </li>
											<li class="${pageContext.request.requestURI eq '/faq' ? 'active' : ''}dropdown-full-color dropdown-secondary">
                        <a href="faq">
                          FAQ
                        </a>
                      </li>
                      <li class="${pageContext.request.requestURI eq '/contact' ? 'active' : ''}dropdown-full-color dropdown-secondary">
                        <a href="contact">
                          Contact
                        </a>
                      </li>
											<li class="${pageContext.request.requestURI eq '/sign' ? 'active' : ''}dropdown-full-color dropdown-secondary">
                        <a href="sign">
                          Sign Up/Sign In
                        </a>
                      </li>
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
