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
						src="./img/pp.png"
						alt="Card image cap">
				</center>

				<%-- <jsp:useBean id="user" class="entity.User" scope="request"></jsp:useBean> --%>


				<table class="table table-user-information">
					<%-- 				<jsp:useBean id="user" class="entity.User" scope="request"></jsp:useBean> --%>
					<tbody>
						<tr>
							<td>Name:</td>
							<%-- <td><jsp:getProperty property="name" name="user"/></td> --%>
							<td>${user.name}</td>

						</tr>

						<tr>
							<td>Gender</td>

							<td>${user.gender}</td>

						</tr>
						<tr>
							<td>Home Address</td>
							<td>${user.address}</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>${user.email}</td>
						</tr>
						<tr>
							<td>Phone Number</td>
							<td>${user.phone}<br> <br>
							</td>

						</tr>

					</tbody>
				</table>
			</div>

			<!-- 	View Profile end  -->
			<!-- 			<a href="">Edit Profile</a> -->

		</div>

		<!-- =============================CURRENT ORDERS TAB STARTS HERE=========================================== -->

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
								<th>Invoice Details</th>
								<th>Total Price</th>
								<th>Order Date</th>
								<th>Estimated Delivery Date</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>



							<c:forEach items="${invoices}" var="invoice" varStatus="loop">
							<%-- <c:forEach var="i" begin="1" end="5"> --%>
								<tr>
									<td>${loop.index+1}</td>
									<td>
										<!-- MODAL BUTTON FOR ITEMS IN INVOICE STARTS HERE, target Modal = p${invoice.invoicePrimaryId}-->


						
										
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#testModal" 
											onClick = "showInvoiceProducts('${invoice.invoicePrimaryId}')">
											Primary modal</button> 
										
										
										<!-- MODAL BUTTON FOR ITEMS IN INVOICE ENDS HERE, target Modal = p${invoice.invoicePrimaryId} -->
									</td>
									<td>${invoice.totalSellingPrice}</td>
									<td>${invoice.placementDate}</td>
									<td>After two days</td>
									<td><span class="badge badge-success">${invoice.status}</span></td>
								</tr>
							</c:forEach>



						</tbody>
					</table>

				</div>
			</div>

			<!-- 			Order end -->

<%-- 
			<!-- ======================================================= -->


			<c:forEach items="${products}" var="product">
			<c:forEach var="i" begin="1" end="5">
				<div class="modal fade" id="p${invoice.invoicePrimaryId}"
				<div class="modal fade" id="testModal"
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
										<div class="card-block" id="testModalTable">
											
											
											
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
			</c:forEach>
			################################## 				Delete modal end     #####################################################


			<!-- ====================================================== -->

 --%>



		</div>


		<!-- =============================CURRENT ORDERS TAB ENDS HERE=========================================== -->












		<div class="tab-pane" id="edit_pro" role="tabpanel"
			aria-expanded="false">

			<div class="card">


				<div class="card-header">
					<strong>Account Information</strong>
				</div>


				<div class="card-block">
					<form action="UserProfile" method="POST" class="form-2orizontal">

						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="text-input">Name</label>
							<div class="col-md-9">
								<input type="text" id="txt-name" name="txt_name"
									value="${user.name }" class="form-control" disabled>

							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="email-input">Email</label>
							<div class="col-md-9">
								<input type="email" id="txt-email" name="txt_email"
									class="form-control" value="${user.email }" disabled>

							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password-input">Gender</label>
							<div class="col-md-9">

								<input type="text" id="txt-gender" name="txt_gender"
									class="form-control" value="${user.gender }" disabled>

							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password_input">Address</label>
							<div class="col-md-9">
								<input type="text" id="txt-address" name="txt_address"
									class="form-control" value="${user.address}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-3 form-control-label" for="password_input">Phone</label>
							<div class="col-md-9">
								<input type="text" id="txt-phone" name="txt_phone"
									class="form-control" value="${user.phone }">
							</div>
						</div>

						<div class="card-footer">
							<!-- <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Update	</button> -->
							<input type="submit" class="btn btn-sm btn-primary"
								value="Update" />
							<!-- 				<button type="reset" class="btn btn-sm btn-danger">	<i class="fa fa-ban"></i> Reset </button> -->
						</div>

					</form>
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
												<th>SL No</th>
												<th>Invoice Details</th>

												<th>Total Price</th>
												<th>Order Date</th>
												<th>Estimated Delivery Date</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>



											<c:forEach items="${invoicesPrevious}" var="invoiceP" varStatus="loop">
												<tr>
													<td>${loop.index+1}</td>
													<td>
													
													
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#testModal" 
														onClick = "showInvoiceProducts('${invoiceP.invoicePrimaryId}')">
														Primary modal</button> 
													</td>
													
													
													
													<td>${invoiceP.totalSellingPrice }</td>
													<td>${invoiceP.placementDate}</td>
													<td>${invoiceP.confirmDate}</td>

													<td><span class="badge badge-success">${invoiceP.status}</span></td>
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
		
		
		
		
			<!-- ======================================================= -->


			<%-- <c:forEach items="${products}" var="product"> --%>
			<%-- <c:forEach var="i" begin="1" end="5"> --%>
				<%-- <div class="modal fade" id="p${invoice.invoicePrimaryId}" --%>
				<div class="modal fade" id="testModal"
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
										<div class="card-block" id="testModalTable">
											
											
											
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
			<%-- </c:forEach> --%>
			<%--################################## 				Delete modal end     ##################################################### --%>


			<!-- ====================================================== -->

		


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
				document.getElementById("testModalTable").innerHTML = xmlhttp.responseText;
					
			}
		};
		xmlhttp.open("GET", url, false);
		xmlhttp.send();
	}

</script>

<%@include file="asidenav.jsp"%>
<%@include file="profileFooter.jsp"%>