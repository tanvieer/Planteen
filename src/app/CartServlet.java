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

import entity.Cart;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= request.getRequestDispatcher("sampleTestPages/sessionScopeTest.jsp");
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userCart.jsp");
		
		HttpSession session = request.getSession(true);
		
		ArrayList<Cart> cList = new ArrayList<Cart>();
			
			Cart ct = new Cart(1,"Mobile",500,1000,"./img/bits1.jpg");
			cList.add(ct);
			
			ct = new Cart(2,"Mobile1",500,1000,"./img/bits1.jpg");
			cList.add(ct);
			
			ct = new Cart(1,"Mobile2",500,1000,"./img/bits1.jpg");
			cList.add(ct);
			
			ct = new Cart(2,"Mobile3",500,1000,"./img/bits1.jpg");
			cList.add(ct);

			
			session.setAttribute("cartList", cList);
		
		dispatcher.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		/*Cart c = (Cart)session.getAttribute("cart");
		System.out.println(c);*/
		
		 @SuppressWarnings("unchecked")
		ArrayList<Cart> cl = (ArrayList <Cart>) session.getAttribute("cartList");
		 
		 for(Cart c : cl){
			 System.out.println(c);
		 }
	}

}
