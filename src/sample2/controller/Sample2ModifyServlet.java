package sample2.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Member;
import sample2.dao.MemberDao;

@WebServlet("/sample2/modify")
public class Sample2ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2ModifyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		
		Member member = new Member();
		
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setBirth(Date.valueOf(birth));
		
		MemberDao dao = new MemberDao();
		
		boolean ok = dao.update(member);
		
		String message = "";
		
		if (ok) {
			message = "변경 완료";
		} else {
			message = "변경 실패";
		}
		
		request.setAttribute("message", message);
		request.setAttribute("member", member);
		
		String path = "/WEB-INF/sample2/info.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
