
<%@include file="AdminTopNav.jsp"%>
<%@include file="AdminSideNav.jsp"%>

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
												<th>Product Name</th>
												<th>Quantity</th>
												<th>Buy Price</th>
												<th>Sell Price</th>
												<th>Buy Date</th>
											
												<th>Total Order</th>
											</tr>
										</thead>
										
										<tbody>
										<c:forEach varStatus="loop" begin="1" end="100" step="1">
											<tr class="odd gradeU">
												<td>Product ${loop.index}</td>
												<td>${loop.index}0</td>
												<td>1${loop.index }</td>
												<td class="center">1${loop.index}0</td>
												
												<td class="center">10/02/1${loop.index}</td>
												<td class="center">${loop.index}</td>
											</tr>
											
											<td>Product ${loop.index}</td>
												<td>${loop.index}0</td>
												<td>1${loop.index }</td>
												<td class="center">1${loop.index}0</td>
												
												<td class="center">10/02/1${loop.index}</td>
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
<%@include file="AdminAsideNav.jsp"%>
<%@include file="AdminUsersPageFooter.jsp"%>