package sample2.controller.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.dao.BoardDao;

@WebServlet("/sample2/board/remove")
public class Sample2BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Sample2BoardRemoveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("boardId");
		
		BoardDao dao = new BoardDao();
		boolean removeOk = dao.remove(Integer.parseInt(id));
		
		if (removeOk) {
			request.getSession().setAttribute("message", "게시물 삭제 완료");
			
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
			
		} else {
			request.getSession().setAttribute("message", "게시물 삭제 실패");
			
			String path = request.getContextPath() + "/sample2/board/detail";
			response.sendRedirect(path);
		}
		
	}

}
