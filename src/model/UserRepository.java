package model;

import java.sql.Connection;
import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.User;

public class UserRepository implements Repository<User>{

	private static final String tableName = "users";
	private java.sql.PreparedStatement stmt;
	private MySqlDataAccess da;
	private Connection connection;
	private java.sql.ResultSet resultSet;
	
	public UserRepository() {
		stmt = null;
		da = null;
		connection = null;
		resultSet = null;
	}
	
	@Override
	public boolean add(User entity) {
		
		try {
			da = new MySqlDataAccess();
			connection=da.getConnection();
			
			stmt = connection.prepareStatement("INSERT INTO "+tableName+" (type,name,email,password,address,phone,gender,status)"
		  			+ " Values(?,?,?,?,?,?,?,?)"); 
			
	            stmt.setString(1,entity.getType());
	            stmt.setString(2,entity.getName());
	            stmt.setString(3,entity.getEmail());
	            stmt.setString(4,entity.getPassword());
	            stmt.setString(5,entity.getAddress());
	            stmt.setString(6,entity.getPhone());
	            stmt.setString(7,entity.getGender());
	            stmt.setString(8,entity.getStatus());
			
			int result = stmt.executeUpdate();
			

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

	
	public boolean editByUser(User entity) {
		try {
			da = new MySqlDataAccess();
			connection=da.getConnection();
			
			stmt = connection.prepareStatement("UPDATE "+tableName+" SET "
		
					+ "address = ?,"
					+ "phone = ?"
					
					+ " WHERE userid = ?");  // we can use statement or we can use general query.  example: statement
			
	     
	            
	            
	            stmt.setString(1,entity.getAddress());
	            stmt.setString(2,entity.getPhone());
	 
	            stmt.setInt(3,entity.getUserId());
	            System.out.println(stmt);
			int result = stmt.executeUpdate();
			
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
	public boolean edit(User entity) {
		try {
			da = new MySqlDataAccess();
			connection=da.getConnection();
			
			stmt = connection.prepareStatement("UPDATE "+tableName+" SET "
					+ "type = ?,"
					+ "name = ?,"
					+ "email = ?,"
					+ "password = ?,"
					+ "address = ?,"
					+ "phone = ?,"
					+ "gender = ?,"
					+ "status = ? "
					+ "WHERE userid = ?");  // we can use statement or we can use general query.  example: statement
			
	            stmt.setString(1,entity.getType());
	            stmt.setString(2,entity.getName());
	            stmt.setString(3,entity.getEmail());
	            stmt.setString(4,entity.getPassword());
	            stmt.setString(5,entity.getAddress());
	            stmt.setString(6,entity.getPhone());
	            stmt.setString(7,entity.getGender());
	            stmt.setString(8,entity.getStatus());
	            stmt.setInt(9,entity.getUserId());
	            System.out.println(stmt);
			int result = stmt.executeUpdate();
			
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
			da = new MySqlDataAccess();
			
			String query = "DELETE FROM " + tableName + " WHERE userId ='"
					+ id + "'"; // we can use statement or we can use general query.  example: query

			int result = da.executeQuery(query);

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
	public User getById(int id) {
		try {
			da = new MySqlDataAccess();
			
			String query = "SELECT * FROM " + tableName + " where userId = '"
					+ id + "'";
		
			resultSet = da.getData(query);
		
			if(resultSet.next()){
			int userId = resultSet.getInt("userId");
			String type = resultSet.getString("type");
			String name = resultSet.getString("name");
			String email = resultSet.getString("email");
			
			String password = resultSet.getString("password");
			String address = resultSet.getString("address");
			String phone = resultSet.getString("phone");
			String gender = resultSet.getString("gender");
			String status = resultSet.getString("status");
			
			
			User user = new User(userId,type,name, email, password,address, phone,gender,status);
				return user;
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
	public User getByName(String name) {
		try {
			String query = "SELECT * FROM " + tableName + " where name = '"
					+ name + "'";
			
			da = new MySqlDataAccess();
			resultSet = da.getData(query);
			if(resultSet.next()){
			int userId = resultSet.getInt("userId");
			String type = resultSet.getString("type");
			String user_name = resultSet.getString("name");
			String email = resultSet.getString("email");
			String password = resultSet.getString("password");
			String address = resultSet.getString("address");
			String phone = resultSet.getString("phone");
			String gender = resultSet.getString("gender");
			String status = resultSet.getString("status");
			
			User users = new User(userId,type, user_name, email, password,address, phone,gender,status);
				return users;
			}
			else 
				return null;
					
			}
		 catch (Exception e) {
			System.out.println("exception found at UserRepository.java while getByName");
			return null;
		}
		finally {
			closeConnection("getByName()");
		}
		
	}
	
	
	public User getByEmail(String mail) {
		try {
			String query = "SELECT * FROM " + tableName + " where email = '"
					+ mail + "'";
			
			da = new MySqlDataAccess();
			resultSet = da.getData(query);
			if(resultSet.next()){
			int userId = resultSet.getInt("userId");
			String type = resultSet.getString("type");
			String user_name = resultSet.getString("name");
			String email = resultSet.getString("email");
			String password = resultSet.getString("password");
			String address = resultSet.getString("address");
			String phone = resultSet.getString("phone");
			String gender = resultSet.getString("gender");
			String status = resultSet.getString("status");
			
			User users = new User(userId,type, user_name, email, password,address, phone,gender,status);
				return users;
			}
			else 
				return null;
			}
		 catch (Exception e) {
			System.out.println("exception found at UserRepository.java while getByEmail");
			return null;
		}
		finally {
			closeConnection("getByEmail()");
		}
	}

	@Override
	public ArrayList<User> getAll() {
		
		ArrayList<User> userList = new ArrayList<User>();
		try {

			String query = "SELECT * FROM " + tableName;

			da = new MySqlDataAccess();

			resultSet = da.getData(query);

			while (resultSet.next()) {

				int userId = resultSet.getInt("userId");
				String type = resultSet.getString("type");
				String name = resultSet.getString("name");
				String email = resultSet.getString("email");
				String password = resultSet.getString("password");
				String address = resultSet.getString("address");
				String phone = resultSet.getString("phone");
				String gender = resultSet.getString("gender");
				String status = resultSet.getString("status");
				
				User users = new User(userId,type, name, email, password,address, phone,gender,status);
				userList.add(users);
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java while get all");
			return null;
		}
		finally {
			closeConnection("getAll()");
		}
		return userList;
	}
	
	private void closeConnection(String tracker){
		try { if (resultSet != null) resultSet.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block RESULTSET");};
	    try { if (stmt != null) stmt.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block STMT");};
	    try { if (connection != null) connection.close(); } catch (Exception e) {System.out.println("Exception at UserRepository.java, "+tracker+" at finally block CONNECTION");};
	}

}