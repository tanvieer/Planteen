<%@include file="topnav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
<%@include file="productSearch.jsp"%>




<div class="container-fluid">
	<div class="row animated fadeIn">
		<!-- page content -->


		<!-- 		<div class="row"> -->
		<!-- 			<div class="col-md-12"> -->
		<!-- 				<div class="card"> -->
		<!-- 					<div class="card-header">Traffic &amp; Sales</div> -->
		<!-- 					<div class="card-block"> -->





		<table class="table table-hover table-outline mb-0 hidden-sm-down">
			<thead class="thead-default">
				<tr>
					<th class="text-center"><i class="fa fa-file-image-o"></i></th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Item Price</th>
					<th>Total</th>
					<th class="text-center"><i class="fa fa-trash"></i></th>
				</tr>
			</thead>
			<tbody>


				<c:forEach varStatus="loop" begin="1" end="8" step="1">
					<tr>
						<td class="text-center">
							<div class="avatar">
								<img src="img/avatars/${loop.index}.jpg" class="img-avatar"
									alt="admin@bootstrapmaster.com"> <span
									class="avatar-status badge-default"></span>
							</div>
						</td>
						<td>
							<div>Samsung</div>
						</td>
						<td>
							<select>
								<c:forEach varStatus="hi" begin="1" end="10" step="1">
								<option value="${hi.index}">${hi.index}</option>
								</c:forEach>
							</select>
						<td>
							${loop.index}0 BDT
						</td>
						<td>
							<strong>${loop.index}0 BDT</strong>
						</td>
						<td class="text-center">
							<button class="btn btn-sm btn-warning"><i class="fa fa-trash"></i></button>
						</td>
						
					</tr>
				</c:forEach>

			</tbody>
			
			
			<thead class="thead-default">
				<tr>
					<th colspan=4>
						<button class="btn btn-sm btn-success"><i class="fa fa-dollar"> Proceed to Checkout</i></button>
					
						<button class="btn btn-sm btn-warning"><i class="fa fa-shopping-cart"> Continue Shopping</i> </button>
					
						<button class="btn btn-sm btn-danger"><i class="fa fa-trash"> Clear Cart</i></button>
					</th>
					<th colspan=2 class="text-right">SUB-TOTAL:&nbsp;150000 BDT</th>
				</tr>
			</thead>
			
		</table>







		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<!--/.col-->
		<!-- 		</div> -->




	</div>
</div>


</main>

<!-- /page content -->

<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>

