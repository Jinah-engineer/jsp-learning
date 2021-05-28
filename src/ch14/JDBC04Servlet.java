package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JDBC04Servlet")
public class JDBC04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JDBC04Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		executeJDBC();
		response.getWriter().print("<h1>JDBC04</h1>");
		
	}
	
	private void executeJDBC() {

		String sql = "SELECT * "
				+ "FROM Employees "
				+ "WHERE EmployeeID = 1";

		String url = "jdbc:mysql://13.124.234.182/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null; 
		
		try {
			// 클래스 로딩 (class loading)
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 연결
			con = DriverManager.getConnection(url, user, password);

			// statement 생성
			stmt = con.createStatement();

			// query 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery(sql);

			// 결과 탐색
			if (rs.next()) {
				int id = rs.getInt(1);
				String lastName = rs.getString(2);
				String firstName = rs.getString(3);
//				String birthDate = rs.getString(4);
				Date birthDate = rs.getDate(4);
				String photo = rs.getString(5);
				String note = rs.getString(6);
				
				System.out.println(id);
				System.out.println(lastName);
				System.out.println(firstName);
				System.out.println(birthDate);
				System.out.println(photo);
				System.out.println(note);
			}


		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
