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
			aria-expanded="false">My Orders</a></li>

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
			<a href="">Edit Profile</a>

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
								<td></td>
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
								<td><span class="badge badge-success">Active</span></td>
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
					<strong>Basic Form</strong>Elements
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
											<tr class="odd gradeA">
												<td>Trident</td>
												<td>Internet Explorer 5.5</td>
												<td>Win 95+</td>
												<td class="center">5.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="even gradeA">
												<td>Trident</td>
												<td>Internet Explorer 6</td>
												<td>Win 98+</td>
												<td class="center">6</td>
												<td class="center">A</td>
											</tr>
											<tr class="odd gradeA">
												<td>Trident</td>
												<td>Internet Explorer 7</td>
												<td>Win XP SP2+</td>
												<td class="center">7</td>
												<td class="center">A</td>
											</tr>
											<tr class="even gradeA">
												<td>Trident</td>
												<td>AOL browser (AOL desktop)</td>
												<td>Win XP</td>
												<td class="center">6</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 1.0</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 1.5</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 2.0</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 3.0</td>
												<td>Win 2k+ / OSX.3+</td>
												<td class="center">1.9</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Camino 1.0</td>
												<td>OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Camino 1.5</td>
												<td>OSX.3+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape 7.2</td>
												<td>Win 95+ / Mac OS 8.6-9.2</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape Browser 8</td>
												<td>Win 98SE+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape Navigator 9</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.0</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.1</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.2</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.2</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.3</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.4</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.4</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.5</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.6</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.6</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.7</td>
												<td>Win 98+ / OSX.1+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.8</td>
												<td>Win 98+ / OSX.1+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Seamonkey 1.1</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Epiphany 2.20</td>
												<td>Gnome</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 1.2</td>
												<td>OSX.3</td>
												<td class="center">125.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 1.3</td>
												<td>OSX.3</td>
												<td class="center">312.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 2.0</td>
												<td>OSX.4+</td>
												<td class="center">419.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 3.0</td>
												<td>OSX.4+</td>
												<td class="center">522.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>OmniWeb 5.5</td>
												<td>OSX.4+</td>
												<td class="center">420</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>iPod Touch / iPhone</td>
												<td>iPod</td>
												<td class="center">420.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>S60</td>
												<td>S60</td>
												<td class="center">413</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 7.0</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 7.5</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 8.0</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 8.5</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.0</td>
												<td>Win 95+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.2</td>
												<td>Win 88+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.5</td>
												<td>Win 88+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera for Wii</td>
												<td>Wii</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Nokia N800</td>
												<td>N800</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Nintendo DS browser</td>
												<td>Nintendo DS</td>
												<td class="center">8.5</td>
												<td class="center">C/A<sup>1</sup>
												</td>
											</tr>
											<tr class="gradeC">
												<td>KHTML</td>
												<td>Konqureror 3.1</td>
												<td>KDE 3.1</td>
												<td class="center">3.1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>KHTML</td>
												<td>Konqureror 3.3</td>
												<td>KDE 3.3</td>
												<td class="center">3.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>KHTML</td>
												<td>Konqureror 3.5</td>
												<td>KDE 3.5</td>
												<td class="center">3.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeX">
												<td>Tasman</td>
												<td>Internet Explorer 4.5</td>
												<td>Mac OS 8-9</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeC">
												<td>Tasman</td>
												<td>Internet Explorer 5.1</td>
												<td>Mac OS 7.6-9</td>
												<td class="center">1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeC">
												<td>Tasman</td>
												<td>Internet Explorer 5.2</td>
												<td>Mac OS 8-X</td>
												<td class="center">1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>Misc</td>
												<td>NetFront 3.1</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>Misc</td>
												<td>NetFront 3.4</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Dillo 0.8</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Links</td>
												<td>Text only</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Lynx</td>
												<td>Text only</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeC">
												<td>Misc</td>
												<td>IE Mobile</td>
												<td>Windows Mobile 6</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeC">
												<td>Misc</td>
												<td>PSP browser</td>
												<td>PSP</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeU">
												<td>Other browsers</td>
												<td>All others</td>
												<td>-</td>
												<td class="center">-</td>
												<td class="center">U</td>
											</tr>
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


			<%@include file="profileFooter.jsp"%>