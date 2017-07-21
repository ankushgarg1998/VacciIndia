<%@ include file="header1.jsp"%>
<title>Vacci @Home | VacciIndia</title>
<%@ include file="header2.jsp"%>
<div role="main" class="main">


	<section
		class="page-header page-header-color page-header-primary page-header-float-breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="mt-xs">
						Vacci Scheduler<span>A calendar for vaccinations which also
							sends notifications.</span>
					</h1>
					<ul class="breadcrumb breadcrumb-valign-mid">
						<li><a href="#">Home</a></li>
						<li class="active">Vacci Scheduler</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<hr class="tall">
			</div>
		</div>

		<div class="row">
			<div class="col-md-8" >
				
				<%if((request.getAttribute("dob") == null) && (request.getAttribute("name")== null))
				{
					%>
					
					<table class="table table-striped table-bordered primary table-hover">

					<thead>
						<tr>
							<th>S.no</th>
							<th>Vaccine</th>
							<th>Prevents</th>
							<th>Min. Age for Dose 1</th>
							<th>Interval Between Dose 1 and Dose 2</th>
							<th>Interval Between Dose 2 and Dose 3</th>
							<th>Interval Between Dose 3 and Dose 4</th>
							<th>Interval Between Dose 4 and Dose 5</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>1</td>
							<td>BCG</td>
							<td>TB & bladder cancer</td>
							<td>Birth</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>2</td>
							<td>HepB</td>
							<td>Hepatitis B</td>
							<td>Birth</td>
							<td>4 weeks</td>
							<td>8 weeks</td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>3</td>
							<td>Poliovirus</td>
							<td>Polio</td>
							<td>Birth</td>
							<td>4 weeks</td>
							<td>4 weeks</td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>4</td>
							<td>DTP</td>
							<td>Dipahther ia, Tetanus & Pertussis</td>
							<td>6 weeks</td>
							<td>4 weeks</td>
							<td>4 weeks</td>
							<td>6 months (Booster 1)</td>
							<td>3 years (Booster 2)</td>
						</tr>

						<tr>
							<td>5</td>
							<td>MMR</td>
							<td>Measles, Mumps & Rubella</td>
							<td>9 months</td>
							<td>6 months</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>6</td>
							<td>HPV</td>
							<td>Some cancer and Warts</td>
							<td>9 years</td>
							<td>For child aged 9-14 years:6 months. For child aged 15 or more: 1 month</td>
							<td>For child aged 15 or more: 5 months</td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>7</td>
							<td>Hib</td>
							<td>Infections caused by bacteria</td>
							<td>6 weeks</td>
							<td>4 weeks</td>
							<td>4 weeks</td>
							<td>6 months (Booster 1)</td>
							<td></td>
						</tr>

						<tr>
							<td>8</td>
							<td>PCV</td>
							<td>Pneumonia</td>
							<td>6 weeks</td>
							<td>4 weeks</td>
							<td>4 weeks</td>
							<td>6 months (Booster 1)</td>
							<td></td>
						</tr>

						<tr>
							<td>9</td>
							<td>RV</td>
							<td>Severe Diarrhea Disease</td>
							<td>6 weeks</td>
							<td>4 weeks</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					</tbody>
				</table>
					<%
				}
					
				else
				{
					LocalDate dt = new LocalDate(request.getAttribute("dob"));
					%>
					
					<table class="table table-striped table-bordered primary table-hover">
					
					<col >
					<col style="color:#0088cc">
					
					<thead>
						
						<tr style="color:#0088cc">
							<th width="5%">S.no</th>
							<th width="10%">Vaccine</th>
							<th width="20%">Prevents</th>
							<th width="13%">Min. Age for Dose 1</th>
							<th width="13%">Age for Dose 2</th>
							<th width="13%">Age for Dose 3</th>
							<th width="13%">Age for Dose 4</th>
							<th width="13%">Age for Dose 5</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>1</td>
							<td style="font-weight:bold">BCG</td>
							<td>TB & bladder cancer</td>
							<td><%= dt %></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>2</td>
							<td style="font-weight:bold">HepB</td>
							<td>Hepatitis B</td>
							<td><%= dt %></td>
							<td><%= dt.plusWeeks(4) %></td>
							<td><%= dt.plusWeeks(8) %></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>3</td>
							<td style="font-weight:bold">Poliovirus</td>
							<td>Polio</td>
							<td><%= dt %></td>
							<td><%= dt.plusWeeks(4) %></td>
							<td><%= dt.plusWeeks(4) %></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>4</td>
							<td style="font-weight:bold">DTP</td>
							<td>Dipahther ia, Tetanus & Pertussis</td>
							<td><%= dt.plusWeeks(6) %></td>
							<td><%= dt.plusWeeks(10) %></td>
							<td><%= dt.plusWeeks(14) %></td>
							<td><%= dt.plusMonths(9) %> <br> (Booster 1)</td>
							<td><%= dt.plusYears(4)  %> <br> (Booster 2)</td>
						</tr>

						<tr>
							<td>5</td>
							<td style="font-weight:bold">MMR</td>
							<td>Measles, Mumps & Rubella</td>
							<td><%= dt.plusMonths(9) %></td>
							<td><%= dt.plusMonths(15) %></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>6</td>
							<td style="font-weight:bold">HPV</td>
							<td>Some cancer and Warts</td>
							<td><%= dt.plusYears(9) %></td>
							<td>If aged 9-14 years:<br><%= dt.plusMonths(6) %>.<br>If aged 15 or more:<br><%= dt.plusMonths(1) %></td>
							<td>If aged 15 or more:<br> <%= dt.plusMonths(5) %></td>
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>7</td>
							<td style="font-weight:bold">Hib</td>
							<td>Infections caused by bacteria</td>
							<td><%= dt.plusWeeks(6) %></td>
							<td><%= dt.plusWeeks(10) %></td>
							<td><%= dt.plusWeeks(14) %></td>
							<td><%= dt.plusMonths(6) %><br> (Booster 1)</td>
							<td></td>
						</tr>

						<tr>
							<td>8</td>
							<td style="font-weight:bold">PCV</td>
							<td>Pneumonia</td>
							<td><%= dt.plusWeeks(6) %></td>
							<td><%= dt.plusWeeks(10) %></td>
							<td><%= dt.plusWeeks(14) %></td>
							<td><%= dt.plusMonths(6) %> <br>(Booster 1)</td>
							<td></td>
						</tr>

						<tr>
							<td>9</td>
							<td style="font-weight:bold">Rotavirus</td>
							<td>Severe Diarrhea Disease</td>
							<td><%= dt.plusWeeks(6) %></td>
							<td><%= dt.plusWeeks(10) %></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					</tbody>
				</table>
					<%
				}
					%>
				
				
				
							</div>
			<div class="col-md-4">
				<h4 class="heading-primary text-uppercase mb-md">Enter Details</h4>
				<h5>To customize this chart according to dates.</h5>
				<form action="/scheduler_servlet" id="frmSignUp" method="post">
					<div class="row">

						<div class="form-group">
							<div class="col-md-12">
								<label>Child's Name</label>
								<input type="text" name="name" value="" class="form-control input-lg">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-12">
								<label>Date of Birth*</label>
								<input type="date" name="dob" value="" class="form-control input-lg">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<input type="submit" value="Submit" required class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
    						<input type="submit" value="Download Formats" required class="btn btn-primary pull-right mb-xl" data-loading-text="Loading..." onclick="form.action='savePDF';">
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


<%@ include file="footer.jsp"%>
</div>
<%@ include file="scripts.jsp"%>
