<aside class="aside-menu">
	<ul class="nav nav-tabs" role="tablist">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#cartitems" role="tab"><i class="icon-list"></i></a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#delivery" role="tab"><i class="fa fa-motorcycle"></i></a></li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div class="tab-pane active" id="cartitems" role="tabpanel">
			<div
				class="callout m-0 py-2 text-center bg-faded text-uppercase">
				<small><b>Sub total: 1500 BDT</b> </small>
			</div>

			<hr class="transparent mx-3 my-0">

			<c:forEach varStatus="loop" begin="1" end="50" step="1">
				<div class="callout callout-warning m-0 py-3">
					<div class="avatar float-right">
						<img src="img/avatars/7.jpg" class="img-avatar"
							alt="admin@bootstrapmaster.com">
					</div>
					<div>
						Cart Item ${loop.index}
					</div>
					<small class="text-muted mr-3"><i class="icon-dollar"></i>&nbsp;
						Unit Price: ${loop.index} BDT</small>
					<div><span>&nbsp;
						<select><c:forEach varStatus="loop" begin="1" end="10" step="1">
							<option value="${loop.index}">${loop.index}</option> <!-- item dropdown -->
						</c:forEach></select>&nbsp;
						<button type="button" class="btn btn-warning btn-sm"><span class="fa fa-trash"></span></button>
					</span></div>
					<div class="text-muted mr-3"><i class="icon-dollar"></i>&nbsp;
						<c:set var="price" scope="session" value="${2*100}"/>
						<c:set var="tprice" scope="session" value="${price*price}"/>
						Item Price: <c:out value="${tprice}"/>
					</div>
				</div>
			</c:forEach>
			<div class="callout callout-primary m-0 py-3">
				<button type="button" class="btn btn-block btn-primary">Checkout</button>
			</div>
			
			
			
			
<!-- 			<div class="callout callout-warning m-0 py-3"> -->
<!-- 				<div class="avatar float-right"> -->
<!-- 					<img src="img/avatars/7.jpg" class="img-avatar" -->
<!-- 						alt="admin@bootstrapmaster.com"> -->
<!-- 				</div> -->
<!-- 				<div> -->
<!-- 					Meeting with <strong>Lucas</strong> -->
<!-- 				</div> -->
<!-- 				<small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; -->
<!-- 					1 - 3pm</small> <small class="text-muted"><i -->
<!-- 					class="icon-location-pin"></i>&nbsp; Palo Alto, CA</small> -->
<!-- 			</div> -->
		</div>


		<div class="tab-pane p-3" id="delivery" role="tabpanel">
			<div
				class="callout m-0 py-2 text-center bg-faded text-uppercase">
				<small><b>Payment: Cash on Delivery</b> </small>
			</div>
			<hr class="transparent mx-3 my-0">
			<div
				class="callout m-0 py-2 text-center bg-faded text-uppercase">
				<small><b>Delivery: Home/Office Delivery</b> </small>
			</div>

			<hr class="transparent mx-3 my-0">

			<div class="m-0 py-3">
				<button type="button" class="btn btn-block btn-primary">Checkout</button>
			</div>
		</div>



<!-- 		<div class="tab-pane p-3" id="settings" role="tabpanel"> -->
<!-- 			<h6>Settings</h6> -->

