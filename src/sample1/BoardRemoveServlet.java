package sample1;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardRemoveServlet
 */
@WebServlet("/sample1/remove")
public class BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		List<Board> boards = (List<Board>) application.getAttribute("boards");
		
		String[] removeArr = request.getParameterValues("remove");
		int[] removeInts = new int[removeArr.length];
		
		for (int i = 0; i < removeArr.length; i++) {
			removeInts[i] = Integer.parseInt(removeArr[i]);
		}
		
		Arrays.sort(removeInts);
		
		int cnt = 0;
		for (int i = 0; i < removeInts.length; i++) {
			boards.remove(i - cnt);
			cnt++;
		}
		
		response.sendRedirect(request.getContextPath() + "/sample1/list");
	}

}























