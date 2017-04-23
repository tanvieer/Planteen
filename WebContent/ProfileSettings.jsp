<%@include file="userProfileTopNav.jsp"%>

<div class="col-md-12 mb-4">
	<ul class="nav nav-tabs" role="tablist">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#Profile" role="tab" aria-controls="Profile"
			aria-expanded="true">Profile</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#edit_pro" role="tab" aria-controls="Orders"
			aria-expanded="false">Edit Profile</a></li>


		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#Current_order" role="tab" aria-controls="Orders"
			aria-expanded="false">Current Order</a></li>

		<li class="nav-item"><a class="nav-link " data-toggle="tab"
			href="#Past_Order" role="tab" aria-controls="TestTable"
			aria-expanded="false">Previous Orders</a></li>

	</ul>



	<div class="tab-content">


		<div class="tab-pane active" id="Profile" role="tabpanel"
			aria-expanded="true">

			<!-- 	Profile start -->
			<div class="card">

				<center>
					<img class="card-img-top my-4 img-responsive"
						style="width: 150px; height: 150px"
						src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png"
						alt="Card image cap">
				</center>




				<table class="table table-user-information">
					<tbody>
						<tr>
							<td>Name:</td>
							<td>Mobasser Ahmed</td>
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
							<td><a href="mobasser016@gmail.com">mobasser016@gmail.com</a></td>
						</tr>
						<tr>
							<td>Phone Number</td>
							<td>123-4567-890(Landline)<br> <br>555-4567-890(Mobile)
							</td>

						</tr>

					</tbody>
				</table>
			</div>

			<!-- 	View Profile end  -->
			<!-- 			<a href="">Edit Profile</a> -->

		</div>



		<div class="tab-pane" id="Current_order" role="tabpanel"
			aria-expanded="false">


			<!-- 		order list start -->
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Current Orders
				</div>

				<div class="card-block">
					<table class="table">
						<thead>
							<tr>
								<th>SL No</th>
								<th>Product Name</th>
								<th>Quantity</th>
								<th>Price</th>
								<th>Order Date</th>
								<th>Delivery Date</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1.</td>
								<td>Samsung Galaxy S8</td>
								<td>2</td>
								<td>50004</td>
								<td>2.2.2016</td>
								<td>2.3.2015</td>

								<td><span class="badge badge-success">Delivered</span></td>
							</tr>
							<tr>
								<td>1.</td>
								<td>Samsung Galaxy S8</td>
								<td>2</td>
								<td>50004</td>
								<td>2.2.2016</td>
								<td>2.3.2015</td>
								<td><span class="badge badge-danger">Banned</span></td>
							</tr>
							<tr>
								<td>1.</td>
								<td>Samsung Galaxy S8</td>
								<td>2</td>
								<td>50004</td>
								<td>2.2.2016</td>
								<td>2.3.2015</td>

								<td><span class="badge badge-default">Canceled</span></td>
							</tr>
							<tr>
								<td>1.</td>
								<td>Samsung Galaxy S8</td>
								<td>2</td>
								<td>50004</td>
								<td>2.2.2016</td>
								<td>2.3.2015</td>
								<td><span class="badge badge-warning">Pending</span></td>
							</tr>
							<tr>
								<td>1.</td>
								<td>Samsung Galaxy S8</td>
								<td>2</td>
								<td>50004</td>
								<td>2.2.2016</td>
								<td>2.3.2015</td>
								<td><span class="badge badge-primary">Active</span></td>
							</tr>
						</tbody>
					</table>
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Prev</a>
						</li>
						<li class="page-item active"><a class="page-link" href="#">1</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</div>
			</div>

			<!-- 			Order end -->

		</div>















		<div class="tab-pane" id="edit_pro" role="tabpanel"
			aria-expanded="false">

			<div class="card">


				<div class="card-header">
					<strong>Account Information</strong>
				</div>


				<div class="card-block">
					<form action="" method="post" enctype="multipart/form-data"
						class="form-2orizontal">

						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="text-input">Name</label>
							<div class="col-md-9">
								<input type="text" id="text-input" name="text-input"
									class="form-control" placeholder="Text"> <span
									class="help-block">This is a help text</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="email-input">Email</label>
							<div class="col-md-9">
								<input type="email" id="email-input" name="email-input"
									class="form-control" placeholder="Enter Email"> <span
									class="help-block">Please enter your email</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password-input">Gender</label>
							<div class="col-md-9">
								<input type="text" id="password-input" name="password-input"
									class="form-control" placeholder="Password"> <span
									class="help-block">Please enter a complex password</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password-input">Address</label>
							<div class="col-md-9">
								<input type="text" id="password-input" name="password-input"
									class="form-control" placeholder="Password"> <span
									class="help-block">Please enter a complex password</span>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password-input">Phone</label>
							<div class="col-md-9">
								<input type="text" id="password-input" name="password-input"
									class="form-control" placeholder="Password"> <span
									class="help-block">Please enter a complex password</span>
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



		<div class="tab-pane" id="Past_Order" role="tabpanel"
			aria-expanded="false">




			<div id="page-inner">





				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</thead>
										<tbody>
											<tr class="odd gradeX">
												<td>Trident</td>
												<td>Internet Explorer 4.0</td>
												<td>Win 95+</td>
												<td class="center">4</td>
												<td class="center">X</td>
											</tr>
											<tr class="even gradeC">
												<td>Trident</td>
												<td>Internet Explorer 5.0</td>
												<td>Win 95+</td>
												<td class="center">5</td>
												<td class="center">C</td>
											</tr>
											<c:forEach varStatus="loop" begin="1" end="100" step="1">
												<tr class="odd gradeU">
													<td>Trident ${loop.index}</td>
													<td>Internet Explorer 1.${loop.index}</td>
													<td>Win ${loop.index}5+</td>
													<td class="center">5.${loop.index}</td>
													<td class="center">A${loop.index}</td>
												</tr>

												<tr class="even gradeA">
													<td>Trident</td>
													<td>Internet Explorer 5.5</td>
													<td>Win 95+</td>
													<td class="center">5.5</td>
													<td class="center">A</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->


					</div>
				</div>
				<!-- /. PAGE INNER  -->
			</div>
		</div>


		<script src="assets/js/jquery-1.10.2.js"></script>


		<script src="assets/js/dataTables/jquery.dataTables.js"></script>

		<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

		<script>
			$(document).ready(function() {
				$('#dataTables-example').dataTable();
			});
		</script>


		<!-- tab-pane ends -->

	</div>
</div>

<%@include file="asidenav.jsp"%>
<%@include file="profileFooter.jsp"%>