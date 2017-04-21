package DataAccessLayer;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MySqlDataAccess extends DataAccess {
	public MySqlDataAccess() throws ClassNotFoundException, SQLException {
		super("jdbc:mysql://localhost:3306/ecom", "root", "",
				"com.mysql.jdbc.Driver");
	}

	public int executeQuery(String query) throws SQLException {
		return super.executeQuery(query);
	}

	public ResultSet getData(String query) throws SQLException {
		return super.getData(query);
	}
}
