package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserController;
import entity.CartItem;
import entity.User;

/**
 * Servlet implementation class GetUserDetailsByUserId
 */
@WebServlet("/GetUserDetailsByUserId")
public class GetUserDetailsByUserId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt((String)request.getParameter("userId"));
		PrintWriter out = response.getWriter();
		
		
		User user = new UserController().getById(userId);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		out.println("<table class='table'>");
		out.println("<thead>"
				+ "<tr>"
				+ "<th>Name</th>"
				+ "<th>Phone</th>"
				+ "<th>Address</th>"
				+ "<th>Status</th>"
				+ "</tr>"
				+ "</thead>"
				+ "<tbody>");
			
		

			out.println("<tr>"
					+ "<td>"+user.getName()+"</td>"
					+ "<td>"+user.getPhone()+"</td>"
					+ "<td>"+user.getAddress()+"</td>"
					+ "<td>"+user.getStatus()+"</td>"
					+ "</tr>");
		out.println("</tbody>"
				+ "</table>");
		

		System.out.println("GetUserDetails AJAX called");
	
	}

}
