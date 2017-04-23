<!-- Main content -->
<!-- <main class="main"> <!-- Breadcrumb -->
<ol class="breadcrumb">
<!-- 	<li class="breadcrumb-item">Home</li> -->
<!-- 	<li class="breadcrumb-item"><a href="#">Admin</a></li> -->
<!-- 	<li class="breadcrumb-item active">Dashboard</li> -->
	<li>


		<form action="" method="post" class="form-2orizontal ">
			<div class="form-group row">
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
							class="form-control" placeholder="Search product...">
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
