package DataAccessLayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public abstract class DataAccess {
	protected Connection connection;
	protected Statement statement;

	protected DataAccess(String url, String userName, String password,
			String driver) throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		connection = DriverManager.getConnection(url, userName, password);
		statement = connection.createStatement();
	}

	protected int executeQuery(String query) throws SQLException {
		return statement.executeUpdate(query);
	}

	protected ResultSet getData(String query) throws SQLException {
		return statement.executeQuery(query);
	}

}