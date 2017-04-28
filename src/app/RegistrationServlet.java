package app;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserInfoController;
import entity.User;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String type = (String) request.getParameter("type");
		String name = (String) request.getParameter("name");
        
        String email = (String) request.getParameter("email");
        String password = (String) request.getParameter("password");
        String address = (String) request.getParameter("address");
        String phone = (String) request.getParameter("phone");
        String gender = (String) request.getParameter("gender");
        String status = (String) request.getParameter("status");
        
         type = "user";
        
        out.println("Username: " +name );  
        out.println("Email: " + email); 
        out.println("Password: " + password);  
        
        
        
        User user = new User(type,name,email,password,address,phone,gender,status);  
        System.out.println(new UserInfoController().add(user));
        
	}

}
