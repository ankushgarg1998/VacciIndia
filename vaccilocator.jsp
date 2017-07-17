<%@ include file = "header1.jsp" %>
		<title>Vacci @Home | VacciIndia</title>
		<style>
			 #map {
				height: 400px;
				width: 100%;
			 }
		</style>
<%@ include file = "header2.jsp" %>
			<div role="main" class="main">

				<section class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1 class="mt-xs">Vacci Locator <span>To find nearby hospitals which provide vaccinations</span></h1>
								<ul class="breadcrumb breadcrumb-valign-mid">
									<li><a href="#">Home</a></li>
									<li class="active">Vacci Locator</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container">
					<%-- <div class="row">
						<div class="col-md-12 center">
							<div class="logo">
								<a href="index.html">
									<img width="111" height="54" src="img/logo-default.png" alt="Porto">
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
							<h1 class="mb-sm small">Vacci Locator is coming soon.</h1>
							<p class="mb-none lead">Vacci at Home is an initiative to provide with vaccination services at your Doorstep</p>
							<p>With this feature you will be able to pre-book vaccination on a particular date. And you child will be supplied vaccination from certified doctors at your home.</p>
						</div>
					</div> --%>
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>


					<h3>Vaccination clinics near you</h3>
					<div id="map"></div>


					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>

				</div>
			</div>



			<script>
				function initMap() {
					var uluru = {lat: 28.621175, lng: 77.092686};
					var map = new google.maps.Map(document.getElementById('map'), {
						zoom: 15,
						center: uluru
					});
					var marker = new google.maps.Marker({
						position: uluru,
						map: map
					});
				}
			</script>
			<script async defer
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYi6ChCG9E7HDpeO0fyUfSZ635t7FquUE&callback=initMap">
			</script>


<%@ include file = "footer.jsp" %>
		</div>
<%@ include file = "scripts.jsp" %>
