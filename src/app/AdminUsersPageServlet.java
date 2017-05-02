package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import model.UserRepository;

/**
 * Servlet implementation class AdminUsersPageServlet
 */
@WebServlet("/AdminUsersPageServlet")
public class AdminUsersPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<User> users= new ArrayList<User>();


		users.addAll(new UserRepository().getAll());
		for(User item: users){
			System.out.println(item.getName());
		}
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("adminUsersPage.jsp");
		request.setAttribute("users", users);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
