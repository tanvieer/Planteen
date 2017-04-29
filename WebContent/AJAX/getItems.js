
function SearchProductByCategoryId(id) {
	//window.location.href = "userHome.jsp";
	//alert("click me");
	var xmlhttp;
	var url = "GetProductsByCategory?categoryId=" + id;
	
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			
/*			alert(xmlhttp.responseText);*/
			document.getElementById("showProducts").innerHTML = xmlhttp.responseText;
				
		}
	};
	xmlhttp.open("GET", url, false);
	xmlhttp.send();
	
}


function getCategoryList() {
	
	//alert("test");
	var xmlhttp;
	var url = "GetCategoryList";
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			//alert(xmlhttp.responseText);
			document.getElementById("showCategory").innerHTML = xmlhttp.responseText;
				
		}
	};

		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	
}