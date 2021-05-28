package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JDBC09Servlet")
public class JDBC09Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JDBC09Servlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		String name = executeJDBC(id);

		request.setAttribute("name", name);

		String path = "/ch14/jdbc08.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private String executeJDBC(String id) {
		
		// Return 할 변수 값
		String name = "";

		// SQL
		String sql = "SELECT CustomerName From Customers WHERE CustomerID = " + id;

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
				name = rs.getString(1);
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
		// List로 만든 cities를 결과로 리턴하기
		return name;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
