package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.InvoiceController;
import entity.Invoice;

/**
 * Servlet implementation class AdminAllOrdersServlet
 */
@WebServlet("/AdminAllOrders")
public class AdminAllOrdersServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("adminAllOrders.jsp");
		
		ArrayList<Invoice> invoices = new ArrayList<Invoice>();
		invoices = new InvoiceController().getAll();
		
		
		request.setAttribute("invoices", invoices);
		System.out.println("dispatching to adminAllOrders.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
