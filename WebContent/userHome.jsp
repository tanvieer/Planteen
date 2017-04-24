<%@include file="topnav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
<%@include file="productSearch.jsp"%>



<div class="container-fluid">
	<div class="row animated fadeIn">
		<c:forEach varStatus="loop" begin="1" end="50" step="1">
			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-default align-middle">
					<h4 class="card-header card-title">Product ${loop.index}</h4>

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




			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-default align-middle">
					<h4 class="card-header card-title">Product ${loop.index}</h4>

					<img class="card-img-top" style="max-height:20rem;width:auto" src="./img/test2.jpg"
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
		</c:forEach>

	</div>

</div>


</main>
<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>