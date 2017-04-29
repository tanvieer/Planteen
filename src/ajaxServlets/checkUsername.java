package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserController;
import entity.User;


@WebServlet("/checkUsername")
public class checkUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String username = request.getParameter("username");
		  
		  PrintWriter out = response.getWriter();
		  
		  User user = new UserController().getByName(username);  // specific user
	        
	        
	        if(user == null) {
	        	out.println("Available");
	        }
	        else {
	        	out.println("Username Already Exist");
	        }
	      	
	}

}
