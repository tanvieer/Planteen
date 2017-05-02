package app;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.InvoiceController;
import controller.InvoiceToProductController;
import controller.UserController;
import controller.ValidationController;
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
			
			Random rand = new Random(); 
			int random = rand.nextInt(5000); 
		     
		    String generatedInvoiceId = userId+"t"+ String.valueOf(time)+"r"+String.valueOf(random);
			
			//System.out.println(generatedInvoiceId);
			
			User user= new UserController().getById(userId);
			
			

			
			request.setAttribute("userAddress", user.getAddress());
			request.setAttribute("userEmail", user.getEmail());
			request.setAttribute("userPhone", user.getPhone());
			/*request.setAttribute("subtotal", "0");*/
			
		
		
			
			HttpSession session = request.getSession(true);
			@SuppressWarnings("unchecked")
			ArrayList<CartItem> cList = (ArrayList<CartItem>) session.getAttribute("cartList");    // get cart list from session
			
			
			if(cList == null || cList.isEmpty()){
				System.out.println(" empty cart");
				response.sendRedirect("cart");
				return;
			}
			else {
				//System.out.println("Not empty");
			}
			
			
			request.setAttribute("cartList", cList);
			
			invoiceToProductList = new ArrayList<InvoiceToProduct>();     // create invoice to product list
			invoice= new Invoice(userId, date, null , "approved by", "Pending", generatedInvoiceId, user.getAddress(), user.getPhone());  // create new invoice
			
			
			
			InvoiceToProduct invoiceToProduct;
			float profitMade;
			for(CartItem cartItem : cList){
				profitMade = cartItem.getSellingPrice()-cartItem.getBuyingPrice();
				invoiceToProduct = new InvoiceToProduct(generatedInvoiceId, cartItem.getProductId(), cartItem.getQuantity(), profitMade,cartItem.getSellingPrice());
				invoiceToProductList.add(invoiceToProduct);
			}
			
			

			
			RequestDispatcher dispatcher= request.getRequestDispatcher("userCheckoutInvoice.jsp");
			dispatcher.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println(request.getParameter("subTotal"));
		
		//float subtotal = Float.parseFloat((String)request.getParameter("subTotal"));
		
		
		String deliveryAddress = request.getParameter("txt_address");
		String deliveryPhoneNo = request.getParameter("txt_phone");
		
		request.setAttribute("userAddress", deliveryAddress);
		request.setAttribute("userPhone", deliveryPhoneNo);
		request.setAttribute("userEmail", userEmail);
		
		String err_phone = "";
		String err_address = "";
		
		boolean invoiceOk = true;
		/*invoice.setDeliveryAddress(deliveryAddress);
		invoice.setDeliveryPhoneNo(deliveryPhoneNo);*/
		
		
		
		if( !ValidationController.isNull(deliveryPhoneNo) && ValidationController.checkPhoneNumber(deliveryPhoneNo) ){
			invoice.setDeliveryPhoneNo(deliveryPhoneNo);
		}else{
			if( ValidationController.isNull(invoice.getDeliveryPhoneNo()) || !ValidationController.checkPhoneNumber(invoice.getDeliveryPhoneNo() )){
				//do nothing
				err_phone = "Phone" + ValidationController.invalid;
				invoiceOk = false;
			}
		}
		
		if( !ValidationController.isNull(deliveryAddress) && ValidationController.checkAddress(deliveryAddress) ){
			invoice.setDeliveryAddress(deliveryAddress);
		}else{
			if( ValidationController.isNull(invoice.getDeliveryAddress()) || !ValidationController.checkAddress(invoice.getDeliveryAddress() )){
				//do nothing
				err_address = "Address" + ValidationController.invalid;
				invoiceOk = false;
			}
		}
		
		if(!invoiceOk){
			RequestDispatcher dispatcher = request.getRequestDispatcher("userCheckoutInvoice.jsp");
			request.setAttribute("err_phone", err_phone);
			request.setAttribute("err_address", err_address);
			
			dispatcher.forward(request, response);
		}else{
			//update database
			//System.out.println(invoice);
			boolean invoiceToProductCheckDB = false;
			float sum =0.0f;
			for(InvoiceToProduct entity : invoiceToProductList){
				invoiceToProductCheckDB = new InvoiceToProductController().add(entity);
				sum+=entity.getSellingPrice();
			}
			invoice.setTotalSellingPrice(sum);
			boolean invoicetCheckDB = new InvoiceController().add(invoice);
			
		
			System.out.println("Database to be updated, UserCheckoutServlet "+ invoiceToProductCheckDB + " " +invoicetCheckDB);
			
				if(invoiceToProductCheckDB && invoicetCheckDB){
					
					HttpSession session = request.getSession();
					@SuppressWarnings("unchecked")
					ArrayList<CartItem> cList = new ArrayList<CartItem> ();
					/*if(cList!=null){
						for(CartItem c : cList){	 
							cList.remove(c);
						}
					}
					else {
						System.out.println("Null List");
					}*/
					session.setAttribute("cartList", cList);
				}
				
				response.sendRedirect("home");
		}
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
