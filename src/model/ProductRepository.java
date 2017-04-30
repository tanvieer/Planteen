package model;

import java.sql.Connection;
import java.util.ArrayList;

import com.sun.swing.internal.plaf.metal.resources.metal_zh_TW;

import DataAccessLayer.MySqlDataAccess;
import entity.Category;
import entity.Product;

public class ProductRepository implements Repository<Product> {

	private static final String tableName = "products";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public ProductRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
	
	@Override
	public boolean add(Product entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (productName,categoryId,sellingPrice,imagePath,productDetails,status)" + " Values(?,?,?,?,?,?)");  
			
			    statement.setString(1,entity.getProductName() );
	            statement.setInt(2,entity.getCategoryId());
	            statement.setFloat(3, entity.getSellingPrice());
	            statement.setString(4, entity.getImagePath());
	            statement.setString(5, entity.getProductDetails());
	            statement.setString(6, entity.getStatus());
	           
			
			int result = statement.executeUpdate();
			

			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("add()");
		}
	}

	@Override
	public boolean edit(Product entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET productName=?,categoryId=?,sellingPrice=?,imagePath=?,productDetails=?,status=? WHERE productId=?");  
			// we can use statement or we can use general query.  example: statement

				
			statement.setString(1,entity.getProductName() );
            statement.setInt(2,entity.getCategoryId());
            statement.setFloat(3, entity.getSellingPrice());
            statement.setString(4, entity.getImagePath());
            statement.setString(5, entity.getProductDetails());
            statement.setString(6, entity.getStatus());
            statement.setInt(7, entity.getProductId());
            
	            System.out.println(statement);
			int result = statement.executeUpdate();
			
			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("edit()");
		}
	}

	@Override
	public boolean delete(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "DELETE FROM " + tableName + " WHERE productId ='"
					+ id + "'"; // we can use statement or we can use general query.  example: query

			int result = dataAccess.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("delete()");
		}
	}

	@Override
	public Product getById(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where productId = '"
					+ id + "'";
		
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int productId=resultSet.getInt("productId");
			String productName=resultSet.getString("productName");	
			int categoryId = resultSet.getInt("categoryId");
			float sellingPrice= resultSet.getFloat("sellingPrice");
			String imagePath= resultSet.getString("imagePath");
			String productDetails= resultSet.getString("productDetails");
			String status= resultSet.getString("status");
					
					
			
			Product product = new Product(productId, productName, categoryId, sellingPrice, imagePath, productDetails, status);
				return product;
			}
			else 
				return null;
		}
		
		 catch (Exception e) {
			System.out.println("exception found at UserRepository.java while getById");
			return null;
		 }
		finally {
			closeConnection("getById()");
		}
	}

	@Override
	public Product getByName(String name) {
		System.out.println("not implemented yet");
		return null;
	}

	@Override
	public ArrayList<Product> getAll() {
		ArrayList<Product> products = new ArrayList<Product>();
		try {

			String query = "SELECT * FROM " + tableName;

			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int productId=resultSet.getInt("productId");
				String productName=resultSet.getString("productName");	
				int categoryId = resultSet.getInt("categoryId");
				float sellingPrice= resultSet.getFloat("sellingPrice");
				String imagePath= resultSet.getString("imagePath");
				String productDetails= resultSet.getString("productDetails");
				String status= resultSet.getString("status");
			
				
				Product product= new Product(productId, productName, categoryId, sellingPrice, imagePath, productDetails, status);
				products.add(product);
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return products;
	}
	public ArrayList<Product> getAllProductByCategoryId(int id) {
		ArrayList<Product> products = new ArrayList<Product>();
		try {
			String query = "SELECT * FROM " + tableName+ " WHERE categoryId="+id;
			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int productId=resultSet.getInt("productId");
				String productName=resultSet.getString("productName");	
				int categoryId = resultSet.getInt("categoryId");
				float sellingPrice= resultSet.getFloat("sellingPrice");
				String imagePath= resultSet.getString("imagePath");
				String productDetails= resultSet.getString("productDetails");
				String status= resultSet.getString("status");
			
				
				Product product= new Product(productId, productName, categoryId, sellingPrice, imagePath, productDetails, status);
				products.add(product);
			}
		} catch (Exception e) {
			System.out.println("exception found at ProductRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return products;
	}
	
	
	
	
	
	public ArrayList<Product> searchByName(String name){
		ArrayList<Product> products = new ArrayList<Product>();
		try {
			String query = "SELECT * FROM " + tableName+ " WHERE productName LIKE '%"+name+"%'";
		
			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);
			
			

			while (resultSet.next()) {

				int productId=resultSet.getInt("productId");
				String productName=resultSet.getString("productName");	
				int categoryId = resultSet.getInt("categoryId");
				float sellingPrice= resultSet.getFloat("sellingPrice");
				String imagePath= resultSet.getString("imagePath");
				String productDetails= resultSet.getString("productDetails");
				String status= resultSet.getString("status");
			
				
				Product product= new Product(productId, productName, categoryId, sellingPrice, imagePath, productDetails, status);
				products.add(product);
			}
		} catch (Exception e) {
			System.out.println("exception found at ProductRepository.java while searchByName");
			return null;
		}
		finally {
			closeConnection("searchByName");
		}
		return products;
	}
	
	
public ArrayList<Product> searchByNameCategoryId(String name,int id){
	
	ArrayList<Product> products = new ArrayList<Product>();
	try {
		String query = "SELECT * FROM " + tableName+ " WHERE productName LIKE '%"+name+"%' AND categoryId="+id;
	
		dataAccess = new MySqlDataAccess();

		resultSet = dataAccess.getData(query);
		
		

		while (resultSet.next()) {

			int productId=resultSet.getInt("productId");
			String productName=resultSet.getString("productName");	
			int categoryId = resultSet.getInt("categoryId");
			float sellingPrice= resultSet.getFloat("sellingPrice");
			String imagePath= resultSet.getString("imagePath");
			String productDetails= resultSet.getString("productDetails");
			String status= resultSet.getString("status");
		
			
			Product product= new Product(productId, productName, categoryId, sellingPrice, imagePath, productDetails, status);
			products.add(product);
		}
	} catch (Exception e) {
		System.out.println("exception found at ProductRepository.java while searchByName");
		return null;
	}
	finally {
		closeConnection("searchByName");
	}
	return products;
}
	
	
	
	
	
	
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at ProductRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at ProductRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at ProductRepository.java, "+tracker+" at finally block CONNECTION");};
	}
	
	
	


}
