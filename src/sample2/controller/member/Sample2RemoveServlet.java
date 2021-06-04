package sample2.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Member;
import sample2.dao.MemberDao;

@WebServlet("/sample2/member/remove")
public class Sample2RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2RemoveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("userLogined");
		
		MemberDao dao = new MemberDao();
		dao.remove(member.getId());
		
		session.invalidate();
		
		String path = request.getContextPath() + "/sample2/main";
		response.sendRedirect(path);
		
		doGet(request, response);
	}

}
