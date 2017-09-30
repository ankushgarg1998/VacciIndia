<%@ include file = "header1.jsp" %>
		<title>VacciLocator | VacciIndia</title>
		<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
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
									<li><a href="home">Home</a></li>
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
								<h3>Vaccination Locations Near your Area</h3>
								<div id="map"></div>
							</div>
							<%-- <div class="col-md-1"></div> --%>
							<div class="col-md-4">
								<h4 class="heading-primary text-uppercase mb-md">Enter Your Location</h4>
								<h5>To find nearby Vaccination Locations.</h5>
								<form action="javascript:mojo();" id="frmSignUp" method="post">
									<div class="row">

										<div class="form-group">
											<div class="col-md-12">
												<input type="button" onclick="getloc()" value="Automatically Detect Location" class="btn btn-block btn-primary">
											</div>
										</div>
										<h5 style="text-align:center;">OR</h5>
										<div class="form-group">
											<div class="col-md-12">
												<label>Enter Location</label>
												<input type="text" id="add" value="" class="form-control input-lg">
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

			<script type="text/javascript" charset="utf-8">
				 function getloc() {
						 var currgeocoder;
						 //Set geo location lat and long
						 navigator.geolocation.getCurrentPosition(function(position, html5Error) {
								 geo_loc = processGeolocationResult(position);
								 currLatLong = geo_loc.split(",");
								 console.log(currLatLong[0] + "-- ######## --" + currLatLong[1]);
								 initMap();
						});

						//Get geo location result
					 function processGeolocationResult(position) {
								 html5Lat = position.coords.latitude; //Get latitude
								 html5Lon = position.coords.longitude; //Get longitude
								 html5TimeStamp = position.timestamp; //Get timestamp
								 html5Accuracy = position.coords.accuracy; //Get accuracy in meters
								 $("#lat").html(html5Lat);
								 $("#long").html(html5Lon);
								 return (html5Lat).toFixed(8) + ", " + (html5Lon).toFixed(8);
					 }
				}
			</script>

			<script>
				function mojo() {
					var geocoder = new google.maps.Geocoder();
					var address = $('#add').val();
					console.log(address);
					geocoder.geocode( { 'address': address}, function(results, status) {
					if (status == google.maps.GeocoderStatus.OK) {
							html5Lat = Number(results[0].geometry.location.lat().toFixed(8));
							html5Lon = Number(results[0].geometry.location.lng().toFixed(8));
							console.log(html5Lat);
							console.log(html5Lon);
							initMap();
							}
					});
				}
			</script>

			<script>
				// This example requires the Places library. Include the libraries=places
				// parameter when you first load the API. For example:
				// <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
				var map;
				var infowindow;
				var html5Lat = 28.621175;
				var html5Lon = 77.092686;


				function initMap() {
					var pyrmont = {lat: html5Lat, lng: html5Lon};
					map = new google.maps.Map(document.getElementById('map'), {
						center: pyrmont,
						zoom: 15
					});

					infowindow = new google.maps.InfoWindow();
					var service = new google.maps.places.PlacesService(map);
					service.nearbySearch({
						location: pyrmont,
						radius: 1500,
						type: ['hospital']
					}, callback);
				}

				function callback(results, status) {
					if (status === google.maps.places.PlacesServiceStatus.OK) {
						for (var i = 0; i < results.length; i++) {
							createMarker(results[i]);
						}
					}
				}

				function createMarker(place) {
					var placeLoc = place.geometry.location;
					var marker = new google.maps.Marker({
						map: map,
						position: place.geometry.location
					});

					google.maps.event.addListener(marker, 'click', function() {
						infowindow.setContent('<div><strong>' + place.name + '</strong></div>');
						infowindow.open(map, this);
					});
				}
			</script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtOfDA0TKQPSlLcdzWOmblPXIdgnrjqTM&libraries=places&callback=initMap" async defer></script>



<%@ include file = "footer.jsp" %>
		</div>
<%@ include file = "scripts.jsp" %>
