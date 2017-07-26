<%@ include file = "header1.jsp" %>
		<title>VacciLocator | VacciIndia</title>
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

				<%-- <div class="container">
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div> --%>

					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<h3>Pediatricians Near your Area</h3>
								<div id="map"></div>
							</div>
							<%-- <div class="col-md-1"></div> --%>
							<div class="col-md-4">
								<h4 class="heading-primary text-uppercase mb-md">Enter Your Location</h4>
								<h5>To find nearby Vaccination Locations.</h5>
								<form action="#" id="frmSignUp" method="post">
									<div class="row">

										<div class="form-group">
											<div class="col-md-12">
												<input type="button" value="Choose Automatically" class="btn btn-block btn-primary">
											</div>
										</div>
										<h5 style="text-align:center;">OR</h5>
										<div class="form-group">
											<div class="col-md-12">
												<label>Enter Location</label>
												<input type="text" value="" class="form-control input-lg">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<input type="submit" value="Submit" required class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
										</div>
									</div>
								</form>
							</div>
						</div>

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
