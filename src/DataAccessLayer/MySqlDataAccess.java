package DataAccessLayer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class MySqlDataAccess extends DataAccess {
	public MySqlDataAccess() throws ClassNotFoundException, SQLException {
		super("jdbc:mysql://localhost:3306/planteen", "root", "",
				"com.mysql.jdbc.Driver");
	}

	public int executeQuery(String query) throws SQLException {
		return super.executeQuery(query);
	}

	public ResultSet getData(String query) throws SQLException {
		return super.getData(query);
	}

	public Connection getConnection(){
		return super.connection;
	}
}
