package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconnection {
	String driverClassName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost/Library";
	String dbUser = "root";
	String dbPwd = "1qaz@WSX";

	private static dbconnection connectionFactory = null;

	private dbconnection() throws InstantiationException, IllegalAccessException {
		try {
			Class.forName(driverClassName).newInstance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() throws SQLException {
		Connection conn = null;
		conn = DriverManager.getConnection(connectionUrl,dbUser,dbPwd);

		return conn;
	}

	public static dbconnection getInstance() throws Exception {
		if (connectionFactory == null) {
			connectionFactory = new dbconnection();
		}
		return connectionFactory;
	}
}
