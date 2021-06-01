package ch14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;
import ch14.dao.CustomersDAO;

@WebServlet("/JDBC18DeleteServlet")
public class JDBC18DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JDBC18DeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		// DAO 객체 생성 (Data Access Object)
		// : DB와 관련된 쿼리를 실행한다. 
		CustomersDAO customersDAO = new CustomersDAO();
		
		
		Customer customer = customersDAO.getCustomer(Integer.parseInt(id));
		request.setAttribute("customer", customer);
		
		String path = "/ch14/jdbc18.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		CustomersDAO customersDAO = new CustomersDAO();
		
		customersDAO.deleteCustomer(Integer.parseInt(id));
		
		doGet(request, response);
	}

}
