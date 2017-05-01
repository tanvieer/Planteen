
    window.onload = function() {
    		getCategoryList();
    	};
    	
   	function add(idt){
   		var xmlhttp;
   		var id = document.getElementById("productId"+idt).value;
   		var url = "GetProductQuantity?productId="+id;
   		if (window.XMLHttpRequest) {
   			xmlhttp = new XMLHttpRequest();
   		} else {
   			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
   		}
   		xmlhttp.onreadystatechange = function() {
   			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
   				var maxQ = xmlhttp.responseText;
   				var x = document.getElementById("txt-quantity"+idt).value;
   				if(x > maxQ-1){
   					document.getElementById("txt-quantity"+idt).value = maxQ;
   					alert("Maximum available product quantity is "+maxQ);
   				}
   				else if(x<maxQ-1){
   					x++;
   					document.getElementById("txt-quantity"+idt).value = x;
   					
   					CartUpdate(idt,x);
   				}
   				else {
   					document.getElementById("txt-quantity"+idt).value = maxQ;
   				}
   				
   				changeTotalPrice(idt);
   			}
   		};
   		xmlhttp.open("GET", url, true);
   		xmlhttp.send();	
   		
   		
   	}
   	function minus(idt){
   		var x = document.getElementById("txt-quantity"+idt).value;
   		if(x>0){
   			x--;
   			checkMaxQuantity(idt);
   			changeTotalPrice(idt);
   			CartUpdate(idt,x);
   		}
   		changeTotalPrice(idt);
   		document.getElementById("txt-quantity"+idt).value = x;
   	}
   	
   	function checkMaxQuantity(idt){
   		changeTotalPrice(idt);
   		var xmlhttp;
   		var id = document.getElementById("productId"+idt).value;
   		var url = "GetProductQuantity?productId="+id;
   		if (window.XMLHttpRequest) {
   			xmlhttp = new XMLHttpRequest();
   		} else {
   			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
   		}
   		xmlhttp.onreadystatechange = function() {
   			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
   				var maxQ = xmlhttp.responseText;
   				var x = document.getElementById("txt-quantity"+idt).value;
   				if(x > maxQ-1){
   					document.getElementById("txt-quantity"+idt).value = maxQ;
   					//alert("Maximum available product quantity is "+maxQ);
   					changeTotalPrice(idt);
   				}
   			}
   		};
   		xmlhttp.open("GET", url, true);
   		xmlhttp.send();	
   	}
   	
   	function onlyNumbers(){
		return event.charCode === 0 || /\d/.test(String.fromCharCode(event.charCode));
	}
   	  	
   	
   	function changeTotalPrice(idt){  // single product total price
   		
   		var quantity = document.getElementById("txt-quantity"+idt).value;
   		var selling_Price = document.getElementById("selling_Price"+idt).innerHTML;
   		
   		document.getElementById("totalProductPrice"+idt).innerHTML = quantity*selling_Price;
   		
   		changeSumPrice();
   	}
   	
   	
   	function deleteRow(idt){
   	 $('#row'+idt).empty();
   	changeSumPrice();
   	
   	deleteFromCart(idt);
   	}
   	
   	function clearCart(){
   		
   		if(confirm("Are you sure, you want to clear cart?")){
   			var tds = document.getElementById('countit').getElementsByTagName('td');
   	   		for(var i = 0; i < tds.length; i ++) {
   	   			$('#row'+i).empty();
   	        }
   		}
   		
   	}
   	
   	
   	function changeSumPrice(){
   		
      	var tds = document.getElementById('countit').getElementsByTagName('td');
        var sum = 0;
        
        for(var i = 0; i < tds.length; i ++) {
        
            if(tds[i].className == 'count-me') {
                sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
            }
        }
        
        $('#result').empty();
        document.getElementById('result').innerHTML += 'SUB-TOTAL: ' + sum + ' BDT';
   	}
   	
   	
   	function addToCart(productId){
		var xmlhttp;
   		var url = "CartAddServlet?productId="+productId;
   		if (window.XMLHttpRequest) {
   			xmlhttp = new XMLHttpRequest();
   		} else {
   			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
   		}
   		xmlhttp.onreadystatechange = function() {
   			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
   				//alert("product added"+xmlhttp.responseText);
   			}
   		};
   		xmlhttp.open("GET", url, true);
   		xmlhttp.send();	
   	}
   	
   	

   	function deleteFromCart(productId){
		var xmlhttp;
   		var url = "CartDeleteServlet?productId="+productId;
   		if (window.XMLHttpRequest) {
   			xmlhttp = new XMLHttpRequest();
   		} else {
   			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
   		}
   		xmlhttp.onreadystatechange = function() {
   			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
   				//alert("product deleted "+xmlhttp.responseText);
   			}
   		};
   		xmlhttp.open("GET", url, true);
   		xmlhttp.send();	
   	}
   	
   	
   	
   	function CartUpdate(pid,quantity){
   		var xmlhttp;
   		var url = "	CartUpdateServlet?productId="+pid+"&productQuantity="+quantity;
   		if (window.XMLHttpRequest) {
   			xmlhttp = new XMLHttpRequest();
   		} else {
   			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
   		}
   		xmlhttp.onreadystatechange = function() {
   			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
   				//alert("product deleted "+xmlhttp.responseText);
   			}
   		};
   		xmlhttp.open("GET", url, true);
   		xmlhttp.send();	
   	}
   	
   	
   
   	
   	
   	
   	
   	
   	
   	