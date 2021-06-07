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

@WebServlet("/sample2/member/info")
public class Sample2InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sample2InfoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// session 생성
		HttpSession session = request.getSession();

		Member member = (Member) session.getAttribute("userLogined");

		if (member != null) {

			MemberDao dao = new MemberDao();
			Member mem = dao.getMember(member.getId()); 

			request.setAttribute("member", mem);

			String path = "/WEB-INF/sample2/member/info.jsp";
			request.getRequestDispatcher(path).forward(request, response);

		} else {
			String path = "/sample2/member/main";
			response.sendRedirect(path);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
