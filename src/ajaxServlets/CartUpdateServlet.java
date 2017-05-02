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
import entity.CartItem;
import entity.Product;

/**
 * Servlet implementation class CartUpdateServlet
 */
@WebServlet("/CartUpdateServlet")
public class CartUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id;
		int maxProductQuantity;
		int productQuantity;
		try{
			id = Integer.parseInt(request.getParameter("productId"));
			productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
			
			
			Product p = new ProductController().getById(id);
			maxProductQuantity = new ProductStockController().getProductQuantity(id);
			
			
			
			HttpSession session = request.getSession(true);
			
			
			
			@SuppressWarnings("unchecked")
			ArrayList<CartItem> cList = (ArrayList<CartItem>) session.getAttribute("cartList");
			
			if(cList!=null){
				
				CartItem ct = new CartItem(id,p.getProductName(),productQuantity,p.getSellingPrice(),p.getImagePath(),p.getBuyingPrice());
				
				int i = 0;
				for(CartItem c : cList){
					if(c.getProductId() == id){
						 cList.set(i, ct);
					}
					i++;
				}
				
			}
			else {
				System.out.println("Null List");
				cList = new ArrayList<CartItem>();
			}
				
			session.setAttribute("cartList", cList);
		}catch(Exception e){
			e.printStackTrace();
		}
	}



}
