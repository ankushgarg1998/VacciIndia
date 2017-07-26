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
								<h3>Vaccination Locations Near your Area</h3>
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
												<input type="button" onclick="getLocation()" value="Current Location" class="btn btn-block btn-primary">
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
  var map;
      var infowindow1,pos,infoWindow;
  function initMap() {
				map1 = new google.maps.Map(document.getElementById('map'), {
			          center: {lat: 28.62, lng: 77.20} ,
			          zoom: 15
			        });
		}
function getLocation()
{
	if (navigator.geolocation) {
  	navigator.geolocation.getCurrentPosition(success, error);
	} else {
		infoWindow.setPosition(pos);
		infoWindow.setContent(browserHasGeolocation ?
													'Error: The Geolocation service failed.' :
													'Error: Your browser doesn\'t support geolocation.');
		infoWindow.open(map);
	}
	function success(position) {
		var pos = {
  	            lat: position.coords.latitude,
        	      lng: position.coords.longitude
    };
	map = new google.maps.Map(document.getElementById('map'), {
          center:pos ,
          zoom: 15
        });
        infowindow1 = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        service.nearbySearch({
          location:pos,
          radius: 7000,
          type: ['hospital']
        }, callback);
      }
      function callback(results, status, pagination) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
          for (var i = 0; i < results.length; i++) {
            createMarker(results[i]);
          }
					if(pagination.hasNextPage)
						pagination.nextPage();
        }
      }
      function createMarker(place) {
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
          map: map,
          position: place.geometry.location
        });
        google.maps.event.addListener(marker, 'click', function() {
          infowindow1.setContent(place.name);
          infowindow1.open(map, this);
        });
	}
	function error(msg) {
  	alert('error: ' + msg);
	}
}
</script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtOfDA0TKQPSlLcdzWOmblPXIdgnrjqTM&libraries=places&callback=initMap" async defer></script>



<%@ include file = "footer.jsp" %>
		</div>
<%@ include file = "scripts.jsp" %>
