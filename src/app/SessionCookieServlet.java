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
 * Servlet implementation class SessionCookieServlet
 */
@WebServlet("/SessionCookie")
public class SessionCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String redirectPage = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionCookieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		  Cookie[] cookies = request.getCookies();
		  RequestDispatcher dispatcher = request.getRequestDispatcher("home");
		  //response.setContentType("text/html");
		  
		  System.out.println("SessionCookieServlet doGet, checking session cookie");
		  if(session == null && (cookies==null || cookies.length <= 1)){ //neither session nor cookie exists
			  request.setAttribute("dropdownLoggedIn", "style='display: none;'");
			  request.setAttribute("dropdownLoggedOut", "");
			  dispatcher.forward(request, response);
			  
			  /*session.setAttribute("dropdownLoggedIn", "style='display: none;'");
			  session.setAttribute("dropdownLoggedOut", "");
			  response.sendRedirect("home");*/
		  }
		  else if(session == null && cookies.length > 1){ //cookie exists
			  System.out.println("SessionCookieServlet setting session from cookies starts");
			  session = request.getSession();
			  for(Cookie c:cookies){
				  System.out.println("SessionCookieServlet, cookie maxAge: "+c.getMaxAge()); 
				  if(c.getName().equalsIgnoreCase("userEmail")){
					  session.setAttribute("userEmail", c.getValue());
				  }else if(c.getName().equalsIgnoreCase("userId")){
					  session.setAttribute("userId", c.getValue());
				  }
			  }
			  System.out.println("SessionCookieServlet setting session from cookies ends");
			  
			  request.setAttribute("dropdownLoggedIn", "");
			  request.setAttribute("dropdownLoggedOut", "style='display: none;'");
			  dispatcher.forward(request, response);
			  
			  /*session.setAttribute("dropdownLoggedIn", "");
			  session.setAttribute("dropdownLoggedOut", "style='display: none;'");
			  response.sendRedirect("home");*/
		  }
		  else{ //session exists
			  System.out.println("SessionCookieServlet session already exists");
			  
			  request.setAttribute("dropdownLoggedIn", "");
			  request.setAttribute("dropdownLoggedOut", "style='display: none;'");
			  dispatcher.forward(request, response);
			  
			  /*session.setAttribute("dropdownLoggedIn", "");
			  session.setAttribute("dropdownLoggedOut", "style='display: none;'");
			  response.sendRedirect("home");*/
		  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	public String getRedirectPage() {
		return redirectPage;
	}

	public void setRedirectPage(String redirectPage) {
		this.redirectPage = redirectPage;
	}
	
	

}
