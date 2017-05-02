package ajaxServlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import entity.CartItem;


/**
 * Servlet implementation class CartDeleteServlet
 */
@WebServlet("/CartDeleteAllServlet")
public class CartDeleteAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		try {
			

			HttpSession session = request.getSession(true);

			session.setAttribute("cartList", new ArrayList<CartItem>());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
