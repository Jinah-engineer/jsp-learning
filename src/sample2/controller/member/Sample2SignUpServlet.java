package sample2.controller.member;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Member;
import sample2.dao.MemberDao;

@WebServlet("/sample2/member/signup")
public class Sample2SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2SignUpServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/sample2/member/signup.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request parameter 수집 
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String birthDate = request.getParameter("birth");
		
		// Member Bean 완성
		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setBirth(java.sql.Date.valueOf(birthDate));
		
		// DAO INSERT Method call
		MemberDao dao = new MemberDao();
		boolean ok = dao.insert(member);
		
		
		// Forward or Redirect
		if (ok) {
			String path = request.getContextPath() + "/sample2/member/list";
			response.sendRedirect(path);
		} else {
			request.setAttribute("message", "가입 실패");
			
			String path = "/WEB-INF/sample2/member/signup.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
		
	}

}
