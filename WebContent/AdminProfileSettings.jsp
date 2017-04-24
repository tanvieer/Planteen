<%@include file="adminTopNav.jsp"%>
<%-- <%@include file="AdminSideNav.jsp"%>
 --%>

	<div class="col-md-12 mb-4">
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab"
				href="#Profile" role="tab" aria-controls="Profile"
				aria-expanded="true">Profile</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#edit_pro" role="tab" aria-controls="Orders"
				aria-expanded="false">Edit Profile</a></li>
		</ul>
		
	
	
		<div class="tab-content">
	
	
			<div class="tab-pane active" id="Profile" role="tabpanel"
				aria-expanded="true">
	
				<!-- 	Profile start -->
				<div class="card">
	
					<center>
						<img class="card-img-top img-responsive"
							style="width: 150px; height: 150px"
							src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png"
							alt="Card image cap">
					</center>
	
	
	
	
					<table class="table table-user-information">
						<tbody>
							<tr>
								<td>Name:</td>
								<td>Planteen Admin</td>
							</tr>
	
							<tr>
								<td>Gender</td>
								<td>Male</td>
							</tr>
							<tr>
								<td>Home Address</td>
								<td>Dhaka</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><a href="admin@planteen.com">admin@planteen.com</a></td>
							</tr>
							<tr>
								<td>Phone Number</td>
								<td>
								123-4567-890(Landline)<br> 
								<br>555-4567-890(Mobile)
								</td>
	
							</tr>
	
						</tbody>
					</table>
				</div>
	
				<!-- 	View Profile end  -->
	
	
			</div>
	
	
	
			
	
	
			<div class="tab-pane" id="edit_pro" role="tabpanel"
				aria-expanded="false">
	
				<div class="card">
	
	
					<div class="card-header">
						<strong>Edit Profile</strong>
					</div>
	
	
					<div class="card-block">
						<form action="" method="post" enctype="multipart/form-data"
							class="form-2orizontal">
	
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="text-input">Name</label>
								<div class="col-md-9">
									<input type="text" id="email" name="name"
										class="form-control" placeholder="Full Name"> <span
										class="help-block" id="nameErr">Enter Full Name</span>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="email-input">Email</label>
								<div class="col-md-9">
									<input type="email" id="email" name="email"
										class="form-control" placeholder="Enter Email"> <span
										class="help-block" id="emailErr">Please enter your email</span>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="password">Password</label>
								<div class="col-md-9">
									<input type="password" id="password" name="password"
										class="form-control" placeholder="Password"> <span
										class="help-block" id="passwordErr">Please enter a complex password</span>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="cpassword">Confirm Password</label>
								<div class="col-md-9">
									<input type="password" id=c"password" name="cpassword"
										class="form-control" placeholder="Confirm Password"> <span
										class="help-block" id="cpasswordErr">Please enter a complex password</span>
								</div>
							</div>
	
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="phone">Phone</label>
								<div class="col-md-9">
									<input type="number" id="phone" name="phone"
										class="form-control" placeholder="Phone Number"> <span
										class="help-block" id="phoneErr">Please enter a complex password</span>
								</div>
							</div>
						</form>
					</div>
	
	
	
					<div class="card-footer">
						<button type="submit" class="btn btn-sm btn-primary">
							<i class="fa fa-dot-circle-o"></i> Submit
						</button>
						<button type="reset" class="btn btn-sm btn-danger">
							<i class="fa fa-ban"></i> Reset
						</button>
					</div>
				</div>
				<!-- Profile edit ends -->
	
			</div>
	
	
				<!-- tab-pane ends -->
	
	</div>
	</div>


<%@include file="adminAsideNav.jsp"%>
<%@include file="adminFooter.jsp"%>