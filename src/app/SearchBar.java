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
 * Servlet implementation class SearchBar
 */
@WebServlet("/SearchBar")
public class SearchBar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query;

		try{
			query = (String) request.getParameter("q").trim();
		}
		catch (Exception e){
			query = null;
		}
		RequestDispatcher dispatcher= request.getRequestDispatcher("userHome.jsp");
		if(query!=null) {
			
			System.out.println(query);
			//search query , need to make a function on repository for search bar
			
		}
		else{
			ArrayList<Product> products = new ProductController().getAll(); 
			request.setAttribute("products", products);
		}
		
		dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
