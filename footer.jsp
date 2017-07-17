<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="footer-ribbon">
        <span>Get in Touch</span>
      </div>
      <div class="col-md-6">
        <div class="newsletter">
          <h4>Reach Us</h4>
			<div id="maps" class="google-map m-none mb-xl"></div>
        </div>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYi6ChCG9E7HDpeO0fyUfSZ635t7FquUE"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
        <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', init);
        function init() {
        	var mapOptions = {
        			zoom: 17,
        			center: new google.maps.LatLng(28.621175, 77.092686),
        			scrollwheel: false, 
        			draggable: false,
        			styles: [{"featureType":"administrative","elementType":"all","stylers":[{"saturation":"-100"}]},{"featureType":"administrative.province","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","elementType":"all","stylers":[{"saturation":-100},{"lightness":"50"},{"visibility":"simplified"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":"-100"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"lightness":"30"}]},{"featureType":"road.local","elementType":"all","stylers":[{"lightness":"40"}]},{"featureType":"transit","elementType":"all","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]},{"featureType":"water","elementType":"labels","stylers":[{"lightness":-25},{"saturation":-100}]}]
        			
            };
        	var mapElement = document.getElementById('maps');
        	var map = new google.maps.Map(mapElement, mapOptions);
        	var marker = new google.maps.Marker({
                position: new google.maps.LatLng(28.621175, 77.092686),
                map: map,
                icon: 'img/pin.png',
                title: 'Us!'
        	});
        	}
        </script>
        }
      </div>
      <div class="col-md-4">
        <div class="contact-details">
          <h4>Contact Us</h4>
          <ul class="contact">
            <li><p><i class="fa fa-map-marker"></i> <strong>Address:</strong> MSIT, Janakpuri, New Delhi</p></li>
            <li><p><i class="fa fa-phone"></i> <strong>Phone:</strong> (+91)7838765583</p></li>
            <li><p><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:support@vacciindia.com">support@vacciindia.com</a></p></li>
          </ul>
        </div>
      </div>
      <div class="col-md-2">
        <h4>Follow Us</h4>
        <ul class="social-icons">
          <li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
          <li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
          <li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
      <div class="row">
        <div class="col-md-1">
          <a href="home" class="logo">
            <img alt="Porto Website Template" class="img-responsive" src="img/logo-footer-dark.png">
          </a>
        </div>
        <div class="col-md-7">
          <p>© Copyright 2017. All Rights Reserved.</p>
        </div>
        <div class="col-md-4">
          <nav id="sub-menu">
            <ul>
              <li><a href="faq">FAQ's</a></li>
              <li><a href="about">About Us</a></li>
              <li><a href="contact">Contact</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</footer>
