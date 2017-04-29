package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ProductController;
import entity.Product;

/**
 * Servlet implementation class UserHome
 */
@WebServlet("/home")
public class UserHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String query = (String) request.getParameter("q").trim();
		int id;
		try{
			id = Integer.parseInt(request.getParameter("categoryId"));
		}
		catch (Exception e){
			id=0;
		}
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userHome.jsp");
		if(id == 0) {
			ArrayList<Product> products = new ProductController().getAll(); 
			request.setAttribute("products", products);
		}
		else if(id>0){
			ArrayList<Product> products = new ProductController().getAllProductByCategoryId(id); 
			request.setAttribute("products", products);
		}
		
		dispatcher.forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
