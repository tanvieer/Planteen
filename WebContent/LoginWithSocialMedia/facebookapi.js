window.fbAsyncInit = function() {
	FB.init({
		appId : '751911494972182',
		xfbml : true,
		version : 'v2.5'
	});
	FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {
			document.getElementById('status').innerHTML = 'We are connected.';
		} else if (response.status === 'not_authorized') {
			document.getElementById('status').innerHTML = 'facebook';
		} else {
			document.getElementById('status').innerHTML = 'facebook';
		}
	});
};
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) {
		return;
	}
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// login with facebook with extra permissions
function loginFB() {
	FB.login(function(response) {
		if (response.status === 'connected') {
			document.getElementById('status').innerHTML = 'We are connected.';
			getInfo();

		} else if (response.status === 'not_authorized') {
			document.getElementById('status').innerHTML = 'facebook';
		} else {
			document.getElementById('status').innerHTML = 'facebook';
		}
	}, {
		scope : 'email'
	});

}

// getting basic user info
function getInfo() {
	FB.api('/me', 'GET', {
		fields : 'first_name,last_name,name,id,email'
	}, function(response) {
		// document.getElementById('status').innerHTML = response.id;
		// document.getElementById('first_name').innerHTML =
		// response.first_name;
		// document.getElementById('email').innerHTML = response.email;
		// document.getElementById('name').innerHTML = response.name;

		document.getElementById("email").value = response.email;
		document.getElementById("name").value = response.name;
	});

	getProfilePicture();
}

function getProfilePicture() {
	FB.api("/me/picture?width=180&height=180", function(response) {

		console.log(response.data.url);
		
		createCookie('propic',response.data.url,7);
		return response.data.url;
		

	});
}



function createCookie(name,value,days) {
    var expires = "";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days*24*60*60*1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + value + expires + "; path=/";
    
    
    //alert( readCookie('propic'));
}


function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) {
        	
        	return c.substring(nameEQ.length,c.length);
        }
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name,"",-1);
}
