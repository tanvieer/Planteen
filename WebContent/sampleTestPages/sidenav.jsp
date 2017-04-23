
<div class="sidebar">
	<nav class="sidebar-nav">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="index.jsp"><i
					class="icon-speedometer"></i> Dashboard <span
					class="badge badge-info">NEW</span></a></li>
					
					
			<li class="nav-item"><a class="nav-link" href="" target="_top">
				  <i class="icon-star"></i>All Categories</a></li>

			<li class="nav-title">Select Category</li>
			
			<li class="nav-item nav-dropdown">
				<c:forEach varStatus="loop" begin="1" end="50" step="1">
				  <li class="nav-item"><a class="nav-link" href="" target="_top">
				  <i class="icon-star"></i> Category  ${loop.index}</a></li>
				</c:forEach>
			</li>
		</ul>
	</nav>
</div>






