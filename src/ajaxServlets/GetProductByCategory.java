package ajaxServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ProductController;
import entity.Product;


@WebServlet("/GetProductsByCategory")
public class GetProductByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("categoryId"));
		  
		  PrintWriter out = response.getWriter();
		  
		  System.out.println(id);
		  
		  ArrayList<Product> products = new ProductController().getAllProductByCategoryId(id); 
	        
	      
		  if(products!=null)
			  for(Product p : products){
			/*	  out.println(p.getCategoryId());
				  out.println(p.getImagePath());
				  out.println(p.getProductId());
				  out.println(p.getProductName());
				  out.println(p.getStatus());
				  */
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  out.println("<div class='col-sm-4 col-md-4'>");
				  out.println("<div class='card card-accent-default align-middle'>");
				  out.println("<h4 class='card-header card-title'>"+p.getProductName()+"</h4>");

				  out.println("<img class='card-img-top' style='max-height:20rem;width:auto' src='./img/test.jpg'");
				  out.println("alt='Card image cap'>");
							
				  out.println("<div class='card-block'>");

				  out.println("<p class='card-text'>"+p.getProductDetails()+"</p>");

				  out.println("<ul class='list-group list-group-flush'>");
				  out.println("<li class='list-group-item text-center'><b>Price:"+p.getSellingPrice()+"BDT</b></li>");
				  out.println("<li class='list-group-item text-center'>");

				  /*out.println("<button type='button' "
				  		+ "onClick='window.location.href=\'viewItem.jsp?productId="+p.getProductId()+"\''"
				  		+ "class='btn btn-outline-primary btn-lg btn-block'>"
				  		+ "Product Details"
				  		+ "</button>");*/
				  out.println("<a "
				  		+ "class='btn btn-outline-primary btn-lg btn-block' "
				  		+ "href='viewItem.jsp?productid="+ p.getProductId() +"'>Product Details"
				  		+ "</a>");

				  out.println("</li>");

				  out.println("<li class='list-group-item text-center'>");

				  out.println("<button type='button' class='btn btn-warning'>");
				  out.println("<i class='fa fa-check'></i>&nbsp; Add To Cart</button>");
				  out.println("<button type='button' class='btn btn-danger'>");
				  out.println("<i class='fa fa-star'></i>&nbsp; Wishlist</button>");

				  out.println("</li>");
				  out.println("</ul>");


				  out.println("</div>");
				  out.println("</div>");
				  out.println("</div>");
				  
			  }
		  
		  
	}

}
