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
import model.CategoryRepository;


/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/ProductList")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("adminProductList.jsp");
		
		ArrayList<Product> products = new ArrayList<Product>();
		products.addAll(new ProductController().getAllwithCategoryName());
		

		ArrayList<Category> categories = new ArrayList<Category>();
		categories.addAll(new CategoryController().getAll());
		
		//System.out.println(products);
		
		request.setAttribute("products", products);
		request.setAttribute("categories", categories);
		System.out.println("dispatching----------------------");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

}
