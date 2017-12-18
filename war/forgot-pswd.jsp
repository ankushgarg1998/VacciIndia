<%@ include file = "header1.jsp" %>
<title>Forgot Password | VacciIndia</title>
<%@ include file = "header2.jsp" %>

			<div role="main" class="main">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>
					<div class="center">
						<div class="col-md-12">
			        <div class="newsletter">
			          <h4>Forgot Password?</h4>
			          <p>Please enter you email Id below</p>

			          <div class="alert alert-success hidden" id="newsletterSuccess">
			            <strong>Success!</strong> Your email has been sent if it's registered.
			          </div>

			          <div class="alert alert-danger hidden" id="newsletterError"></div>

			          <form id="newsletterForm" action="/resetpswdcont" method="POST">
									<div class="col-md-12">
			            <div class="input-group">
			              <input class="form-control" placeholder="Email Address" name="forgotpswd" id="newsletterEmail" type="text">
			              <span class="input-group-btn">
			                <button class="btn btn-primary pull-right mb-xl" type="submit">Send</button>
			              </span>
			            </div>
								</div>
			          </form>
			        </div>
			      </div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>
				</div>
			</div>

			<%@ include file = "footer.jsp" %>

			<%@ include file = "scripts.jsp" %>
