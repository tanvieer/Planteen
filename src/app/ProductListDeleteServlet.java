package app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CategoryController;
import controller.ProductController;

/**
 * Servlet implementation class ProductListDeleteServlet
 */
@WebServlet("/ProductListDelete")
public class ProductListDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("txt-id"));
		System.out.println("delete product id: " +id);
		new ProductController().delete(id);
		System.out.println("product "+id+" deleted");
		response.sendRedirect("ProductList");
	}

}
