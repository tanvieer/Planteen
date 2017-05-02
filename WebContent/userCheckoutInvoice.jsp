<%@include file="userProfileTopNav.jsp"%>

<!-- <main class="main" style="background:white">  -->
<div class="container-fluid">

	<form method="GET" action="#">
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
								<label class="col-md-3 form-control-label" for="textarea-input"><i
									class="fa fa-paper-plane"></i><span class="mx-4">Phone Number</span></label>
								<div class="col-md-9">
									<input id="txt-phone" name="txt_phone"
										class="form-control" placeholder="Type Phone Number" value="${requestScope.userPhone}"/>
								</div>
							</div>


							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="textarea-input"><i
									class="fa fa-paper-plane"></i><span class="mx-4">Delivery
										Address</span></label>
								<div class="col-md-9">
									<textarea id="textarea-address" name="textarea_address" rows="4"
										class="form-control" placeholder="Type Address">${requestScope.userAddress}</textarea>
								</div>
							</div>

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
									<th>Unit Price</th>
									<th>Total Price</th>
								</tr>
							</thead>
							<tbody>



								<c:forEach items="${cartList}" var="cartItem" varStatus="loop">
									<tr>
										<td>${loop.index}</td>
										<td>Modal</td>
										<td>${cartItem.quantity}</td>
										<td>${cartItem.sellingPrice}</td>
										<td>${cartItem.sellingPrice*cartItem.quantity}</td>
									</tr>
								</c:forEach>



							</tbody>

						</table>

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

									<th colspan=2 class="text-right" id="result">SUB-TOTAL:&nbsp;50000
										BDT</th>
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

<!-- </main> -->
