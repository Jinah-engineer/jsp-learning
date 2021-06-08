package sample2.util;

import java.io.Closeable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static String url;
	private static String user;
	private static String password;
	
	static {
		url = "jdbc:mysql://13.124.234.182/test";
		user = "root";
		password = "wnddkdwjdqhcjfl1";
	}
	
	public static Connection getConnection() {
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			return con;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public static void close(AutoCloseable...objs) { // 여러 개의 객체를 받을 수 있다는 표현
		for (AutoCloseable o : objs) {
			if (o != null) {
				try {
					o.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void rollback(Connection con) {
		
		if (con != null) {
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
