package app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.InvoiceController;
import controller.UserController;
import controller.ValidationController;
import entity.Invoice;
import entity.User;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
import model.UserRepository;

/**
 * Servlet implementation class UserProfileServlet
 */
@WebServlet("/UserProfile")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int userId = 0;
	private String userEmail = "";
	private String redirectPage = "UserProfile";
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= request.getRequestDispatcher("userProfileSettings.jsp");
		
		
		
		
		if(!isLoggedIn(request,response)){
			RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin");
			request.setAttribute("lastRedirectPage", redirectPage);
			dispatcher.forward(request, response);
			return;
		}
		else {
			
		

			System.out.println("this is id"+ userId);
			User user= new UserController().getById(userId);
			System.out.println(user.getName());
			
		
			
			long time = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(time);
			String invoiceGeneratedId = userId + " " + date;
			
			
			
			ArrayList<Invoice> invoices = new InvoiceController().getCurrentByUserId(userId);
			ArrayList<Invoice> invoices2 = new InvoiceController().getPreviousByUserId(userId);
			
			request.setAttribute("invoices", invoices);
			request.setAttribute("invoicesPrevious", invoices2);
			request.setAttribute("user", user);
			
			for(Invoice i: invoices2){
				System.out.println(i);
			}
			
			
			RequestDispatcher dispatcher= request.getRequestDispatcher("userProfileSettings.jsp");
			
			
			dispatcher.forward(request, response);
		}
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		
		String address=request.getParameter("txt_address").trim();
		String phone=request.getParameter("txt_phone".trim());
		User user = new User(userId, address, phone);
		
		
		
		///======add validation before update the use=============
		
		
		// added by nabila starts
	
        
        request.setAttribute("txt_address", address);
        request.setAttribute("txt_phone", phone);
        
        RequestDispatcher dispatcher= null;
        boolean check=true;
        boolean temp;
        
        temp = ValidationController.checkAddress(address);
        //System.out.println("address  temp"+ temp);
        check = check & temp;
        //System.out.println("address "+ check);
        temp = ValidationController.checkPhoneNumber(phone);
       // System.out.println("phone  temp"+ temp);
       
        check = check & temp;
        //System.out.println("phone "+ check);
        
        request.setAttribute("err_address", ValidationController.err_address);
        request.setAttribute("err_phone", ValidationController.err_phone);
       
        
        
        
        
		// added by nabila ends
		
        if(check){
			new UserController().editByUser(user);
			//System.out.println("updated");
			user= new UserController().getById(userId);
			request.setAttribute("user", user);
			dispatcher= request.getRequestDispatcher("userProfileSettings.jsp");
			dispatcher.forward(request, response);
        }
        else{
        	//System.out.println(check);
        	//System.out.println("not updated");
        	user=new UserRepository().getById(userId);
        	request.setAttribute("user", user);
			dispatcher= request.getRequestDispatcher("userProfileSettings.jsp");
			dispatcher.forward(request, response);
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
