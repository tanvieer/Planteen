<%@include file="userProfileTopNav.jsp"%>

<!-- <main class="main" style="background:white">  -->
<div class="container-fluid">

	<form method="POST" action="UserCheckout">
		<div class="row">


			<div class="col-md-12">
				<div class="card-deck">
					<!-- <div class="card">
						<div class="card-header">
							<i class="fa fa-align-justify"></i> User Email
						</div>



						<div class="card-block">
							<i class="fa fa-envelope"></i><span class="mx-4">ajsdfhasdf@js.cj</span>
						</div>
					</div> -->
					<!-- </div> -->







					<!-- <div class="col-md-8"> -->
					<div class="card">
						<div class="card-header">
							<i class="fa fa-align-justify"></i> User Address
						</div>



						<div class="card-block">

							<!-- <form method="POST"> -->
							<!-- <span>Delivery Address</span>
						<input type="text" name="txt_checkoutAddress" placeholder="Delivery Address"/> -->
							<!-- </form> -->
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="disabled-input"><i
									class="fa fa-envelope"></i><span class="mx-4">User Email</span></label>
								<div class="col-md-9">
									<input type="text" id="txt-email" name="txt_email"
										class="form-control" placeholder="" value="${requestScope.userEmail}" disabled/>
								</div>
							</div>

							
							<div class="form-group row">
								<label class="col-md-3 form-control-label"><i
									class="fa fa-paper-plane"></i><span class="mx-4">Phone Number</span></label>
								<div class="col-md-9">
									<input id="txt-phone" name="txt_phone"
										class="form-control" placeholder="Type Phone Number" value="${requestScope.userPhone}"/>
										<small style="color:red;">${err_phone}</small>
								</div>
							</div>
							

							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="textarea-input"><i
									class="fa fa-paper-plane"></i><span class="mx-4">Delivery
										Address</span></label>
								<div class="col-md-9">
									<textarea id="txt-address" name="txt_address" rows="4"
										class="form-control" placeholder="Type Address">${requestScope.userAddress}</textarea>
										<small style="color:red;">${err_address}</small>
								</div>
							</div>
							<%-- <div class="form-group row">
								<label class="col-md-3 form-control-label" for="textarea-input"></label>
								<div class="col-md-9">
									<small style="color:red;">${err_address}</small>
								</div>
							</div> --%>

						</div>
					</div>
				</div>
			</div>




			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<i class="fa fa-align-justify"></i> Current Orders
					</div>



					<div class="card-block">
						<table class="table">
							<thead>
								<tr>
									<th>SL No</th>
									<th>Item Name Modal</th>
									<th>Units</th>
									<th>Unit Price (BDT)</th>
									<th>Total Price (BDT)</th>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${cartList}" var="cartItem" varStatus="loop">
									
									<tr>
										<td>${loop.index+1}</td>
										<td>${cartItem.productName}</td>
										<td>${cartItem.quantity}</td>
										<td>${cartItem.sellingPrice}</td>
										<td>${cartItem.sellingPrice*cartItem.quantity}</td>
									</tr>
									<c:set var="subtotal" scope="request" value="${subtotal + cartItem.quantity*cartItem.sellingPrice}"></c:set>
									
								</c:forEach>
							</tbody>
								<%-- <c:forEach items="${cartList}" var="subtotal" varStatus="loop">
									
									
										
										<c:out value=${subtotal }></c:out>
									
								</c:forEach> --%>
							<!-- <thead>
								<tr>
									<th colspan=5></th>
								</tr>
							</thead> -->
							<tfoot>
								<tr style="color:grey;">
									<th colspan=3></th>
									<th>SUBTOTAL : </th>
									<th>${subtotal}</th>
									
								</tr>
							</tfoot>

						</table>
						
						<input type="hidden" name="subTotal" value= "${subtotal}">

					</div>



					<div class="card-footer">
						<table width="100%">
							<thead>


								<tr>
									<th colspan=3><input type="submit"
										class="btn btn-sm btn-success" value=" Confirm Order" /> <a
										href="home" class="btn btn-sm btn-warning"><i
											class="fa fa-home"></i> Continue Shopping</a> <a
										href="cart" class="btn btn-sm btn-danger"><i
											class="fa fa-shopping-cart"></i> Back to Cart</a></th>

									<th colspan=2 class="text-right" id="result"></th>
								</tr>
							</thead>
						</table>
						<!-- <input type="submit" class="btn btn-success" value="Confirm Order" />
						<span>Sub Total: </span> -->
					</div>
				</div>
			</div>

		</div>
	</form>

</div>

</div>

    
   
    

    <!-- Bootstrap and necessary plugins -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/tether/dist/js/tether.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/pace/pace.min.js"></script>
    <script src="AJAX/checkExistingUser.js"></script>
    <script src="AJAX/getItems.js"></script>
	<script src="LoginWithSocialMedia/facebookapi.js"></script>


    <!-- Plugins and scripts required by all views -->
    <script src="bower_components/chart.js/dist/Chart.min.js"></script>

