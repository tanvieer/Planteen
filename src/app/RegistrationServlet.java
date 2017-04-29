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

@WebServlet("/userRegistration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("before" + request.getAttribute("err_email"));
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userRegistration.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isValid = true;
		
		String name = (String) request.getParameter("txt_name").trim();
		String type = User.UserType.USER.toString();
        String email = (String) request.getParameter("txt_email").trim();
        String password = (String) request.getParameter("txt_password");
        String cpassword = (String) request.getParameter("txt_cpassword");
        
        request.setAttribute("txt_name", name);
        request.setAttribute("txt_email", email);
        request.setAttribute("txt_password", password);
        request.setAttribute("txt_cpassword", cpassword);
        
        User user = new User(type,name,email,password);
        
        //System.out.println("before  "+user);
       
        isValid = validateUser(user,request,response,cpassword);
        

        if(isValid){
        	 //System.out.println(user);
             System.out.println("insert: "+new UserController().add(user));
        }
       
        
	}
	
	private boolean validateUser(User user, HttpServletRequest request, HttpServletResponse response,String cpassword) throws ServletException, IOException{
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userRegistration.jsp");
		boolean check=true;
		if(user.getEmail()==null || user.getEmail().trim()== ""){
			request.setAttribute("err_email", "Email must be filled out");
			check=false;
		}
		else if( !validateEmail(user.getEmail()) ){
			request.setAttribute("err_email", "Invalid email address");
			check=false;
		}
	
		
		if(user.getName()==null || user.getName()== ""){
			request.setAttribute("err_name", "Name must be filled out");
			check=false;
		}
		if(user.getPassword()==null || user.getPassword()== ""){
			request.setAttribute("err_password", "Password must be filled out");
			check=false;
		}
		if(cpassword==null || cpassword== ""){
			request.setAttribute("err_cpassword", "Confirm password must be filled out");
			check=false;
		}
		if(user.getPassword()!= cpassword){
			request.setAttribute("err_cpassword", "Password fields don't match");
			check=false;
		}
		
		
		if(check && new UserController().getByEmail(user.getEmail())!= null){
			request.setAttribute("err_email", "Email registered by another user");
			check=false;
		}
		
		
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
