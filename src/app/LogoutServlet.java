package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("userLogin");
		
		response.setContentType("text/html");
		  HttpSession session = request.getSession(false);
		  Cookie[] cookies = request.getCookies();
		  
		  if(cookies != null){
			  System.out.println("LogoutServlet, Clearing cookies");
			  for(Cookie c: cookies){
				  c.setMaxAge(0);
				  System.out.println("LogoutServlet, cookie age:" + c.getMaxAge());
				  //c.setValue(null);
				  response.addCookie(c);
			  }
			  
			/*  Cookie ckrp[]=request.getCookies();  
	            for(int i=0;i<ckrp.length;i++){  
	             System.out.println("TANVIR cookie delet hoise. length ="+ ckrp.length);//printing name and value of cookie  
	             
	             System.out.println(ckrp[i].getName());
	             System.out.println(" klsjdhfjkdsbj "+ckrp[i].getMaxAge());
	            }*/
		  }
		  
		  if(session != null){
			  System.out.println("Session invalidate korchhi at user-logout");
			  session.invalidate();
		  }
		  System.out.println("LogoutServlet, Redirecting to Login");
		  response.sendRedirect("userLogin");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
