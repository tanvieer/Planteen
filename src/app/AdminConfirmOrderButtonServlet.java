package app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.InvoiceController;

/**
 * Servlet implementation class AdminConfirmOrderButtonServlet
 */
@WebServlet("/AdminConfirmOrderButton")
public class AdminConfirmOrderButtonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = (String)request.getParameter("status");
		String invoicePrimaryId = (String)request.getParameter("invoicePrimaryId");
		boolean updated = new InvoiceController().editStatusByPrimaryId(invoicePrimaryId, status, "admin");
		
		if(updated){
			response.sendRedirect("AdminPendingOrders");
		}else{
			PrintWriter out = response.getWriter();
			out.println("Can't Update order status");
			System.out.println("Can't Update order status");
		}
	}

	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//NEVER USED
	}

}
