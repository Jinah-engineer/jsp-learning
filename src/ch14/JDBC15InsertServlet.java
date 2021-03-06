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

@WebServlet("/JDBC15InsertServlet")
public class JDBC15InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JDBC15InsertServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/ch14/jdbc15.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String photo = request.getParameter("photo");

		Employee employee = new Employee();

		employee.setLastName(lastName);
		employee.setFirstName(firstName);
		employee.setPhoto(photo);

		executeJDBC(employee);

		doGet(request, response);
	}


	private void executeJDBC(Employee employee) {

		// SQL
		String sql = "INSERT INTO Employees "
				+ "(LastName, FirstName, Photo) "
				+ "VALUES "
				+ "(?, ?, ?)" ;

		String url = "jdbc:mysql://13.124.234.182/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;

		// SQL 쿼리의 틀을 미리 생성해 놓고 값을 나중에 지정한다
		PreparedStatement stmt = null;
		ResultSet rs = null; 

		try {
			// 클래스 로딩 (class loading)
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// Prepare statement 생성
			stmt = con.prepareStatement(sql);

			// ? (parameter)에 값 할당
			stmt.setString(1, employee.getLastName());
			stmt.setString(2, employee.getFirstName());
			stmt.setString(3, employee.getPhoto());
			
			// query 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("입력이 성공적으로 완료되었습니다.");
			} else {
				System.out.println("입력 실패!");
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
}
