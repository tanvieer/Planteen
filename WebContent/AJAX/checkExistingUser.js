function checkByEmail() {
	var xmlhttp;
	var email = document.getElementById('email').value;
	var url = "checkEmail?email=" + email;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var check = xmlhttp.responseText;
			check = check.trim();
			if (check != "Available") {
				document.getElementById("existTagEmail").innerHTML = check;
				return false;
			} else{
				document.getElementById("existTagUsername").innerHTML = "";
				return true;
			}
		}
	};

	if(email.length>1){
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
	

}

function checkByUsername() {
	var xmlhttp;
	var username = document.getElementById('username').value;
	var url = "checkUsername?username=" + username;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

			var check = xmlhttp.responseText;
			check = check.trim();

			if (check != "Available") { 
				document.getElementById("existTagUsername").innerHTML = check;
				return false;
			} else{
				document.getElementById("existTagUsername").innerHTML = "";
				return true;
			}
				
		}
	};

	if(username.length>1){
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
}