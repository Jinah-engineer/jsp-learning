package sample2.controller.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Member;
import sample2.dao.BoardDao;

@WebServlet("/sample2/board/modify")
public class Sample2BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2BoardModifyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request parameter 수집
		String boardId = request.getParameter("boardId");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		// DB에서 게시물 조회
		BoardDao dao = new BoardDao();
		BoardDto board = dao.getIdJoin(Integer.parseInt(boardId));
		
		// 로그인 된 유저 정보
		Member member = (Member) request.getSession().getAttribute("userLogined");
		
		// 로그인 유저와 게시물 작성자가 같은 지
		if (board.getMemberId().equals(member.getId())) {
			// 같으면 수정하고
			BoardDto newBoard = new BoardDto();
			
			newBoard.setBoardId(Integer.parseInt(boardId));
			newBoard.setTitle(title);
			newBoard.setBody(body);
			
			boolean ok = dao.modify(newBoard);
			
			// 메세지 남기기
			if (ok) {
				request.getSession().setAttribute("message", "수정되었습니다");
			} else {
				request.getSession().setAttribute("message", "수정 시 오류 발생함");
			}
			
		} else {
			// 메세지를 남기고
			request.getSession().setAttribute("message", "작성자가 아닙니다");
		}
		
		String path = request.getContextPath() 
				+ "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
		
	}

}
