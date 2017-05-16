package app;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.InvoiceController;
import controller.UserController;
import entity.Invoice;
import entity.User;

@WebServlet("/AdminDashboard")
public class AdminDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int userId = 0;
	private String userEmail = "";
	private String redirectPage = "AdminDashboard";
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*Calendar today = Calendar.getInstance();
		today.clear(Calendar.HOUR); today.clear(Calendar.MINUTE); today.clear(Calendar.SECOND);
		Date todayDate = (Date) today.getTime();*/


		if(!isLoggedIn(request,response)){
			RequestDispatcher dispatcher= request.getRequestDispatcher("adminLogin");
			request.setAttribute("err_email", "Admin must be logged in");
			request.setAttribute("lastRedirectPage", redirectPage);
			dispatcher.forward(request, response);
			return;
		}
		else {
		
		long time = System.currentTimeMillis();
		java.sql.Date todayDate = new java.sql.Date( time );
		   
		ArrayList<User> registeredTodayList = new UserController().getAllByRegistrationDate(todayDate);
		ArrayList<Invoice> deliveredTodayList = new InvoiceController().getAllByConfirmDate(todayDate);
		ArrayList<Invoice> placedTodayList = new InvoiceController().getAllByPlacementDate(todayDate);
		ArrayList<Invoice> pendingNowList = new InvoiceController().getAllByStatus("pending");
		int profitToday = new InvoiceController().getTotalProfitByDate(todayDate);
		
		request.setAttribute("registeredToday", (registeredTodayList==null)?"0":registeredTodayList.size());
		request.setAttribute("deliveredToday", (deliveredTodayList==null)?"0":deliveredTodayList.size());
		request.setAttribute("placedToday", (placedTodayList==null)?"0":placedTodayList.size());
		request.setAttribute("pendingList", (pendingNowList==null)?"0":pendingNowList.size());
		request.setAttribute("profitToday", (profitToday==-1)?"0":profitToday);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard.jsp");
		dispatcher.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	
	

	private boolean isLoggedIn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session != null){
				userEmail = (String) session.getAttribute("userEmail");
			  if(userEmail != null){
				  userId =  Integer.parseInt((String) session.getAttribute("userId"));
			  }
			  
			  
			  
			  if(userEmail!= null && userId != 0){
				  User u = new UserController().getById(userId);
				  if(u!= null && userEmail.equals(u.getEmail())){
					  System.out.println("User Logged In"); ///////////////////////////////////////Login successfull from SESSION

					  return true;
				  }
				  else {
					  System.out.println("LoginServlet session exist but not matched");
					  return false;
				  }
			  }
		}
		return false;
	}

}
