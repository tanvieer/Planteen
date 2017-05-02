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
import entity.ProductStock;

/**
 * Servlet implementation class CartAddServlet
 */
@WebServlet("/CartAddServlet")
public class CartAddServlet extends HttpServlet {
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
			ArrayList<CartItem> cList = (ArrayList<CartItem>) session.getAttribute("cartList");
			
			if(cList==null){
				System.out.println("Null List");
				cList = new ArrayList<CartItem>();
				CartItem ct = new CartItem(id,p.getProductName(),1,p.getSellingPrice(),p.getImagePath(),p.getBuyingPrice());
				cList.add(ct);
				System.out.println(ct);
				
			}
			else {
				boolean isAlreadyAdded = false;
				//added by nabila starts
				for(CartItem c : cList){
					if(c.getProductId() == id){
						 c.setQuantity(c.getQuantity()+1);
						 isAlreadyAdded = true;
					}
				}
				
				//added by nabila ends
				
				
				if(!isAlreadyAdded){
					CartItem ct = new CartItem(id,p.getProductName(),1,p.getSellingPrice(),p.getImagePath(),p.getBuyingPrice());
					cList.add(ct);
					System.out.println(ct);
				}
				

				for(CartItem c : cList){
					 System.out.println("new cart list: "+ c);
				 }
			}
				
				
			
				
			session.setAttribute("cartList", cList);
			session.setMaxInactiveInterval(200*600);
			

			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}


}
