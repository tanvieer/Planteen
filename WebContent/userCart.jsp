<%@include file="cartTopNav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
<%@include file="productSearch.jsp"%>




<div class="container-fluid">
	<div class="row animated fadeIn">
		<table class="table table-hover table-outline mb-0 hidden-sm-down"  id="countit">
			<thead class="thead-default">
				<tr>
					<th class="text-center"><i class="fa fa-file-image-o"></i></th>
					<th>Product Name</th>
					<th>Quantity(Unit)</th>
					<th>Item Price(BDT)</th>
					<th>Total(BDT)</th>
					<th class="text-center"><i class="fa fa-trash"></i></th>
				</tr>
			</thead>
			<tbody>


				
						
				<%!public float subTotal=0; %>
				
				<c:forEach items="${sessionScope.cartList}" var="cart">
					<tr id="row${cart.productId}">
						<td class="text-center">
							<div class="avatar">
								<%-- <img src="img/avatars/${cart.productId}.jpg" class="img-avatar" --%>
								<img src="${cart.imagePath}" class="img-avatar"
									alt="admin@bootstrapmaster.com"> <span
									class="avatar-status badge-default"></span>
							</div>
						</td>
						<td>
							<div>${cart.productName}</div>
						</td>
						<td>
							
								<input type="hidden" id="productId${cart.productId}" name="txt_productId" value="${cart.productId}">
								<input type="button" onClick="minus('${cart.productId}')" value="-">
								<input type="text" name="txt_quantity" id="txt-quantity${cart.productId}" value="${cart.quantity}" onkeypress="return onlyNumbers()" onBlur="checkMaxQuantity('${cart.productId}')" >
								<input type="button" onClick="add('${cart.productId}')" value="+">
			
						<td id="selling_Price${cart.productId}">
							${cart.sellingPrice}
						</td>
						<td class="count-me" id="totalProductPrice${cart.productId}">
							${cart.sellingPrice*cart.quantity}
							
						</td>
						<td class="text-center">
							<button class="btn btn-sm btn-warning" onClick="deleteRow(${cart.productId})"><i class="fa fa-trash"></i></button>
						</td>
						
					</tr>
				</c:forEach>
				
				
				
				
				
				

			</tbody>
			
			
			<thead class="thead-default">
				<tr>
					<th colspan=4>
						<button class="btn btn-sm btn-success"><i class="fa fa-dollar"> Proceed to Checkout</i></button>
					
						<button class="btn btn-sm btn-warning" onClick="window.location.href = 'home'"><i class="fa fa-shopping-cart"> Continue Shopping</i> </button>
					
						<button class="btn btn-sm btn-danger" onClick="clearCart()"><i class="fa fa-trash"> Clear Cart</i></button>
					</th>
					<!-- <th colspan=2 class="text-right" id="result">SUB-TOTAL:&nbsp;50000 BDT</th> -->
					<th colspan=2 class="text-right" id="result"></th>
				</tr>
			</thead>
			
		</table>
		
		
		 <script language="javascript" type="text/javascript">
            var tds = document.getElementById('countit').getElementsByTagName('td');
            var sum = 0;
            
            for(var i = 0; i < tds.length; i ++) {
            
                if(tds[i].className == 'count-me') {
                    sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                }
            }
            document.getElementById('result').innerHTML += 'SUB-TOTAL: ' + sum + ' BDT';
        </script>
		


	</div>
</div>


</main>

<!-- /page content -->

<%-- <%@include file="asidenav.jsp"%> --%>
<%@include file="footer.jsp"%>

