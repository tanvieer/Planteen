package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ha.backend.Sender;

import controller.CategoryController;
import controller.ProductController;

/**
 * Servlet implementation class CategoryListDeleteServlet
 */
@WebServlet("/CategoryListDelete")
public class CategoryListDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= request.getRequestDispatcher("AdminCategoryList");
		
				int id=Integer.parseInt(request.getParameter("txt-id"));
				System.out.println("delete cat id: " +id);
				new CategoryController().delete(id);
				response.sendRedirect("CategoryList");
	}

}
