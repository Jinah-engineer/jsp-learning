package ch17.lecture;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/Servlet02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet02 File's doGet method is working");
		
		// JSP 8개 기본 객체 - request, response, session, application, page, config, out, pageContext
		
		/* Servlet에서 기본 객체 얻는 방법 */
		
		// session
		HttpSession session = request.getSession();
		
		// application
		ServletContext application = request.getServletContext();
		
		// config
		ServletConfig config = getServletConfig();
		
		// out
		PrintWriter out = response.getWriter();
		
		// JSP가 없던 시절 이렇게 일일이 HTML코드를 작성했다..
		out.print("<h1>");
		out.print("hello servlet");
		out.print("</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
