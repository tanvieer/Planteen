package model;

import java.sql.Connection;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.Category;


public class CategoryRepository implements Repository<Category>{

	private static final String tableName = "categories";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public CategoryRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
		
	
	@Override
	public boolean add(Category category) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (categoryName)"
		  			+ " Values(?)");  // we can use statement or we can use general query.  example: statement
			    
	            statement.setString(1,category.getCategoryName());
	           
			System.out.println(statement);
			int result = statement.executeUpdate();
			

			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			System.out.println("CategoryRepository : add method");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("add()");
		}
	}

	@Override
	public boolean edit(Category entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET categoryName=? WHERE categoryId=?");  
			// we can use statement or we can use general query.  example: statement
				
	            statement.setString(1,entity.getCategoryName());
	            statement.setInt(2,entity.getCategoryId());
	            System.out.println(statement);
	         System.out.println(statement);
			int result = statement.executeUpdate();
			
			if (result != 0) {
				return true;
			}
			return false;

		} 
		catch (Exception e) {
			System.out.println("CategoryRepository : edit method");
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
			
			String query = "DELETE FROM " + tableName + " WHERE categoryId ='"
					+ id + "'"; // we can use statement or we can use general query.  example: query

			int result = dataAccess.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			System.out.println("CategoryRepository : delete method");
			e.printStackTrace();
			return false;
		}
		finally {
			closeConnection("delete()");
		}
	}

	@Override
	public Category getById(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where categoryId = '"
					+ id + "'";
			System.out.println(query);
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int categoryId = resultSet.getInt("categoryId");
			String categoryName = resultSet.getString("categoyName");
			
			Category category = new Category(categoryId,categoryName);
				return category;
			}
			else 
				return null;
		}
		
		 catch (Exception e) {
			System.out.println("exception found at CategoryRepository.java while getById");
			return null;
		 }
		finally {
			closeConnection("getById()");
		}
		
	}


	public ArrayList<Category> searchByName(String name) {
		
		ArrayList<Category> categoryList = new ArrayList<Category>();
		try {

			String query = "SELECT * FROM " + tableName + " WHERE categoryName LIKE '"+name+"%'";

			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int categoryId = resultSet.getInt("categoryId");
				String categoryName = resultSet.getString("categoryName");
			
				
				Category category= new Category(categoryId, categoryName);
				categoryList.add(category);
			}
		} catch (Exception e) {
			System.out.println("exception found at CategoryRepository.java while get all by Name");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return categoryList;
	}

	@Override
	public ArrayList<Category> getAll() {
		
		ArrayList<Category> categoryList = new ArrayList<Category>();
		try {

			String query = "SELECT * FROM " + tableName;

			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int categoryId = resultSet.getInt("categoryId");
				String categoryName = resultSet.getString("categoryName");
			
				
				Category category= new Category(categoryId, categoryName);
				categoryList.add(category);
			}
		} catch (Exception e) {
			System.out.println("exception found at CategoryRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return categoryList;
	}
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at CategoryRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at CategoryRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at CategoryRepository.java, "+tracker+" at finally block CONNECTION");};
	}

	@Override
	public Category getByName(String categoryName) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where categoryName = '"
					+ categoryName + "'";
			System.out.println(query);
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
				int categoryId = resultSet.getInt("categoryId");
				
				
				Category category = new Category(categoryId,categoryName);
					return category;
			}
			else 
				return null;
		}
		
		 catch (Exception e) {
			System.out.println("exception found at CategoryRepository.java while getByName");
			return null;
		 }
		finally {
			closeConnection("getByName("+categoryName+")");
		}
		
	}
}
