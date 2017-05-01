package model;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.ProductStock;

public class ProductStockRepository implements Repository<ProductStock> {


	private static final String tableName = "product_stocks";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	
	public ProductStockRepository() {
		/*statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;*/
	}
	
	@Override
	public boolean add(ProductStock entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (productId, buyingDate, buyingPrice, boughtUnits, addedBy, adminNote, status)" + " Values(?,?,?,?,?,?,?)");  
			
			   
	            statement.setInt(1,entity.getProductId());
	            statement.setDate(2,entity.getBuyingDate());
	            statement.setFloat(3, entity.getBuyingPrice());
	            statement.setInt(4, entity.getBoughtUnits());
	            statement.setString(5,entity.getAddedBy());
	            statement.setString(6, entity.getAdminNote());
	            statement.setString(7, entity.getStatus());
	           
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
	public boolean edit(ProductStock entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET productId=?, buyingDate=?, buyingPrice=?, boughtUnits=?, addedBy=?, adminNote=?, status=? WHERE productStockId=?");  
					
			statement.setInt(1,entity.getProductId());
            statement.setDate(2,entity.getBuyingDate());
            statement.setFloat(3, entity.getBuyingPrice());
            statement.setInt(4, entity.getBoughtUnits());
            statement.setString(5,entity.getAddedBy());
            statement.setString(6, entity.getAdminNote());
            statement.setString(7, entity.getStatus());
            
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
			
			String query = "DELETE FROM " + tableName + " WHERE productStockId ='"
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
	public ProductStock getById(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where productStockId = '"
					+ id + "'";
		
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int productStockId=resultSet.getInt("productStockId");
			int productId = resultSet.getInt("productId");
			Date buyingDate= resultSet.getDate("buyingDate");
			float buyingPrice=resultSet.getFloat("buyingPrice");
			int boughtUnits=resultSet.getInt("boughtUnits");
			String addedBy= resultSet.getString("addedBy");
			String adminNote=resultSet.getString("adminNote");
			String status= resultSet.getString("status");
					
			ProductStock productStock= new ProductStock(productStockId, productId, buyingDate, buyingPrice, boughtUnits, addedBy, adminNote, status);
			return productStock;
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
	public ProductStock getByName(String name) {
		System.out.println("not implemented yet");
		return null;
	}

	@Override
	public ArrayList<ProductStock> getAll() {
		ArrayList<ProductStock> productStocks = new ArrayList<ProductStock>();
		try {

			String query = "SELECT * FROM " + tableName;

			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int productStockId=resultSet.getInt("productStockId");
				int productId = resultSet.getInt("productId");
				Date buyingDate= resultSet.getDate("buyingDate");
				float buyingPrice=resultSet.getFloat("buyingPrice");
				int boughtUnits=resultSet.getInt("boughtUnits");
				String addedBy= resultSet.getString("addedBy");
				String adminNote=resultSet.getString("adminNote");
				String status= resultSet.getString("status");
			
				
				ProductStock productStock= new ProductStock(productStockId, productId, buyingDate, buyingPrice, boughtUnits, addedBy, adminNote, status);
				productStocks.add(productStock);
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return productStocks;
	}
	public int getProductQuantity(int productId){
		int totalQuantity = 0;
		try {

			String query = "SELECT SUM(COALESCE(boughtUnits,0)) FROM " + tableName + " WHERE productId = " + productId;
			//System.out.println(query + "=============");
			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {
				totalQuantity = resultSet.getInt(1);				
			}
		} catch (Exception e) {
			System.out.println("exception found at ProductStockRepository.java while getProductQuantity(productId)");
			return -1;
		}
		finally {
			closeConnection("getProductQuantity(productId)");
		}
		return totalQuantity;
	}
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block CONNECTION");};
	}
	
}
