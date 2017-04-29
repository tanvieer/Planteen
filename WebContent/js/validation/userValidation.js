var test = "     ";
var status;


function redirectRegistration(obj) { 
   window.location.href = "/registration";
}

function shrt(id){
	return document.getElementById(id); 
}

function checkNull(tag,errTag,fieldName){
	y = document.forms["MyForm"][tag].value;
   if (y == null || y == "" ||  y.trim() == test.trim()) {
	  shrt(errTag).innerHTML= fieldName+" must be filled out.";
	  status =0; 
      return false;
   }
}

function resetLogin(){  
	status = 1;
	shrt("err-email").innerHTML="";
	shrt("err-password").innerHTML="";
}

function resetReg(){  
	status = 1;
	shrt("err-email").innerHTML="";
	shrt("err-password").innerHTML="";
	shrt("err-cpassword").innerHTML="";
	shrt("err-name").innerHTML="";
}



function validateEmail(tag) 
{
	email = document.forms["MyForm"][tag].value;
	email=email.trim();
   // var re = /\S+@\S+\.\S+/;
    regPattern = new RegExp("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
    
    if(!regPattern.test(email)){
    	status = 0;
    	shrt("err-email").innerHTML="Invalid email address.";
    	return false;
    }
    return true;
}

function validateName(tag) 
{	
	name = document.forms["MyForm"][tag].value;
	name=name.trim();
	
    regPattern = new RegExp("^[a-zA-Z\\.\\-\\s]*$");
    
    if(!regPattern.test(name)){
    	shrt("err-name").innerHTML="Name cannot contain anything other than alphabets, dot or hyphen.";
    	status = 0;
    	return false;
    }
    return true;
}

function validatPassword(){
	pass = document.forms["MyForm"]["txt-password"].value.trim();
	cpass = document.forms["MyForm"]["txt-cpassword"].value.trim();
		
	if(pass!=cpass){
		status = 0;
		shrt("err-cpassword").innerHTML="Confirm password not matched";
		return false;
	}
	return true;
}


function validateLoginForm() {

	resetLogin();
	checkNull("txt-email","err-email","Email");
	checkNull("txt-password","err-password","Password");
	if(status == 0){
		return false;
	}
	else return true;
}


function validateRegForm() {
	

	resetReg();

	checkNull("txt-email","err-email","Email");
	checkNull("txt-password","err-password","Password");
	checkNull("txt-cpassword","err-cpassword","Confirm password");
	checkNull("txt-name","err-name","Name");
	
	if(status == 1){
		validateName("txt-name");
		validateEmail("txt-email");
		validatPassword();
	}
	
	
	
	if(status == 0){
		return false;
	}
	else return true;
}




