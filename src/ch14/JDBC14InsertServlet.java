package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

import ch14.bean.Customer;

@WebServlet("/JDBC14InsertServlet")
public class JDBC14InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JDBC14InsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/ch14/jdbc14.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactname");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode=  request.getParameter("pcode");
		String country = request.getParameter("country");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setContactName(contactName);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setPostalCode(postalCode);
		customer.setCountry(country);
		
//		executeJDBC(name, contactName, address, city, postalCode, country);
		executeJDBC(customer);
		
		doGet(request, response);
		
	}

	private void executeJDBC(Customer customer) {
		
		// SQL
		String sql = "INSERT INTO Customers "
				+ "(CustomerName, ContactName, Address, City, PostalCode, Country) "
				+ "VALUES "
				+ "(?, ?, ?, ?, ?, ?)" ;
				
		String url = "jdbc:mysql://13.124.234.182/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		
		// SQL ????????? ?????? ?????? ????????? ?????? ?????? ????????? ????????????
		PreparedStatement stmt = null;
		ResultSet rs = null; 

		try {
			// ????????? ?????? (class loading)
			Class.forName("com.mysql.cj.jdbc.Driver");

			// ??????
			con = DriverManager.getConnection(url, user, password);

			// Prepare statement ??????
			stmt = con.prepareStatement(sql);
			
			// ? (parameter)??? ??? ??????
			stmt.setString(1, customer.getName());
			stmt.setString(2, customer.getContactName());
			stmt.setString(3, customer.getAddress());
			stmt.setString(4, customer.getCity());
			stmt.setString(5, customer.getPostalCode());
			stmt.setString(6, customer.getCountry());

			// query ??????, ??????(ResultSet) ??????
			int cnt = stmt.executeUpdate();
			
			if (cnt == 1) {
				System.out.println("????????? ??????????????? ?????????????????????.");
			} else {
				System.out.println("?????? ??????!");
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			// ?????? ??????
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
