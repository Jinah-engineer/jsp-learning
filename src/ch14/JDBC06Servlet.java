package ch14;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JDBC06Servlet")
public class JDBC06Servlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public JDBC06Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().print("<h1>jdbc05</h1>");
		
		// List 객체 만들기
		List<String> list = executeJDBC();
		
		// HTML 변환
		response.setContentType("text/html; charset=utf-8");
		
		// client에 text 전달
		PrintWriter out = response.getWriter();
		
		// List 출력 방식
		out.print("<ul>");
		
		for (String city : list) {
			out.print("<li>");
			out.print(city);
			out.print("</li>");
		}
		
		out.print("</ul>");

		
		
	}

	private List<String> executeJDBC() {

		List<String> cities = new ArrayList<String>();
		
		String sql = "SELECT DISTINCT City FROM Customers ORDER BY City";

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
			while (rs.next()) {
				String city = rs.getString(1);
				
				cities.add(city);
				
				// System.out.println(city);
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
		return cities;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
