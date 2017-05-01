<%@include file="topnav.jsp"%>
<%@include file="sidenav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->
<%@include file="productSearch.jsp"%>

<div class="container-fluid">
	<div class="row animated fadeIn">
       <!-- page content -->
       
       
       <div class="media">
<!-- 		  <img class="d-flex align-self-center mr-3" style="max-height: 100%; width: auto; max-width: 40%" src="./img/test2.jpg" alt="Generic placeholder image"> -->
		  <img class="d-flex align-self-center mr-3 img-responsive" style="max-height: 100%; width: auto; max-width: 40%; min-width: 30%" src="${product.imagePath}" alt="Generic placeholder image">
		  <div class="media-body">
		  	<h2 class="mt-0">${product.productName}</h2>
		  	<hr class="transparent my-3"/>
		    <h5 class="mt-0">${product.productName} Description</h5>
		    <p>${product.productDetails}</p>
		    <!-- <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
		    <p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p> -->
		  
           	
           	<hr class="transparent my-3"/>
           	
           	<h2>Price: &nbsp;${product.sellingPrice} BDT</h2>
           	
           	<hr class="transparent my-3"/>
           	
           	<input type="hidden" id="productId${product.productId}" name="txt_productId" value="${product.productId}">
			<input type="button" onClick="minus(${product.productId})" value="-">
			<input type="text" name="txt_quantity${product.productId}" id="txt-quantity${product.productId}" value="1" onkeypress="return onlyNumbers()" onBlur="checkMaxQuantity(${product.productId})" >
			<input type="button" onClick="add(${product.productId})" value="+">
			
			
			
		  
           	<hr class="transparent my-3"/>
           	
			<button type="button" class="btn btn-warning" onClick = "addToCart(${product.productId})">
				<i class="fa fa-check"></i>&nbsp;Add To Cart
			</button>
			<button type="button" class="btn btn-danger">
				<i class="fa fa-star"></i>&nbsp; Wishlist
			</button>
	
				
           </div>
		  
		  
		</div>
 	</div>       
</div>


</main>

<!-- /page content -->

<%@include file="asidenav.jsp"%>
<%@include file="footer.jsp"%>
        
        