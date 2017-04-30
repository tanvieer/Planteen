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
 * Servlet implementation class UserHome
 */
@WebServlet("/home")
public class UserHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		RequestDispatcher dispatcher= request.getRequestDispatcher("userHome.jsp");
		
		ArrayList<Category> category = new CategoryController().getAll(); 
		request.setAttribute("categories", category);       // for side nav
		

		//===================================================search nav satart    ====================
		String query;
		int searchCategoryId = 0;
		try{
			query = (String) request.getParameter("q");
			searchCategoryId =Integer.parseInt(request.getParameter("searchCategoryId")); 
		}
		catch (Exception e){
			query = null;
		}
		
		if(query!=null) {
			ArrayList<Product> products;
			if(searchCategoryId == 0){
				products = new ProductController().searchByName(query); 
			}
			else{
				products = new ProductController().searchByNameCategoryId(query,searchCategoryId); 
			}
			
			
			
			
			if(products.isEmpty()){
				//products = new ProductController().getAll(); 
				//request.setAttribute("products", products);
				System.out.println("Product Not Found");
			}
			
			
			request.setAttribute("products", products);
			dispatcher.forward(request, response);
			return;
			
		}
		
		
		//===================================================search nav end====================
		
		
		
		
		//=====================================search by category id==================================
		
		int id;
		try{
			id = Integer.parseInt(request.getParameter("categoryId"));
		}
		catch (Exception e){
			id=0;
		}
		
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
		System.out.println("UserHome.java doPost Called");
	}

}
