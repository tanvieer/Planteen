
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
												<th>Name</th>
												<th>Email</th>
												<th>Phone</th>
												<th>Details</th>									
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${users}" var="user">
											<tr class="odd gradeU">
												<td>${user.name}</td>
												<td>${user.email}</td>
												<td class="center">${user.phone}</td>
												<td class="center">
													<!-- Modal Button -->
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#primaryModal${user.userId}">
														User Details</button>	
												</td>
			
											</tr>
										<%--
											<tr class="even gradeA">
												<td>${user.address }</td>
												<td>${user.email}</td>
									
												<td class="center">${user.phone}</td>
												
												<td class="center">
													<!-- Modal Button -->
			
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#primaryModal${loop.index}">
														User Details</button>
			
			
												</td>
										
											</tr>
											 --%>	
											
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
				
				
				
				
				
				
				
				
				
				
				
<c:forEach items="${users}" var="user">

	<div class="modal fade" id="primaryModal${user.userId}" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">${user.name}</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
			
				
				<!-- /. MODAL user details start --> 
				
				
				
					<div class="modal-body">


						<div class="col-sm-16">

                            <div class="card">
                                <div class="card-header">
                                    <strong>User Details</strong>
                                    
                                </div>
                                <div class="card-block">
                                    <div class="form-group">
                                        <label for="company">Address</label>
                                        <input type="text" class="form-control" id="company" value="${user.address }"disabled>
                                    </div>

                                    <div class="form-group">
                                        <label for="vat">Email</label>
                                        <input type="text" class="form-control" id="vat" value="${user.email }"disabled>
                                    </div>

                                    <div class="form-group">
                                        <label for="street">Gender</label>
                                        <input type="text" class="form-control" id="street" value="${user.gender }"disabled>
                                    </div>

                                    

                                        <div class="form-group ">
                                            <label for="city">Register Date</label>
                                            <input type="text" class="form-control" id="city" value="Date not found"disabled>
                                        </div>

                                   

                                   

                                 
                                </div>
                            </div>

                        </div>
				
				
				

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Done</button>
					</div>

				
				
				
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
		
	</div>

</c:forEach> 

<!-- /. MODAL user details end --> 



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