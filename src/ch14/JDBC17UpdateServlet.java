package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;
import ch14.bean.Employee;

@WebServlet("/JDBC17UpdateServlet")
public class JDBC17UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JDBC17UpdateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		Employee employee = getEmployee(Integer.parseInt(id));

		request.setAttribute("employee", employee);

		String path = "/ch14/jdbc17.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	private Employee getEmployee(int id) {

		Employee employee = null; // 리턴할 객체

		String sql = "SELECT EmployeeID, "
				+ "          LastName, "
				+ "          FirstName, "
				+ "          Notes "
				+ "   FROM Employees "
				+ "   WHERE EmployeeID = ?";

		String url = "jdbc:mysql://13.125.118.27/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);

			// ? (파라미터)에 값 할당
			stmt.setInt(1, id);

			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery();

			if (rs.next()) {

				employee = new Employee();

				employee.setid(id);
				employee.setLastName(rs.getString(2));
				employee.setFirstName(rs.getString(3));
				employee.setNotes(rs.getString(4));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return employee;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		// request parameter 수집
		String id = request.getParameter("id");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String notes = request.getParameter("notes");

		// Employee 객체 생성

		Employee employee = new Employee();
		employee.setid(Integer.parseInt(id));
		employee.setLastName(lastName);
		employee.setFirstName(firstName);
		employee.setNotes(notes);

		// updateEmployee(employee) method

		updateEmployee(employee);

		doGet(request, response);
	}
	
	private void updateEmployee(Employee employee) {

		String sql = " UPDATE Employees "
				+ "    	   SET "
				+ "        LastName = ?, "
				+ "        FirstName = ?, "
				+ "        Notes = ? "
				+ "    WHERE EmployeeID = ? ";

		String url = "jdbc:mysql://13.124.234.182/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);

			// ? (파라미터)에 값 할당
			stmt.setString(1, employee.getLastName());
			stmt.setString(2, employee.getFirstName());
			stmt.setString(3, employee.getNotes());
			stmt.setInt(4, employee.getid());

			// 쿼리 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
