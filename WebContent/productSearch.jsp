<!-- Main content -->
<!-- <main class="main"> <!-- Breadcrumb -->
<ol class="breadcrumb">
	<!-- 	<li class="breadcrumb-item">Home</li> -->
	<!-- 	<li class="breadcrumb-item"><a href="#">Admin</a></li> -->
	<!-- 	<li class="breadcrumb-item active">Dashboard</li> -->
	<li>


		<form action="home" method="GET" class="form-2orizontal ">
			<div class="form-group row">
				<div class="col-md-12">
					<div class="input-group">
						<!-- 						<div class="input-group-btn btn-group"> -->

						<!-- 							<select class="form-control"> -->
						<!-- 								<option class="dropdown-item ">All Categories</option> -->

						<!-- 								<c:forEach varStatus="loop" begin="1" end="50" step="1"> -->
						<%-- 									<option class="dropdown-item ">Category ${loop.index}</option> --%>
						<!-- 								</c:forEach> -->
						<!-- 							</select> -->


						<!-- 							<button type="button" class="btn btn-default dropdown-toggle" -->
						<!-- 								data-toggle="dropdown"> -->
						<!-- 								<span class="selection">Option 1</span><span -->
						<!-- 									class="caret"></span> -->
						<!-- 							</button> -->
						<!-- 							<ul class="dropdown-menu" role="menu"> -->
						<!-- 								<li><a href="#">Option 1</a></li> -->
						<!-- 								<li><a href="#">Option 2</a></li> -->
						<!-- 								<li><a href="#">Option 3</a></li> -->
						<!-- 							</ul> -->



						<!-- 						</div> -->




						
							<!-- <button type="button" class="btn btn-primary dropdown-toggle" name="selectedCategory"
								data-toggle="dropdown" aria-expanded="false">
								<span class="selection"> All Categories </span><span
									class="caret"></span>
							</button> -->
							<%-- <div class="dropdown-menu"
								style="max-height: 20rem; overflow-y: scroll">
								<a class="dropdown-item" href="#">All Categories</a>
								<div role="separator" class="dropdown-divider"></div>


								<c:forEach items="${categories}" var="category">
									<a class="dropdown-item" href="#">${category.categoryName}</a>
								</c:forEach>
							</div> --%>
							
							
							<select class="btn btn-primary" name="searchCategoryId" style="max-height: 50px;overflow-y: scroll;">
								<option value="0">All Categories</option>
								<!-- <div role="separator" class="dropdown-divider"></div> -->


								<c:forEach items="${categories}" var="category">
									<option value="${category.categoryId}" >${category.categoryName}</option>
								</c:forEach>
								
		
							</select>
						




						<input type="text" id="input3-group3" name="q"
							class="form-control" placeholder="Search shop products...">
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
