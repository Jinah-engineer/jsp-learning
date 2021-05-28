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

import ch14.bean.Customer;
import ch14.bean.Employee;

@WebServlet("/JDBC11Servlet")
public class JDBC11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public JDBC11Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eid = request.getParameter("eid");
		
		Employee employee = executeJDBC(eid);
		
		request.setAttribute("employee", employee);
		
		String path = "/ch14/jdbc11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	private Employee executeJDBC(String eid) {

		// Return 할 객체
		Employee employee = null;

		// SQL
		String sql = "SELECT EmployeeID, LastName, FirstName " + 
				"FROM Employees WHERE EmployeeID = " + eid;

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
				String lastName = rs.getNString(2);
				String firstName = rs.getString(3);
				
				
				// Customer 객체 생성
				employee  = new Employee();
				
				employee.setid(id);
				employee.setLastName(lastName);
				employee.setFirstName(firstName);
				
				
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
		return employee;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
