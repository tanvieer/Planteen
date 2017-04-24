
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
								<th>Product Name</th>
								<th>Product Category</th>
								<th>Quantity</th>
								<th>Buy Price</th>
								<th>Sell Price</th>
								<th>Buy Date</th>
								<th>Action</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach varStatus="loop" begin="1" end="100" step="1">
								<tr class="odd gradeU">
									<td>Product ${loop.index}</td>
									<td>${loop.index}0</td>
									<td>1${loop.index }</td>
									<td class="center">1${loop.index}0</td>
									
									<td class="center">1${loop.index}5</td>

									<td class="center">10/02/1${loop.index}</td>
									<td class="center">  <!-- Modal Button -->

										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#primaryModal${loop.index}">
											Edit Product</button>  


									</td>
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









<!-- /. MODAL START --> 







<c:forEach varStatus="loop" begin="1" end="100" step="1">

	<div class="modal fade" id="primaryModal${loop.index}" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Product ${loop.index}B</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">B</span>
					</button>
				</div>
				
				
				
				
				
				
				
				
				
				
				
				<!-- /. MODAL Form 1 START --> 
				
				
				<form action="">
					<div class="modal-body">


						<div class="col-sm-16">

                            <div class="card">
                                <div class="card-header">
                                    <strong>Company</strong>
                                    <small>Form</small>
                                </div>
                                <div class="card-block">
                                    <div class="form-group">
                                        <label for="company">Company</label>
                                        <input type="text" class="form-control" id="company" placeholder="Enter your company name">
                                    </div>

                                    <div class="form-group">
                                        <label for="vat">VAT</label>
                                        <input type="text" class="form-control" id="vat" placeholder="PL1234567890">
                                    </div>

                                    <div class="form-group">
                                        <label for="street">Street</label>
                                        <input type="text" class="form-control" id="street" placeholder="Enter street name">
                                    </div>

                                    <div class="row">

                                        <div class="form-group col-sm-8">
                                            <label for="city">City</label>
                                            <input type="text" class="form-control" id="city" placeholder="Enter your city">
                                        </div>

                                        <div class="form-group col-sm-4">
                                            <label for="postal-code">Postal Code</label>
                                            <input type="text" class="form-control" id="postal-code" placeholder="Postal Code">
                                        </div>

                                    </div>
                                    <!--/.row-->

                                    <div class="form-group">
                                        <label for="country">Country</label>
                                        <input type="text" class="form-control" id="country" placeholder="Country name">
                                    </div>
                                </div>
                            </div>

                        </div>
				
				
				

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="Submit" class="btn btn-primary">
							Save changes
						</button>
					</div>
				</form>
				
				
				
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->




	<!-- /. MODAL Form 2 START --> 

	<div class="modal fade" id="primaryModal${loop.index}a" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Product ${loop.index}A</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">A</span>
					</button>
				</div>
				<form action="">
					<div class="modal-body">


						Name: <input type="text" name="product${loop.index}A"> <br>

						Price:<input type="text" name="product${loop.index}A"> <br>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="Submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</form>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

</c:forEach> 



<script src="assets/js/jquery-1.10.2.js"></script> <script
	src="assets/js/dataTables/jquery.dataTables.js"></script> <script
	src="assets/js/dataTables/dataTables.bootstrap.js"></script> <script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script> </main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminUsersPageFooter.jsp"%>