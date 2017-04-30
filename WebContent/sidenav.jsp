<%-- 
<div class="sidebar">
	<nav class="sidebar-nav">
		<ul class="nav" id="showCategory">
					
					
			<li class="nav-item"><a class="nav-link" href="userHome.jsp" target="_top">
				  <i class="icon-star"></i>All Categories</a></li>

			<li class="nav-title">Select Category</li>
			
				<!-- <li class="nav-item nav-dropdown"> -->
					<li class="nav-item"><a class="nav-link" href="userHome.jsp" target="_top">
						<i class="icon-star"></i> Category  1<span
						class="badge badge-info">NEW</span></a>
					</li>
				<c:forEach varStatus="loop" begin="1" end="50" step="1">
				  <li class="nav-item"><a class="nav-link" href="userHome.jsp" target="_top">
				  <i class="icon-star"></i> Category  ${loop.index}</a></li>
				</c:forEach>
				
			
		</ul>
	</nav>
</div>

Get by ajax function

 --%>

<div class="sidebar">
	<nav class="sidebar-nav">
		<ul class="nav" >
					
					
		 	<li class="nav-item"><a class="nav-link" href="home" target="_top">
				  <i class="icon-star"></i>All Categories</a></li>

			<li class="nav-title">Select Category</li>
			
				 <c:forEach items="${categories}" var="category">
				  <li class="nav-item"><a class="nav-link" href="home?categoryId=${category.categoryId}" target="_top">
				  		<i class="icon-star"></i>${category.categoryName}
				  		<!-- <span class="badge badge-info">NEW</span> -->
				  	</a>
				  </li>
				</c:forEach> 
				
		</ul>
	</nav>
</div>





