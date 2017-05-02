package app;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
 






import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 






/*import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;*/
import org.apache.tomcat.util.http.fileupload.RequestContext;
/*import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;*/
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

//import com.sun.java.swing.plaf.windows.TMSchema.Part;
 
/**
 * Servlet implementation class Uploader
 */
@WebServlet("/Uploader")
@MultipartConfig
public class Uploader extends HttpServlet {
  
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("uploadImage.jsp");
		dispatcher.forward(request, response);
	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException {
  PrintWriter out = response.getWriter();
   
  if(!ServletFileUpload.isMultipartContent(request)){
   out.println("Nothing to upload");
   return; 
  }
  FileItemFactory itemfactory = new DiskFileItemFactory(); 
  ServletFileUpload upload = new ServletFileUpload(itemfactory);
  try{
   List<FileItem>  items = upload.parseRequest(request);
   for(FileItem item:items){
     
    String contentType = item.getContentType();
    if(!contentType.equals("image/png")){
     out.println("only png format image files supported");
     continue;
    }
	  
	//  Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	//  InputStream filecontent = filePart.getInputStream();
    File uploadDir = new File("..\\..\\WebContent\\img\\");
    File file = File.createTempFile("img",".png",uploadDir);
    item.write(file);
 
    out.println("File Saved Successfully");
    response.sendRedirect("ProductList");
   }
  }
  catch(FileUploadException e){
    e.printStackTrace();
   out.println("upload fail");
   response.sendRedirect("ProductList");
  }
  catch(Exception ex){
	  ex.printStackTrace();
   out.println("can't save");
   response.sendRedirect("ProductList");
  }
 
 }
	
}
