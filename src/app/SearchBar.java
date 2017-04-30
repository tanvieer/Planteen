package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CategoryController;
import controller.ProductController;
import entity.Category;
import entity.Product;

/**
 * Servlet implementation class SearchBar
 */
@WebServlet("/SearchBar")
public class SearchBar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
// UNUSED SERVLET
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userHome.jsp");
		ArrayList<Category> category = new CategoryController().getAll(); 
		request.setAttribute("categories", category);       // for side nav
		
		String query;
		try{
			query = (String) request.getParameter("q").trim();
		}
		catch (Exception e){
			query = null;
		}
		
		if(query!=null) {
			ArrayList<Product> products = new ProductController().searchByName(query); 
			
			
			
			if(products.isEmpty()){
				products = new ProductController().getAll(); 
				request.setAttribute("products", products);
			}
			
			
			request.setAttribute("products", products);
			dispatcher.forward(request, response);
			return;
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
