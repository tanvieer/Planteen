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
		<!-- page content -->


		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">Traffic &amp; Sales</div>
					<div class="card-block">





						<table class="table table-hover table-outline mb-0 hidden-sm-down">
							<thead class="thead-default">
								<tr>
									<th class="text-center"><i class="icon-people"></i></th>
									<th>Product Name</th>
									<th class="text-center">Quantity</th>
									<th>Percentage</th>
									<th class="text-center">Daily Average Sell</th>
									<th>Activity</th>
								</tr>
							</thead>
							<tbody>


								<c:forEach varStatus="loop" begin="1" end="10" step="1">
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
											<div class="small text-muted">
												<span>New</span>| Registered: Jan 1, 2015
											</div>
										</td>
										<td class="text-center"><img src="img/flags/France.png"
											alt="France" style="height: 24px;"></td>
										<td>
											<div class="clearfix">
												<div class="float-left">
													<strong>${loop.index}0%</strong>
												</div>
												<div class="float-right">
													<small class="text-muted">Jun 11, 2015 - Jul 10,
														2015</small>
												</div>
											</div>
											<div class="progress progress-xs">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: ${loop.index}0%" aria-valuenow="98"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</td>
										<td class="text-center"><i class="fa fa-paypal"
											style="font-size: 24px"></i></td>
										<td>
											<div class="small text-muted">Last login</div> <strong>Last
												month</strong>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>







					</div>
				</div>
			</div>
			<!--/.col-->
		</div>




	</div>
</div>


</main>

<!-- /page content -->

<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>

