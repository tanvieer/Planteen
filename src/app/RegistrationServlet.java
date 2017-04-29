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
        
        User user = new User(type,name,email,password);
        
        
        
        RequestDispatcher dispatcher= request.getRequestDispatcher("userRegistration.jsp");
		boolean check=true;
		boolean temp;
		
		temp = ValidationController.checkName(user.getName());
		check = check & temp;
		temp = ValidationController.checkEmail(user.getEmail());
		check = check & temp;
		temp = ValidationController.checkPasses(user.getPassword(), cpassword);
		check = check & temp;
		
		request.setAttribute("err_password", ValidationController.err_pass);
		request.setAttribute("err_cpassword", ValidationController.err_cpass);
		request.setAttribute("err_name", ValidationController.err_name);
		request.setAttribute("err_email", ValidationController.err_email);
		
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
