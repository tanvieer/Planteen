package controller;



public class ValidationController {
	private static final String empty = " cannot be empty class";
	private static final String invalid = " is invalid class";
	private static final String mismatch = " do not match class";
	
	
	public static boolean isNull(String var){
		return (var==null || var.trim()=="");
	}
	
	public static boolean regexMatch(String pattern, String str){
	    return str.matches(pattern);
	}
	
	
	
	//=========================name=============================================
	
	public static String checkName(String name){
		String namePattern = "^[a-zA-Z\\.\\-\\s]*$";
		return isNull(name) ? ("Name"+empty) : regexMatch(namePattern, name) ? "" : ("Name"+invalid);
	}
	//=========================Email=============================================
	public static String checkEmail(String email){
		String emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		return isNull(email) ? ("Email"+empty) : regexMatch(emailPattern, email) ? "" : ("Email"+invalid);
	}
	//=========================Password miss match==============================
	public static String matchPassword(String pass,String cpass){
		return pass.equals(cpass) ? "":"Passwords"+mismatch;
	}
	public static String checkPass(String pass, String passName){
		return (isNull(pass)) ? passName + empty:"";
	}

	
}
