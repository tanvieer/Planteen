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

import controller.UserController;
import entity.User;


@WebServlet("/userLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String redirectPage;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getAttribute("lastRedirectPage")!= null){
			redirectPage =(String) request.getAttribute("lastRedirectPage");
			
			System.out.println("redi page = " + redirectPage);
		}
		else {
			System.out.println("redi page null");
			redirectPage = "home";
		}
		
		System.out.println("test redi page = "+request.getAttribute("lastRedirectPage"));
		
		HttpSession session = request.getSession(false);
		  Cookie[] cookies = request.getCookies();
		  RequestDispatcher dispatcher = request.getRequestDispatcher("home");
		  //response.setContentType("text/html");
		  
		  //System.out.println("LoginServlet doGet, checking session cookie");
		  if(session == null && (cookies==null || cookies.length <= 1)){ //neither session nor cookie exists
			  System.out.println("LoginServlet doGet, neither session nor cookie exists");
			  dispatcher = request.getRequestDispatcher("userLogin.jsp");
			  
			 /* session.setAttribute("dropdownLoggedIn", "style='display: none;'");
			  session.setAttribute("dropdownLoggedOut", "");*/
			  
			  
			  
			  dispatcher.forward(request, response);
			  return;
		  }else if(session == null && cookies.length > 1){ //cookie exists
			  System.out.println("LoginServlet setting session from cookies starts");
			  session = request.getSession();
			  boolean em = false, uid = false;
			  for(Cookie c:cookies){
				  
				  if(c.getName().equalsIgnoreCase("userEmail")){
					  System.out.println("LoginServlet, userEmail maxAge: "+c.getMaxAge()); 
					  System.out.println("ck userEmail = " +c.getValue());
					  
					  session.setAttribute("userEmail", c.getValue());
					  session.setMaxInactiveInterval(200*600);
					  em = true;
					  
				  }else if(c.getName().equalsIgnoreCase("userId")){
					  System.out.println("LoginServlet, userId maxAge: "+c.getMaxAge()); 
					  
					  String usid = c.getValue();
					  System.out.println("ck userId = " +usid);
					  
					  session.setAttribute("userId", c.getValue());
					  session.setMaxInactiveInterval(200*600);
					  uid = true;
				  }
			  }
			  if(em && uid){

				  session.setMaxInactiveInterval(200*600);
;
				  System.out.println("Login Successful from cookie"); ///////////////////////////////////////Login successfull from cookie
				  response.sendRedirect(redirectPage);
				  return;
			  }
			  
		  }else
		  { //session exists
			  
			  System.out.println("LoginServlet doget checking session");
			  
			  try{
				  
				  int userId = 0;
				  String email = (String) session.getAttribute("userEmail");
				  //System.out.println(session.getAttribute("userId"));
				  if(email != null){
					  userId =  Integer.parseInt((String) session.getAttribute("userId"));
				  }
					 
				  
				  
				  if(email!= null && userId != 0){
					  User u = new UserController().getById(userId);
					  if(u!= null && email.equals(u.getEmail())){
						  System.out.println("Login Successful from session"); ///////////////////////////////////////Login successfull from SESSION
						  response.sendRedirect(redirectPage);
						  return;
					  }
					  else {
						  System.out.println("LoginServlet session exist but not matched");
					  }
				  }
				  else 
				  System.out.println("LoginServlet doget empty session");
			  }
			  catch (Exception e){
				  
				  e.printStackTrace();
			  }
			  

			  dispatcher = request.getRequestDispatcher("userLogin.jsp");
			  dispatcher.forward(request, response);
			  return;
			  
			
		  }
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isValid = true;
		boolean rememberMe = false;
		RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin.jsp");
		String email = (String) request.getParameter("txt_email").trim();
        String password = (String) request.getParameter("txt_password");
        String checked =  request.getParameter("rememberMe")==null?"":(String) request.getParameter("rememberMe");

        
        request.setAttribute("txt_email", email);
        request.setAttribute("txt_password", password);
        
        if(checked.equals("on")){
        	request.setAttribute("rememberMe", "checked");
        	rememberMe = true;
        }

        User user = new User(email, password);
        isValid = validateUser(user,request,response);
        
        
        if(isValid){
        	
        	user.setUserId(new UserController().getByEmail(user.getEmail()).getUserId());
        	
        	if(rememberMe){
        		Cookie ckU=new Cookie("userId",Integer.toString(user.getUserId()));
            	Cookie ckE=new Cookie("userEmail",user.getEmail());
                ckU.setMaxAge(10000);
                ckE.setMaxAge(10000);

            	response.addCookie(ckU);
            	response.addCookie(ckE);
        	}
        	
    		HttpSession session = request.getSession(true);
    		session = request.getSession();
			session.setAttribute("userEmail", user.getEmail());
			session.setAttribute("userId", Integer.toString(user.getUserId()));
			session.setAttribute("userPasssword", user.getPassword());
			
			session.setMaxInactiveInterval(200*600);
			
        	
			System.out.println("Login successfull from dopost");    ///////////////////////////////////////Login successfull from DOPOST
        	
        	response.sendRedirect(redirectPage);
        }
        
        
	}
	
	
	
	
	private boolean validateUser(User user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("userLogin.jsp");
		boolean check=true;

		
		if(user.getEmail()==null || user.getEmail()== ""){
			request.setAttribute("err_email", "Email must be filled out");
			check=false;
		}else if(!validateEmail(user.getEmail())){
			request.setAttribute("err_email", "Invalid email address");
			check = false;
		}
		else if(new UserController().getByEmail(user.getEmail())== null){
			request.setAttribute("err_email", "This email is not registered");
			check=false;
		}
		
		if(user.getPassword()==null || user.getPassword()== ""){
			request.setAttribute("err_password", "Password must be filled out");
			check=false;
		}else if(check && !(new UserController().getByEmail(user.getEmail()).getPassword().equals(user.getPassword()))){
			request.setAttribute("err_password", "Wrong Password");
			check=false;
		}
		
		
		
		if(!check){
			dispatcher.forward(request, response);
		}
		return check;
	}
	
	
	 boolean validateEmail(String email) 
	 {
	     String regPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	     return email.matches(regPattern);
	 }


}