<%@include file="topnav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
<%@include file="productSearch.jsp"%>



<div class="container-fluid">
	<div class="row animated fadeIn">
	
	
	
		 <%--  get by ajax
		 
	<div class="row animated fadeIn" id="showProducts">
		 
		 <c:forEach varStatus="loop" begin="1" end="3" step="1">
		
			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-default align-middle">
					<h4 class="card-header card-title">${products.productName}</h4>

					<img class="card-img-top" style="max-height:20rem;width:auto" src="./img/test.jpg"
						alt="Card image cap">
						
					<div class="card-block">

						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

						<ul class="list-group list-group-flush">
							<li class="list-group-item text-center"><b>Price: 500BDT</b></li>
							<li class="list-group-item text-center">

								<button type="button" onclick="window.location.href='viewItem.jsp?productId=${loop.index}'"
									class="btn btn-outline-primary btn-lg btn-block">Product Details
								</button>

							</li>

							<li class="list-group-item text-center">

								<button type="button" class="btn btn-warning">
									<i class="fa fa-check"></i>&nbsp; Add To Cart
								</button>
								<button type="button" class="btn btn-danger">
									<i class="fa fa-star"></i>&nbsp; Wishlist
								</button>

							</li>
						</ul>


					</div>
				</div>
			</div>


		</c:forEach>  --%>
		
		 <c:forEach items="${products}" var="product">
		
			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-default align-middle">
					<h4 class="card-header card-title">${product.productName}</h4>

					<img class="card-img-top" style="max-height:20rem;width:auto" src="${product.imagePath}"
						alt="Card image cap">
						
					<div class="card-block">

						<p class="card-text">${product.productDetails}</p>

						<ul class="list-group list-group-flush">
							<li class="list-group-item text-center"><b>Price: ${product.sellingPrice} BDT</b></li>
							<li class="list-group-item text-center">

								<button type="button" onclick="window.location.href='itemview?productId=${product.productId}'"
									class="btn btn-outline-primary btn-lg btn-block">Product Details
								</button>

							</li>

							<li class="list-group-item text-center">
  <!-- Confirm Modal -->
								<button type="button" class="btn btn-warning" 
								data-toggle="modal" data-target="#confirmModal"                
								onClick = "addToCart(${product.productId})">
									<i class="fa fa-check"></i>&nbsp; Add To Cart
								</button>
								<button type="button" class="btn btn-danger">
									<i class="fa fa-star"></i>&nbsp; Wishlist
								</button>

							</li>
						</ul>


					</div>
				</div>
			</div>


		</c:forEach> 

	</div>

</div>














		<!-- ===============================pop up for cart confirm ======================== -->


			<%-- <c:forEach items="${products}" var="product"> --%>
			<%-- <c:forEach var="i" begin="1" end="5"> --%>
				<%-- <div class="modal fade" id="p${invoice.invoicePrimaryId}" --%>
				<div class="modal fade" id="confirmModal"
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
										<div class="card-block" id="confirmId">
											
											
											
											<!-- AJAX DIYE ADD HOBE MODAL BODY -->
											
											<h4>Product Added To Cart</h4>
											
											
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
			<%--################################## 				pop up modal end     ##################################################### --%>










</main>
<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>