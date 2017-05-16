
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
												<th>Invoice Details</th>
												<th>User Details</th>
												<th>Total Price</th>
												<th>Status</th>
												
												
												
											</tr>
										</thead>
										
										<tbody><%-- 
										<c:forEach varStatus="loop" begin="1" end="100" step="1"> --%>
										<c:forEach items="${invoices}" var="invoice" varStatus="loop">
											<tr class="odd gradeU">
												<td>
													${loop.index+1 }
												</td>
												<td>
												
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#invoiceModal" 
														onClick = "showInvoiceProducts('${invoice.invoicePrimaryId}')">
														Items</button> 
														
														<!-- <button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#invoiceModal" 
														onClick = "showInvoiceProducts('3t1493755173824r1578')">
														Invoice Items</button>  -->

												</td>
												
												<td>  
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#userModal" 
														onClick = "showUserInfo('${invoice.userId}')">
														User Details</button>
													<!-- <button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#userModal" 
														onClick = "showUserInfo('3')">
														User Details</button> -->
												</td>
												
												
												<td>${invoice.totalSellingPrice }</td>
												<td>
													${invoice.status }
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
			</div>




<div class="modal fade" id="invoiceModal"
					tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-primary" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">${i}</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">X</span>
								</button>
							</div>
							<!-- /. MODAL user details start -->
							<div class="modal-body">
								<div class="col-sm-16">
									<div class="card">
										<div class="card-block" id="testModalTable1">
											
											
											
											<!-- AJAX DIYE ADD HOBE MODAL BODY -->
											
											
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				
				
	
	
	<div class="modal fade" id="userModal"
					tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-primary" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">${i}</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">X</span>
								</button>
							</div>
							<!-- /. MODAL user details start -->
							<div class="modal-body">
								<div class="col-sm-16">
									<div class="card">
										<div class="card-block" id="userDetailsDiv">
											
											
											
											<!-- AJAX DIYE ADD HOBE MODAL BODY -->
											
											
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>			
				
				

			<script src="assets/js/jquery-1.10.2.js"></script>


			<script src="assets/js/dataTables/jquery.dataTables.js"></script>

			<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

			<script>
				$(document).ready(function() {
					$('#dataTables-example').dataTable();
				});
			</script>
			
			
			
			
<script>
	function showInvoiceProducts(id){

		var xmlhttp;
		var url = "getInvoicesProduct?invoicePrimaryId=" + id;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
	/*			alert(xmlhttp.responseText);*/
				document.getElementById("testModalTable1").innerHTML = xmlhttp.responseText;
					
			}
		};
		xmlhttp.open("GET", url, false);
		xmlhttp.send();
	}
	
	
	function showUserInfo(id){

		var xmlhttp;
		var url = "GetUserDetailsByUserId?userId=" + id;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
	/*			alert(xmlhttp.responseText);*/
				document.getElementById("userDetailsDiv").innerHTML = xmlhttp.responseText;
					
			}
		};
		xmlhttp.open("GET", url, false);
		xmlhttp.send();
	}

</script>


</main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminUsersPageFooter.jsp"%>