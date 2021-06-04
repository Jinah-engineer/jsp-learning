package sample2.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.dao.MemberDao;

@WebServlet("/sample2/member/checkdup")
public class Sample2CheckedUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2CheckedUpServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		MemberDao dao = new MemberDao();
		
		response.setContentType("text/plain; charset=utf-8");
		if (dao.existsID(id)) {
			response.getWriter().append("not ok");
		} else {
			response.getWriter().append("ok");
		}
		
		
	}

}
