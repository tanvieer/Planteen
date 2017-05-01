package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ProductStockController;


//called from topnav.jsp for viewitem.jsp
@WebServlet("/GetProductQuantity")
public class GetProductQuantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			int id = Integer.parseInt(request.getParameter("productId"));
			PrintWriter out = response.getWriter();
			
			int quantity = new ProductStockController().getProductQuantity(id);
			
			if(quantity <0) out.println("0");
			else out.println(quantity);
		}catch (Exception ex){
			ex.printStackTrace();
		}
	}



}
