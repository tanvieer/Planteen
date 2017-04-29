package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CategoryController;
import controller.ProductController;
import entity.Category;
import entity.Product;


@WebServlet("/GetCategoryList")
public class GetCategoryList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  PrintWriter out = response.getWriter();
		  
		  
		  ArrayList<Category> category = new CategoryController().getAll(); 
	        
	      out.println("<li class='nav-item'>"
	      		+ "<a class='nav-link' href='home' target='_top'>"
	      		+ "<i class='icon-star'></i>"
	      		+ "All Categories</a></li>"
	      		+ "<li class='nav-title'>Select Category</li>");
		  if(category!=null)
			  for(Category p : category){
				  out.println("<li class='nav-item'>"
						  
				      		//+ "<span class='nav-link' onClick='SearchProductByCategoryId("+p.getCategoryId()+")' target='_top'>"
				      		+ "<a class='nav-link' href='home?categoryId="+p.getCategoryId()+"' target='_top'>"
				      		+ "<i class='icon-star'></i>"
				      		+ p.getCategoryName()+ "</a></li>");
				
			  }
	}



}
