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
       
       
       <div class="media">
<!-- 		  <img class="d-flex align-self-center mr-3" style="max-height: 100%; width: auto; max-width: 40%" src="./img/test2.jpg" alt="Generic placeholder image"> -->
		  <img class="d-flex align-self-center mr-3 img-responsive" style="max-height: 100%; width: auto; max-width: 40%" src="./img/logo.png" alt="Generic placeholder image">
		  <div class="media-body">
		    <h5 class="mt-0">Center-aligned media</h5>
		    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
		    <p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
		  
		  
		  
		  <div>
             <h2>Size <small>Please select one</small></h2>
             <ul class="list-inline prod_size">
               <li>
                 <button type="button" class="btn btn-default btn-xs">Small</button>
               </li>
               <li>
                 <button type="button" class="btn btn-default btn-xs">Medium</button>
               </li>
               <li>
                 <button type="button" class="btn btn-default btn-xs">Large</button>
               </li>
               <li>
                 <button type="button" class="btn btn-default btn-xs">Xtra-Large</button>
               </li>
             </ul>
           </div>
           </div>
		  
		  
		</div>
 	</div>       
</div>


</main>

<!-- /page content -->

<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>
        
        