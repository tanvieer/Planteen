package app;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserController;
import controller.ValidationController;
import entity.User;

@WebServlet("/userRegistration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("before" + request.getAttribute("err_email"));
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userRegistration.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*boolean isValid = true;*/
		
		String name = (String) request.getParameter("txt_name").trim();
		String type = User.UserType.USER.toString();
        String email = (String) request.getParameter("txt_email").trim();
        String password = (String) request.getParameter("txt_password");
        String cpassword = (String) request.getParameter("txt_cpassword");
        
        request.setAttribute("txt_name", name);
        request.setAttribute("txt_email", email);
        request.setAttribute("txt_password", password);
        request.setAttribute("txt_cpassword", cpassword);
        
        String err_name = "";
        String err_email = "";
        String err_pass = "";
        String err_cpass = "";
        
        User user = new User(type,name,email,password);
        
        
        
        RequestDispatcher dispatcher= request.getRequestDispatcher("userRegistration.jsp");
		boolean check=true;
		/*boolean temp;*/
		
		/*temp = ValidationController.checkName(user.getName());
		check = check & temp;*/
		/*temp = ValidationController.checkEmail(user.getEmail());
		check = check & temp;*/
		/*temp = ValidationController.checkPasses(user.getPassword(), cpassword);
		check = check & temp;*/
		
		
		String namePattern = "^[a-zA-Z\\.\\-\\s]*$";
		err_name = ValidationController.isNull(name) ? ("Name"+ValidationController.empty) : ValidationController.regexMatch(namePattern, name) ? "" : ("Name"+ValidationController.invalid);
		check = !ValidationController.isNull(name) && ValidationController.regexMatch(namePattern, name);
		request.setAttribute("err_name", err_name);
		
		String emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		err_email = ValidationController.isNull(email) ? ("Email"+ValidationController.empty) : ValidationController.regexMatch(emailPattern, email) ? "" : ("Email"+ValidationController.invalid);
		check = !ValidationController.isNull(email) && ValidationController.regexMatch(emailPattern, email);
		request.setAttribute("err_email", err_email);
		
		
		err_pass = (password==null || password.equals("")) ? "Password" + ValidationController.empty : "";
		err_cpass = (cpassword==null || cpassword.equals("")) ? "Confrim Password" + ValidationController.empty : "";
		
		if( !(password==null || password.equals("")) && !(cpassword==null || cpassword.equals("")) ){
			err_cpass = password.equals(cpassword) ? "":"Passwords "+ ValidationController.mismatch;
		}
		check = password!=null && cpassword!=null && password.equals(cpassword);
		request.setAttribute("err_password", err_pass);
		request.setAttribute("err_cpassword", err_cpass);
		
		
		
		
		
		if(check && new UserController().getByEmail(user.getEmail())!= null){
			request.setAttribute("err_email", "Email registered by another user");
			check=false;
		}
		if(!check){
			dispatcher.forward(request, response);
		}
		else {
			System.out.println("insert: "+new UserController().add(user));
		} 
	}

}
