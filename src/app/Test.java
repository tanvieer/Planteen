package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.PRIVATE_MEMBER;

import controller.Controller;
import controller.UserController;
import entity.User;

@WebServlet("/Test")
public class Test extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Controller<User> controller= new  UserController();
		UserController cn= new UserController();
			User user= cn.getByEmail("mobasser016@gmail.com");
			user.getName();
			//User user=cn.get("mobasser016@gmail.com");
		
			System.out.println(user.getName());
			
			
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
