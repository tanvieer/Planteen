package app;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.InvoiceController;
import controller.UserController;
import entity.CartItem;
import entity.Invoice;
import entity.InvoiceToProduct;
import entity.User;

/**
 * Servlet implementation class UserCheckoutServlet
 */
@WebServlet("/UserCheckout")
public class UserCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private int userId = 0;
	private String userEmail = "";
	private String redirectPage = "UserCheckout";
	private ArrayList<InvoiceToProduct> invoiceToProductList;
	private Invoice invoice;

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(!isLoggedIn(request,response)){
			RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin");
			request.setAttribute("lastRedirectPage", redirectPage);
			dispatcher.forward(request, response);
			return;
		}
		else {
			
			
			long time = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(time);
			User user= new UserController().getById(userId);

			
			request.setAttribute("userAddress", user.getAddress());
			request.setAttribute("userEmail", user.getEmail());
			request.setAttribute("userPhone", user.getPhone());
			
		
			String generatedInvoiceId = userId+date.toString();
			
			
			HttpSession session = request.getSession(true);
			@SuppressWarnings("unchecked")
			ArrayList<CartItem> cList = (ArrayList<CartItem>) session.getAttribute("cartList");    // get cart list from session
			request.setAttribute("cartList", cList);
			
			invoiceToProductList = new ArrayList<InvoiceToProduct>();     // create invoice to product list
			invoice= new Invoice(userId, date, null , "approved by", "Pending", generatedInvoiceId);  // create new invoice
			
			
			
			InvoiceToProduct invoiceToProduct;
			float profitMade;
			for(CartItem cartItem : cList){
				profitMade = cartItem.getSellingPrice()-cartItem.getBuyingPrice();
				invoiceToProduct = new InvoiceToProduct(generatedInvoiceId, cartItem.getProductId(), cartItem.getQuantity(), profitMade);
				invoiceToProductList.add(invoiceToProduct);
			}
			
			

			
			RequestDispatcher dispatcher= request.getRequestDispatcher("userCheckoutInvoice.jsp");
			dispatcher.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	private boolean isLoggedIn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session != null){
				userEmail = (String) session.getAttribute("userEmail");
			  if(userEmail != null){
				  userId =  Integer.parseInt((String) session.getAttribute("userId"));
			  }
			  
			  
			  
			  if(userEmail!= null && userId != 0){
				  User u = new UserController().getById(userId);
				  if(u!= null && userEmail.equals(u.getEmail())){
					  System.out.println("User Logged In"); ///////////////////////////////////////Login successfull from SESSION


					  return true;
				  }
				  else {
					  System.out.println("LoginServlet session exist but not matched");
					  return false;
				  }
			  }
			  
		}
		return false;
	}

}
