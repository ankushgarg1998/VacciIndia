<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="footer-ribbon">
        <span>Get in Touch</span>
      </div>
      <div class="col-md-6">
        <div class="newsletter">
          <h4>Updates</h4>
          <p>Keep up on our always evolving product features and technology. Enter your e-mail and subscribe to our updates.</p>

          <div class="alert alert-success hidden" id="newsletterSuccess">
            <strong>Success!</strong> You've been added to our email list.
          </div>

          <div class="alert alert-danger hidden" id="newsletterError"></div>

          <form id="newsletterForm" action="php/newsletter-subscribe.php" method="POST">
            <div class="input-group">
              <input class="form-control" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text">
              <span class="input-group-btn">
                <button class="btn btn-default" type="submit">Go!</button>
              </span>
            </div>
          </form>
        </div>
      </div>

      <div class="col-md-4">
        <div class="contact-details">
          <h4>Contact Us</h4>
          <ul class="contact">
            <li><p><i class="fa fa-map-marker"></i> <strong>Address:</strong> MSIT, Janakpuri, New Delhi</p></li>
            <li><p><i class="fa fa-phone"></i> <strong>Phone:</strong>(+91)7838765582</p></li>
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
