<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>

<script type="text/javascript">
	
	function add(){
		var xmlhttp;
		var id = document.getElementById("productId").value;
		var url = "GetProductQuantity?productId="+id;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var maxQ = xmlhttp.responseText;
				var x = document.getElementById("txt-quantity").value;
				if(x > maxQ-1){
					alert("Maximum available product quantity is "+maxQ);
				}
				else if(x<maxQ-1){
					x++;
					document.getElementById("txt-quantity").value = x;
				}
				else {
					document.getElementById("txt-quantity").value = maxQ;
				}
			}
		};
		xmlhttp.open("GET", url, true);
		xmlhttp.send();	
	}
	function minus(){
		var x = document.getElementById("txt-quantity").value;
		if(x>0){
			x--;
		}
		document.getElementById("txt-quantity").value = x;
	}
	
</script>
</head>
<body>
	<input type="hidden" id="productId" name="product_id" value="2">
	<input type="button" onClick="minus()" value="-">
	<input type="text" name="txt_quantity" id="txt-quantity" value="0">
	<input type="button" onClick="add()" value="+">
</body>
</html>