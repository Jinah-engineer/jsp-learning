package ch14;

import java.io.IOException;
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

import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC12Servlet
 */
@WebServlet("/JDBC12Servlet")
public class JDBC12Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JDBC12Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Employee> list = executeJDBC();
		
		request.setAttribute("employees", list);
		
		String path = "/ch14/jdbc12.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	
	private List<Employee> executeJDBC() {

		// Return 할 객체
		List<Employee> list = new ArrayList<Employee>();

		// SQL
		String sql = "SELECT EmployeeID, LastName, FirstName, Notes " + 
				"FROM Employees ";

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
				
				Employee employee  = new Employee();
				
				employee.setid(rs.getInt(1));
				employee.setLastName(rs.getString(2));
				employee.setFirstName(rs.getString(3));
				employee.setNotes(rs.getString(4));
				
				list.add(employee);
				
				
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
		return list;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