<!-- 			<div class="aside-options"> -->
<!-- 				<div class="clearfix mt-4"> -->
<!-- 					<small><b>Option 1</b> </small> <label -->
<!-- 						class="switch switch-text switch-pill switch-success switch-sm float-right"> -->
<!-- 						<input type="checkbox" class="switch-input" checked=""> <span -->
<!-- 						class="switch-label" data-on="On" data-off="Off"></span> <span -->
<!-- 						class="switch-handle"></span> -->
<!-- 					</label> -->
<!-- 				</div> -->
<!-- 				<div> -->
<!-- 					<small class="text-muted">Lorem ipsum dolor sit amet, -->
<!-- 						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut -->
<!-- 						labore et dolore magna aliqua.</small> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="aside-options"> -->
<!-- 				<div class="clearfix mt-3"> -->
<!-- 					<small><b>Option 2</b> </small> <label -->
<!-- 						class="switch switch-text switch-pill switch-success switch-sm float-right"> -->
<!-- 						<input type="checkbox" class="switch-input"> <span -->
<!-- 						class="switch-label" data-on="On" data-off="Off"></span> <span -->
<!-- 						class="switch-handle"></span> -->
<!-- 					</label> -->
<!-- 				</div> -->
<!-- 				<div> -->
<!-- 					<small class="text-muted">Lorem ipsum dolor sit amet, -->
<!-- 						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut -->
<!-- 						labore et dolore magna aliqua.</small> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="aside-options"> -->
<!-- 				<div class="clearfix mt-3"> -->
<!-- 					<small><b>Option 3</b> </small> <label -->
<!-- 						class="switch switch-text switch-pill switch-success switch-sm float-right"> -->
<!-- 						<input type="checkbox" class="switch-input"> <span -->
<!-- 						class="switch-label" data-on="On" data-off="Off"></span> <span -->
<!-- 						class="switch-handle"></span> -->
<!-- 					</label> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="aside-options"> -->
<!-- 				<div class="clearfix mt-3"> -->
<!-- 					<small><b>Option 4</b> </small> <label -->
<!-- 						class="switch switch-text switch-pill switch-success switch-sm float-right"> -->
<!-- 						<input type="checkbox" class="switch-input" checked=""> <span -->
<!-- 						class="switch-label" data-on="On" data-off="Off"></span> <span -->
<!-- 						class="switch-handle"></span> -->
<!-- 					</label> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<hr> -->
<!-- 			<h6>System Utilization</h6> -->

<!-- 			<div class="text-uppercase mb-1 mt-4"> -->
<!-- 				<small><b>CPU Usage</b> </small> -->
<!-- 			</div> -->
<!-- 			<div class="progress progress-xs"> -->
<!-- 				<div class="progress-bar bg-info" role="progressbar" -->
<!-- 					style="width: 25%" aria-valuenow="25" aria-valuemin="0" -->
<!-- 					aria-valuemax="100"></div> -->
<!-- 			</div> -->
<!-- 			<small class="text-muted">348 Processes. 1/4 Cores.</small> -->

<!-- 			<div class="text-uppercase mb-1 mt-2"> -->
<!-- 				<small><b>Memory Usage</b> </small> -->
<!-- 			</div> -->
<!-- 			<div class="progress progress-xs"> -->
<!-- 				<div class="progress-bar bg-warning" role="progressbar" -->
<!-- 					style="width: 70%" aria-valuenow="70" aria-valuemin="0" -->
<!-- 					aria-valuemax="100"></div> -->
<!-- 			</div> -->
<!-- 			<small class="text-muted">11444GB/16384MB</small> -->

<!-- 			<div class="text-uppercase mb-1 mt-2"> -->
<!-- 				<small><b>SSD 1 Usage</b> </small> -->
<!-- 			</div> -->
<!-- 			<div class="progress progress-xs"> -->
<!-- 				<div class="progress-bar bg-danger" role="progressbar" -->
<!-- 					style="width: 95%" aria-valuenow="95" aria-valuemin="0" -->
<!-- 					aria-valuemax="100"></div> -->
<!-- 			</div> -->
<!-- 			<small class="text-muted">243GB/256GB</small> -->

<!-- 			<div class="text-uppercase mb-1 mt-2"> -->
<!-- 				<small><b>SSD 2 Usage</b> </small> -->
<!-- 			</div> -->
<!-- 			<div class="progress progress-xs"> -->
<!-- 				<div class="progress-bar bg-success" role="progressbar" -->
<!-- 					style="width: 10%" aria-valuenow="10" aria-valuemin="0" -->
<!-- 					aria-valuemax="100"></div> -->
<!-- 			</div> -->
<!-- 			<small class="text-muted">25GB/256GB</small> -->
<!-- 		</div> -->
	</div>
</aside>