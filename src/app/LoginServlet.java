package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserController;
import entity.User;


@WebServlet("/userLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isValid = true;
		RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin.jsp");
		String email = (String) request.getParameter("txt_email").trim();
        String password = (String) request.getParameter("txt_password");
        String checked =  request.getParameter("rememberMe")==null?"":(String) request.getParameter("rememberMe");

        
        request.setAttribute("txt_email", email);
        request.setAttribute("txt_password", password);
        
        if(checked.equals("on")){
        	request.setAttribute("rememberMe", "checked");
        }

        User user = new User(email, password);
        isValid = validateUser(user,request,response);
        
        
        if(isValid){
        	//set session
        	// send to profile edit page
        }
        
        
	}
	
	
	
	
	private boolean validateUser(User user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin.jsp");
		boolean check=true;
		
		if(user.getEmail()==null || user.getEmail()== ""){
			request.setAttribute("err_email", "Email must be filled out");
			check=false;
		}else if(!validateEmail(user.getEmail())){
			request.setAttribute("err_email", "Invalid email address");
			check = false;
		}
		else if(new UserController().getByEmail(user.getEmail())== null){
			request.setAttribute("err_email", "This email is not registered");
			check=false;
		}
		
		if(user.getPassword()==null || user.getPassword()== ""){
			request.setAttribute("err_password", "Password must be filled out");
			check=false;
		}else if(check && !(new UserController().getByEmail(user.getEmail()).getPassword().equals(user.getPassword()))){
			request.setAttribute("err_password", "Wrong Password");
			check=false;
		}
		
		
		//System.out.println("HERE   "+new UserController().getByEmail(user.getEmail()));
		
		
		
		
		if(!check){
			dispatcher.forward(request, response);
		}
		
		
		return check;
	}
	
	
	 boolean validateEmail(String email) 
	 {
	     String regPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	     return email.matches(regPattern);
	 }


}