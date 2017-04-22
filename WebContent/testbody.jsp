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
							<!--button type="button" class="btn btn-primary dropdown-toggle"
								data-toggle="dropdown">
								All Categories <span class="caret"></span>
							</button>

							<div class="dropdown-menu">
								<!-- Dropdown category ==>
								<c:forEach varStatus="loop" begin="1" end="10" step="1">
									<a class="dropdown-item" href="#">Category ${loop.index}</a>
								</c:forEach>
							</div> -->
							<!-- <select class="dropdown-menu scrollable-menu container">      <!-- Dropdown category ==>
                           <c:forEach varStatus="loop" begin="1" end="50" step="1">
							  <option class="dropdown-item ">Category ${loop.index}</option>
							</c:forEach>
                        </select> -->


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
	<div class="animated fadeIn">

		<div class="row">
			<c:forEach varStatus="loop" begin="1" end="50" step="1">
				<div class="col-sm-6 col-md-4">
					<div class="card card-accent-primary">
						<h4 class="card-header card-title">Product ${loop.index}</h4>

						<div class="card" style="margin: 5px">
							<img class="card-img-top img-responsive"
								src="./img/Prodacts/plant.jpg" alt="Card image cap">
							<div class="card-block">

								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>

								<ul class="list-group list-group-flush">
									<li class="list-group-item"><b>Price: 500BDT</b></li>
									<li class="list-group-item">

										<button type="button"
											class="btn btn-lg btn-outline-primary btn-block">View
											Details</button>

									</li>

									<li class="list-group-item text-center">

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
				</div>

			</c:forEach>

		</div>

	</div>

</div>



</main>
<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>