package sample2.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Board;
import sample2.bean.BoardDto;
import sample2.dao.BoardDao;

@WebServlet("/sample2/board/list")
public class Sample2BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sample2BoardListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardDao dao = new BoardDao();
		
		// List<BoardDto> boardlist = dao.listJoin();
		List<BoardDto> boardList = dao.listJoinGroup();
		int total = dao.countAll();
		
		request.setAttribute("boards", boardList);
		request.setAttribute("totalNum", total);
		
		String path = "/WEB-INF/sample2/board/list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
