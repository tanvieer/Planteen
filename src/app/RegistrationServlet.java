package app;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserInfoController;
import entity.UserInfo;

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
		
		String name = (String) request.getParameter("name");
        String username = (String) request.getParameter("username");
        String email = (String) request.getParameter("email");
        String password = (String) request.getParameter("password");
        String cpassword = (String) request.getParameter("cpassword");
        
        String type = "user";
        
        out.println("Username: " + username);  
        out.println("Email: " + email); 
        out.println("Password: " + password);  
        out.println("Confirm PassWord: " + cpassword); 
        
        
        UserInfo user = new UserInfo(name,username,email,password,type);  
        System.out.println(new UserInfoController().addUser(user));
        
	}

}
