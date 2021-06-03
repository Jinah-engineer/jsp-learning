package sample2.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Member;
import sample2.dao.MemberDao;

@WebServlet("/sample2/list")
public class Sample2ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2ListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		
		// Database에서 회원 List를 얻어서 
		List<Member> list = dao.list();
		
		// request attribute에 붙여서
		request.setAttribute("members", list);
		
		// forwarding
		String path = "/WEB-INF/sample2/list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
