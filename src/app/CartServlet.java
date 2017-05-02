package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CategoryController;
import entity.CartItem;
import entity.Category;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= request.getRequestDispatcher("sampleTestPages/sessionScopeTest.jsp");
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userCart.jsp");
		ArrayList<Category> category = new CategoryController().getAll(); 
		request.setAttribute("categories", category); 
		
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(20*60);
		
		@SuppressWarnings("unchecked")
		ArrayList<CartItem> cList = (ArrayList<CartItem>) session.getAttribute("cartList");
		
		if(cList==null){
		
			cList = new ArrayList<CartItem>();
			
/*				Cart ct = new Cart(1,"Mobile",500,1000,"./img/beats1.jpg");
				cList.add(ct);
				
				ct = new Cart(2,"Mobile1",500,1000,"./img/logo1.png");
				cList.add(ct);
				
				ct = new Cart(3,"Mobile2",500,1000,"./img/test.jpg");
				cList.add(ct);
				
				ct = new Cart(4,"Mobile3",500,1000,"./img/mobile1.jpg");
				cList.add(ct);
				
				ct = new Cart(5,"Mobile3",500,1000,"./img/skullcandy1.jpg");
				cList.add(ct);*/
		}

			
			session.setAttribute("cartList", cList);
		
		dispatcher.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		/*Cart c = (Cart)session.getAttribute("cart");
		System.out.println(c);*/
		
		 @SuppressWarnings("unchecked")
		ArrayList<CartItem> cl = (ArrayList <CartItem>) session.getAttribute("cartList");
		 
		 for(CartItem c : cl){
			 System.out.println(c);
		 }
	}

}
