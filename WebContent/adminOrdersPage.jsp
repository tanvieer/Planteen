
<%@include file="adminTopNav.jsp"%>
<%@include file="adminSideNav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->



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
												<th>SL</th>
												<th>Order By</th>
												<th>Delivery Address</th>
												<th>Phone Number</th>
												<th>Order Date</th>
												<th>Order Status</th>
												<th>Total Order</th>
											</tr>
										</thead>
										
										<tbody>
										<c:forEach varStatus="loop" begin="1" end="100" step="1">
											<tr class="odd gradeU">
												<td>User ${loop.index}</td>
												<td>test${loop.index}@gmail.com</td>
												<td>
												Address: <br>
												Tanvir Islam<br>
												House 12, road 12, Nikunja 2, khilkhet, Dhaka-1229 Khilkhet (Dhaka City) Dhaka Khilkhet (Dhaka City) Dhaka
											<br>+8801911066421 +8801774275301
 												</td>
												<td class="center">01911066${loop.index}0</td>
												<td class="center">Male</td>
												<td class="center">10/02/1${loop.index}</td>
												<td class="center">${loop.index}</td>
											</tr>
											
											<tr class="even gradeA">
												<td>User ${loop.index}</td>
												<td>snoozy${loop.index}@gmail.com</td>
												<td>
												Address: <br>
												Tanvir Islam<br>
												House 12, road 12, Nikunja 2, khilkhet, Dhaka-1229 Khilkhet (Dhaka City) Dhaka Khilkhet (Dhaka City) Dhaka
											<br>+8801911066421 +8801774275301
												
												</td>
												<td class="center">0191166${loop.index}20</td>
												<td class="center">Female</td>
												<td class="center">10/02/${loop.index}</td>
												<td class="center">${loop.index}</td>
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



			<script src="assets/js/jquery-1.10.2.js"></script>


			<script src="assets/js/dataTables/jquery.dataTables.js"></script>

			<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

			<script>
				$(document).ready(function() {
					$('#dataTables-example').dataTable();
				});
			</script>


</main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminUsersPageFooter.jsp"%>