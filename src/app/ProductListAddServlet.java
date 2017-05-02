package app;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import controller.CategoryController;
import controller.ProductController;
import controller.ValidationController;
import entity.Product;

/**
 * Servlet implementation class ProductListAddServlet
 */
@WebServlet("/ProductListAdd")
public class ProductListAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isValid=true;
			

		
		System.out.println("txt_productId  "+request.getParameter("txt_productName"));
		
		System.out.println("2");
		String productName= request.getParameter("txt_productName").trim();
		String categoryName=(String)(request.getParameter("drop_categoryName"));
		float sellingPrice= Float.parseFloat( ValidationController.isNull((String)request.getParameter("txt_sellingPrice")) ? "0.0":(String)request.getParameter("txt_sellingPrice") );
		System.out.println("3");
		//float buyingPrice= Float.parseFloat((String) request.getParameter("txt_buyingPrice"));
		float buyingPrice= Float.parseFloat( ValidationController.isNull((String)request.getParameter("txt_buyingPrice")) ? "0.0":(String)request.getParameter("txt_buyingPrice") );
		int boughtUnits= Integer.parseInt( ValidationController.isNull((String)request.getParameter("txt_boughtUnits")) ? "0":(String)request.getParameter("txt_boughtUnits") );
		//int boughtUnits= 10;
		int remainingUnits= Integer.parseInt(  ValidationController.isNull((String)request.getParameter("txt_remainingUnits")) ? "0":(String)request.getParameter("txt_remainingUnits"));
		System.out.println("4");
		String addedBy= request.getParameter("txt_addedBy");
		String adminNote= request.getParameter("txt_adminNote");
		String productDetails= request.getParameter("txt_productDetails");
		String imagePath= request.getParameter("image_path");
		boolean isVisible= Boolean.parseBoolean( request.getParameter("txt_visibility"));
		
		
		//System.out.println(categoryName);
		
		long millis=System.currentTimeMillis();  
        java.sql.Date buyingDate=new java.sql.Date(millis); 
        System.out.print(buyingDate);
        
        
        if(ValidationController.isNull(categoryName)){
        	isValid=false;
        }
        if(categoryName==null || categoryName.trim()==""){
        	isValid=false;
        }
        if(sellingPrice<1 || sellingPrice>1000000000){
        	isValid=false;
        }
        if(buyingPrice<1|| buyingPrice>1000000000){
        	isValid=false;
        }
        if(boughtUnits<1|| boughtUnits>1000000000){
        	isValid=false;
        }
        if(adminNote==null || adminNote.trim()=="" ||adminNote.trim()==" "){
        	isValid=false;
        }
        if(adminNote==null ||adminNote.trim()==""|| adminNote.trim()==" "){
        	isValid=false;
        }
        if(productDetails==null ||productDetails.trim()==""||productDetails.trim()==" "){
        	isValid=false;
        }
        if(isValid){
        
		
		int categoryId=  new CategoryController().getByName(categoryName).getCategoryId();
		
		
		//Product product= new Product(productName, categoryId, sellingPrice, imagePath, productDetails, buyingPrice, boughtUnits, remainingUnits, addedBy, adminNote, isVisible);
		Product product= new Product(productName, categoryId, sellingPrice, imagePath, productDetails, buyingDate, buyingPrice, boughtUnits, remainingUnits, addedBy, adminNote, isVisible);
		System.out.println(product);
		
		System.out.println("p name "+productName);
		
		new ProductController().add(product);
		System.out.println("product added successfully");
        }
        else{
        	System.out.println("product add failed");
        }
		
		
		response.sendRedirect("ProductList");
		
	}

}
