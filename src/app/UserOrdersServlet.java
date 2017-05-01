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

import controller.UserController;
import controller.ValidationController;
import entity.Invoice;
import entity.User;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
import model.UserRepository;

/**
 * Servlet implementation class UserProfileServlet
 */
@WebServlet("/UserOrders")
public class UserOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= request.getRequestDispatcher("userProfileSettings.jsp");
		
		
		int id= 1;
		System.out.println("this is id"+ id);
		User user= new UserController().getById(id);
		System.out.println(user.getName());
		
	
		
		long time = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(time);
		
		ArrayList<Invoice> invoices= new ArrayList<Invoice>();
		
		Invoice invoice= new Invoice(1, date, date, "Mobasser", "Delivered");
		
		invoices.add(invoice);
		invoice= new Invoice(2, date, date, "Tanvir", "pending");
		invoices.add(invoice);
		
		request.setAttribute("invoices", invoices);
		request.setAttribute("user", user);
		
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userOrders.jsp");
		
		
		dispatcher.forward(request, response);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		int userId=1;/// will come from session
		
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
        System.out.println("address  temp"+ temp);
        check = check & temp;
        System.out.println("address "+ check);
        temp = ValidationController.checkPhoneNumber(phone);
        System.out.println("phone  temp"+ temp);
       
        check = check & temp;
        System.out.println("phone "+ check);
        
        request.setAttribute("err_address", ValidationController.err_address);
        request.setAttribute("err_phone", ValidationController.err_phone);
       
        
        
        
        
		// added by nabila ends
		
        
        long time = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(time);
		
		ArrayList<Invoice> invoices= new ArrayList<Invoice>();
		
		Invoice invoice= new Invoice(1, date, date, "Mobasser", "Delivered");
		
		invoices.add(invoice);
		invoice= new Invoice(2, date, date, "Tanvir", "pending");
		invoices.add(invoice);
		
		request.setAttribute("invoices", invoices);
		
        if(check){
			new UserController().editByUser(user);
			System.out.println("updated");
			user= new UserController().getById(userId);
			request.setAttribute("user", user);
			dispatcher= request.getRequestDispatcher("userOrders.jsp");
			dispatcher.forward(request, response);
        }
        else{
        	System.out.println(check);
        	System.out.println("not updated");
        	user=new UserRepository().getById(userId);
        	request.setAttribute("user", user);
			dispatcher= request.getRequestDispatcher("userOrders.jsp");
			dispatcher.forward(request, response);
        }
     
		
	}
	

	
	

}
