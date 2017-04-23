<%@include file="topnav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main"> <!-- Breadcrumb -->
<ol class="breadcrumb">
	<li class="breadcrumb-item">Home</li>
	<li class="breadcrumb-item"><a href="#">Admin</a></li>
	<li class="breadcrumb-item active">Dashboard</li>
	<li>


		<form action="" method="post" class="form-2orizontal ">
			<div class="row">
				<div class="col-md-12">
					<div class="input-group">
						<div class="input-group-btn">

							<select class="form-control">
								<option class="dropdown-item ">All Categories</option>

								<c:forEach varStatus="loop" begin="1" end="50" step="1">
									<option class="dropdown-item ">Category ${loop.index}</option>
								</c:forEach>
							</select>

						</div>
						<input type="text" id="input3-group3" name="input3-group3"
							class="form-control" placeholder="..">
						<div class="input-group-btn">
							<button type="submit" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</form>

	</li>
</ol>




<div class="container-fluid">
	<div class="row animated fadeIn">
		<c:forEach varStatus="loop" begin="1" end="50" step="1">
			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-primary">
					<h4 class="card-header card-title">Product ${loop.index}</h4>

					<img class="card-img-top img-responsive" src="./img/logo1.png"
						alt="Card image cap">
					<div class="card-block">

						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

						<ul class="list-group list-group-flush">
							<li class="list-group-item"><b>Price: 500BDT</b></li>
							<li class="list-group-item">

								<button type="button"
									class="btn btn-outline-primary btn-lg btn-block">See
									Product Details</button>

							</li>

							<li class="list-group-item text-center">

								<button type="button" class="btn btn-outline-primary">
									<i class="fa fa-check"></i>&nbsp; Add To Cart
								</button>
								<button type="button" class="btn btn-outline-primary">
									<i class="fa fa-star"></i>&nbsp; Wishlist
								</button>

							</li>
						</ul>


					</div>
				</div>
			</div>




			<div class="col-sm-4 col-md-4">
				<div class="card card-accent-primary align-middle">
					<h4 class="card-header card-title">Product ${loop.index}</h4>

					<img class="card-img-top img-responsive" src="./img/favicon.png"
						alt="Card image cap">
					<div class="card-block">

						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

						<ul class="list-group list-group-flush">
							<li class="list-group-item"><b>Price: 500BDT</b></li>
							<li class="list-group-item">

								<button type="button"
									class="btn btn-outline-primary btn-lg btn-block">See
									Product Details</button>

							</li>

							<li class="list-group-item">

								<button type="button" class="btn btn-outline-primary">
									<i class="fa fa-check"></i>&nbsp;Add To Cart
								</button>
								<button type="button" class="btn btn-outline-primary">
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