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
 * Servlet implementation class ItemViewServlet
 */
@WebServlet("/itemview")
public class ItemViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("viewItem.jsp");
		ArrayList<Category> category = new CategoryController().getAll(); 
		request.setAttribute("categories", category); 
		int pid = 0;
		Product product;
		try{
			 pid = Integer.parseInt(request.getParameter("productId"));
			 
			 if(pid > 0){
				 product = new ProductController().getById(pid);
				 request.setAttribute("product", product);
			 }
			 dispatcher.forward(request, response);
			 
		}
		catch(Exception e){
			System.out.println("You cannot hit this url directly");
		}
	}
}
