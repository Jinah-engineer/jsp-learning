package ch19.lecture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/filter05")
public class Filter05Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Filter05Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String greeting = name + "님 반갑습니다 :-)";
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().print(greeting);
	}

}
