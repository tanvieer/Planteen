package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.InvoiceToProductController;
import controller.ProductController;
import entity.CartItem;
import entity.InvoiceToProduct;
import entity.Product;

/**
 * Servlet implementation class InvoicesToProductModalAJAX
 */
@WebServlet("/getInvoicesProduct")
public class InvoicesToProductModalAJAX extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		
		
		String invoicePrimaryId = (String) request.getParameter("invoicePrimaryId");
		//out.println(invoicePrimaryId);
		
		
		
		ArrayList<InvoiceToProduct> ipList = new InvoiceToProductController().getInvoiceItems(invoicePrimaryId);
		ArrayList<CartItem> cList = new ArrayList<CartItem>();
		Product tempP;
		CartItem tempC;
		
		
		for(InvoiceToProduct ip : ipList){
	
			tempP = new ProductController().getById( ip.getProductId() );
			tempC = new CartItem();
			
			tempC.setProductId( ip.getProductId() );
			tempC.setImagePath(tempP.getImagePath());
			tempC.setSellingPrice(ip.getSellingPrice());
			tempC.setQuantity(ip.getUnits());
			tempC.setProductName(tempP.getProductName());
			tempC.setProductDetails(tempP.getProductDetails());
			
			cList.add(tempC);
			
		}
		out.println("<table class='table'>");
		out.println("<thead>"
				+ "<tr>"
				+ "<th>Product Name</th>"
				+ "<th>Unit Price</th>"
				+ "<th>Units</th>"
				+ "<th>Total Price</th>"
				+ "</tr>"
				+ "</thead>"
				+ "<tbody>");
			
		
		for(CartItem c:cList){
			out.println("<tr>"
					+ "<td>"+c.getProductName()+"</td>"
					+ "<td>"+c.getSellingPrice()+"</td>"
					+ "<td>"+c.getQuantity()+"</td>"
					+ "<td>"+c.getSellingPrice()*c.getQuantity()+"</td>"
					+ "</tr>");
		}
		out.println("</tbody>"
				+ "</table>");
		

		System.out.println("test called");
	
	}

}
