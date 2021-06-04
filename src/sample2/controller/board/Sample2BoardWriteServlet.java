package sample2.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Board;
import sample2.bean.Member;
import sample2.dao.BoardDao;

@WebServlet("/sample2/board/write")
public class Sample2BoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2BoardWriteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/sample2/board/write.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// session 생성하기
		HttpSession session = request.getSession();
		
		// 'userLogined' attribute 가져오기
		Member member = (Member) session.getAttribute("userLogined");
		
		// input element에 입력된 'title' 'body' parameter값 가져오기
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		// Board 객체 생성하기
		Board board = new Board();
		
		// 인스턴스에 가져온 값(params) set 설정하기
		board.setTitle(title);
		board.setBody(body);
		board.setMemberId(member.getId());
		
		// dao 객체 생성하기
		BoardDao dao = new BoardDao();
		
		// dao의 insert(추가입력) 메소드 실행을 boolean 변수에 넣어두기
		boolean ok = dao.insert(board);
		
		if (ok) {
			// 입력이 잘 되었을 때
			String path = request.getContextPath() + "/sample2/board/list";
			response.sendRedirect(path);
		} else {
			// 입력이 잘못되었을 때
			String path = "/WEB-INF/sample2/board/write.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

}
