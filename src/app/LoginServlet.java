package app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserInfoController;
import entity.UserInfo;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

        String userid = (String) request.getParameter("username");
        String pass = (String) request.getParameter("password");
      
        out.println("Username: " + userid);  
        out.println("Password: " + pass); 
        
        out.println("start: "); 
        
        ArrayList<UserInfo> users = new UserInfoController().getAll();  // all user
        
        for(UserInfo u: users){
        	  out.println("Name: " + u.getName()); 
        }
        
        
        UserInfo user = new UserInfoController().getUserByUsername(userid);  // specific user
        
        
        if(user != null)
      	out.println("ses: " + user.getPassword() + "  "+ user.getName());  
      	
      	
      	
      	
      	UserInfo user2 = new UserInfo("Mohammad Tanvir Islam",userid,"bolbona","vaag","admin");    // Update
      	
      	
      	out.println("UPDATE : " + new UserInfoController().editUserByUsername(user2) ); 
      	
      	
    	//out.println("Delete : " + new UserInfoController().deleteUserByUsername(userid));   // delete
      	
      	
      	
	}

}