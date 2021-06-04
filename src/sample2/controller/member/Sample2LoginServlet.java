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

@WebServlet("/sample2/member/login")
public class Sample2LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/sample2/member/login.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao dao = new MemberDao();
		
		// getMember를 통해 return한 'member'를 변수로 선언 
		Member member = dao.getMember(id);
		
		if (member != null && member.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("userLogined", member);
			
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
			
		} else {
			String path = "/WEB-INF/sample2/member/login.jsp";
			request.setAttribute("message", "아이디나 패스워드가 일치하지 않습니다.");
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

}
