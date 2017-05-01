package controller;



public class ValidationController {
	private static final String empty = " cannot be empty";
	private static final String invalid = " is invalid";
	private static final String mismatch = " do not match";
	
	public static String err_name;
	public static String err_email;
	public static String err_pass;
	public static String err_cpass;
	
	public static String err_address;
	public static String err_phone;
	
	
	
	public static boolean isNull(String var){
		return (var==null || var.trim()=="");
	}
	
	public static boolean regexMatch(String pattern, String str){
	    return str.matches(pattern);
	}
	
	
	
	//=========================name=============================================
	
	public static boolean checkName(String name){
		String namePattern = "^[a-zA-Z\\.\\-\\s]*$";
		err_name = isNull(name) ? ("Name"+empty) : regexMatch(namePattern, name) ? "" : ("Name"+invalid);
		return !isNull(name) && regexMatch(namePattern, name);
	}
	//=========================Email=============================================
	public static boolean checkEmail(String email){
		String emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		err_email = isNull(email) ? ("Email"+empty) : regexMatch(emailPattern, email) ? "" : ("Email"+invalid);
		return !isNull(email) && regexMatch(emailPattern, email);
	}
	//=========================Password mismatch==============================
	public static boolean checkPasses(String pass, String cpass){
		err_pass = (pass==null || pass.equals("")) ? "Password" + empty : "";
		err_cpass = (cpass==null || cpass.equals("")) ? "Confrim Password" + empty : "";
		
		if( !(pass==null || pass.equals("")) && !(cpass==null || cpass.equals("")) ){
			err_cpass = pass.equals(cpass) ? "":"Passwords "+mismatch;
		}
		return pass!=null && cpass!=null && pass.equals(cpass);
	}

	//=========================Address checking==============================
	public static boolean checkAddress(String address){
		if(isNull(address)) {
			err_address = "";
			return true;
		}
		String wrongAddressPattern = "^[\\W\\d]+$";
		err_address = regexMatch(wrongAddressPattern, address) ? ("Address"+invalid) : "";
		return !regexMatch(wrongAddressPattern, address);
	}
	//=========================Phone number checking==============================
	public static boolean checkPhoneNumber(String phone){
		if(isNull(phone)) {
			err_phone = "";
			return true;
		}
		String phoneNumberPattern = "^(\\+88)?0[0-9]{10}$";
		err_phone = regexMatch(phoneNumberPattern, phone) ? "" : ("Phone Number"+invalid);
		return regexMatch(phoneNumberPattern, phone);
		
		
		/*String phoneNoPattern = "^(\\+88)?0[0-9]{10}$";
		err_phone = isNull(phone) ? "Phone number"+empty : regexMatch(phoneNoPattern, phone) ? "" : "Phone number"+invalid;
		return !isNull(phone) && regexMatch(phoneNoPattern, phone);*/
	}

	
}