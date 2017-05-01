package ajaxServlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ProductController;
import controller.ProductStockController;
import entity.Cart;
import entity.Product;

/**
 * Servlet implementation class CartDeleteServlet
 */
@WebServlet("/CartDeleteServlet")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id;
		int maxProductQuantity;
		try{
			id = Integer.parseInt(request.getParameter("productId"));
			
			
			Product p = new ProductController().getById(id);
			maxProductQuantity = new ProductStockController().getProductQuantity(id);
			
			
			
			HttpSession session = request.getSession(true);
			
			
			
			@SuppressWarnings("unchecked")
			ArrayList<Cart> cList = (ArrayList<Cart>) session.getAttribute("cartList");
			

			if(cList!=null){
				
				for(Cart c : cList){
					 
					if(c.getProductId() == id){
						 cList.remove(c);
					}
				}
			}
			else {
				System.out.println("Null List");
			}
				
				
			
				
			session.setAttribute("cartList", cList);
			
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}


