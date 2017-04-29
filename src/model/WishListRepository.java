package model;

import java.sql.Connection;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.Category;
import entity.WishList;

public class WishListRepository  implements Repository<WishList>{

	private static final String tableName = "wishlists";
	private java.sql.PreparedStatement statement;
	private MySqlDataAccess dataAccess;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public WishListRepository() {
		statement = null;
		dataAccess=null;
		connection=null;
		resultSet =null;
	}
	
	@Override
	public boolean add(WishList entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("INSERT INTO "+tableName+" (userId)"
		  			+ " Values(?)");  // we can use statement or we can use general query.  example: statement
			    
	            statement.setInt(1,entity.getUserId());
	           
			
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
	public boolean edit(WishList entity) {
		try {
			dataAccess = new MySqlDataAccess();
			connection=dataAccess.getConnection();
			
			statement = connection.prepareStatement("UPDATE "+tableName+" SET userId=? WHERE wishListId=?");  
			// we can use statement or we can use general query.  example: statement
				
	            statement.setInt(1,entity.getUserId());
	            statement.setInt(2,entity.getWishListId());
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
			
			String query = "DELETE FROM " + tableName + " WHERE wishListId ='"
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
	public WishList getById(int id) {
		try {
			dataAccess = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where wishListId = '"
					+ id + "'";
		
			resultSet = dataAccess.getData(query);
		
			if(resultSet.next()){
				
			int wishListId = resultSet.getInt("wishListId");
			int userId = resultSet.getInt("userId");
			
			WishList wishList= new WishList(wishListId,userId);
			return wishList;
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
	public WishList getByName(String name) {
		System.out.println("we dnt need getbyname of wishlist");
		return null;
	}

	@Override
	public ArrayList<WishList> getAll() {
		ArrayList<WishList> wishLists = new ArrayList<WishList>();
		try {

			String query = "SELECT * FROM " + tableName;

			dataAccess = new MySqlDataAccess();

			resultSet = dataAccess.getData(query);

			while (resultSet.next()) {

				int wishListId = resultSet.getInt("wishListId");
				int userId = resultSet.getInt("userId");
			
				WishList wishList = new WishList(wishListId, userId);
				wishLists.add(wishList);
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return wishLists;
	}
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (statement != null) statement.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block CONNECTION");};
	}

}
