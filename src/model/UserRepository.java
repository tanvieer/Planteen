package model;

import java.util.ArrayList;

import DataAccessLayer.MySqlDataAccess;
import entity.UserInfo;

public class UserRepository {

	private static final String tableName = "userinfo";

	public UserRepository() {
	}

	public boolean addUser(UserInfo userinfo) {
		try {

			MySqlDataAccess da = new MySqlDataAccess();

			String query = "INSERT INTO " + tableName
					+ "(name,username,email,password,type) VALUES('"
					+ userinfo.getName() + "','" + userinfo.getUsername()
					+ "','" + userinfo.getEmail() + "','"
					+ userinfo.getPassword() + "','" + userinfo.getUserType()
					+ "')";

			// System.out.println(query);
			int result = da.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public ArrayList<UserInfo> getAll() {
		ArrayList<UserInfo> userlist = new ArrayList<UserInfo>();
		try {

			String query = "SELECT * FROM " + tableName;

			MySqlDataAccess da = new MySqlDataAccess();

			java.sql.ResultSet rs = da.getData(query);

			while (rs.next()) {

				int id = rs.getInt("id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String type = rs.getString("type");
				String email = rs.getString("email");
				UserInfo userinfo = new UserInfo(id, name, username, email,
						password, type);
				userlist.add(userinfo);

			}

		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java");
		}
		return userlist;
	}

	public UserInfo getUserByUsername(String uname) {
		try {
			String query = "SELECT * FROM " + tableName + " where username = '"
					+ uname + "'";
			MySqlDataAccess da = new MySqlDataAccess();
			java.sql.ResultSet rs = da.getData(query);

			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String type = rs.getString("type");
				String email = rs.getString("email");
				UserInfo userinfo = new UserInfo(id, name, username, email,
						password, type);
				return userinfo;
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java");
		}
		return null;
	}

	public boolean editUserByUsername(UserInfo userinfo) {
		try {

			MySqlDataAccess da = new MySqlDataAccess();

			String query = "UPDATE " + tableName + " SET name='"
					+ userinfo.getName() + "',email='" + userinfo.getEmail()
					+ "',password='" + userinfo.getPassword() + "',type='"
					+ userinfo.getUserType() + "' WHERE username ='"
					+ userinfo.getUsername() + "'";
			// System.out.println(query);
			int result = da.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public boolean deleteUserByUsername(String uname) {
		try {

			MySqlDataAccess da = new MySqlDataAccess();

			String query = "DELETE FROM " + tableName + " WHERE username ='"
					+ uname + "'";
			// System.out.println(query);
			int result = da.executeQuery(query);

			if (result != 0) {
				return true;
			}
			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public UserInfo getUserByEmail(String mail) {
		try {
			String query = "SELECT * FROM " + tableName + " where email = '"
					+ mail + "'";
			MySqlDataAccess da = new MySqlDataAccess();
			java.sql.ResultSet rs = da.getData(query);

			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String type = rs.getString("type");
				String email = rs.getString("email");
				UserInfo userinfo = new UserInfo(id, name, username, email,
						password, type);
				return userinfo;
			}
		} catch (Exception e) {
			System.out.println("exception found at UserRepository.java");
		}
		return null;
	}

}