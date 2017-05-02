
<%@include file="adminTopNav.jsp"%>
<%@include file="adminSideNav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
	<center>
		<button type="button" class="btn btn-primary"
			data-toggle="modal" data-target="#addModal">Add New Category
		</button>
		
	</center>

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<br>
										<thead>
											<tr>
												<th>Category Id</th>
												<th>Category Name</th>
												<th>Action</th>									
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${categories}" var="category">
											<tr class="odd gradeU">
												<td>${category.categoryId}</td>
												<td>${category.categoryName}</td>
												
												
												<td class="center">
													<!-- Modal Button -->
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#primaryModal${category.categoryId}">Edit
													</button>	
													
													
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#deleteModal${category.categoryId}">Delete
													</button>
													
														
<%-- 													<a href="CategoryListDelete?id=${ category.categoryId}" class="btn btn-primary">Delete</a> --%>
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
				<!-- /. PAGE INNER  -->
				
				
				
				
				
				
				
				
				
				
				
<c:forEach items="${categories}" var="category">

	<div class="modal fade" id="primaryModal${category.categoryId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">${category.categoryName}</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
			
				
				<!-- /. MODAL user details start --> 
				
				
				
					<div class="modal-body">


						<div class="col-sm-16">

                            <div class="card">
                                    <div class="card-block">
                                    <div class="form-group">
                                    
                                    
                                    <form action="CategoryListEdit" method="POST">
                                        <label for="company">Category Name</label>
                                        <input type="text" class="form-control" name="txt-name" id="txt_name" value="${category.categoryName }"/>
                                        <br>
                                        <input type="hidden" id="txt_id" name="txt-id" value="${category.categoryId }">
                                        <input type="submit" class="btn btn-primary" value="UPDATE" />
                                        
                                     </form>         
                                    </div>
                                 
                                </div>
                            </div>

                        </div>
				</div>
<!-- 					<div class="modal-footer"> -->
<!--  						<button type="button" class="btn btn-secondary" ta-dismiss="modal">Close modal</button>  -->
<%-- 						<a href="CategoryListEdit?id=${ category.categoryId}"" class="btn btn-primary">Update</a> --%> 
<!-- 					</div> -->

				
				
				
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
		
	</div>

</c:forEach> 

<%--################################################   DELETE MODAL     ################################################################ --%>
<c:forEach items="${categories}" var="category">
	<div class="modal fade" id="deleteModal${category.categoryId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">${category.categoryName}</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>	
				<!-- /. MODAL user details start --> 
			<div class="modal-body">
						<div class="col-sm-16">
                            <div class="card">
                                    <div class="card-block">
                                    <div class="form-group">
                                     <form action="CategoryListDelete" method="POST">
                                        <label for="company">All the products of the Category will be deleted</label><br>
                                        <input type="hidden" id="txt_id" name="txt-id" value="${category.categoryId }">
                                        <input type="submit" class="btn btn-primary" value="Confirm" />                                      
                                     </form>         
                                    </div>                               
                                </div>
                            </div>
                        </div>
				</div>					
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
</c:forEach> 

<%--===============================add modal=================================================== --%>
	<div class="modal fade" id="addModal${category.categoryId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-primary" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">${category.categoryName}</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>	
				<!-- /. MODAL user details start --> 
			<div class="modal-body">
						<div class="col-sm-16">
                            <div class="card">
                                    <div class="card-block">
                                    <div class="form-group">
                                    
                                     <form action="CategoryListAdd" method="POST">
                                        <label for="company">Category Name</label><br>
                                        <input type="text" id="txt_name" name="txt-name" ><br><br>
                                        <input type="submit" class="btn btn-primary" value="Add" />                                      
                                     </form>   
                                           
                                    </div>                               
                                </div>
                            </div>
                        </div>
				</div>					
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



<!-- /. MODAL user details end --> 



			<script src="assets/js/jquery-1.10.2.js"></script>


			<script src="assets/js/dataTables/jquery.dataTables.js"></script>

			<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

		


</main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminUsersPageFooter.jsp"%>