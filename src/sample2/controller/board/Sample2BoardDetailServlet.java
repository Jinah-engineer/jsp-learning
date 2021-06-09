package sample2.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Comment;
import sample2.comment.CommentService;
import sample2.dao.BoardDao;

@WebServlet("/sample2/board/detail")
public class Sample2BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// Service Field
	private CommentService commentService;
	
    public Sample2BoardDetailServlet() {
        super();
    }
    
    // Initialization
    @Override
    public void init() throws ServletException {
    	super.init();
    	this.commentService = new CommentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		if (id == null) {
			String path = request.getContextPath() + "/sample2/board/list";
			response.sendRedirect(path);
		} else {
		
		BoardDao dao = new BoardDao();
		BoardDto board = dao.getIdJoin(Integer.parseInt(id));
		
		// Service Logic
		List<Comment> commentList = CommentService.list(Integer.parseInt(id));
		
		// setAttribute
		request.setAttribute("board", board);
		request.setAttribute("comments", commentList);

		String path = "/WEB-INF/sample2/board/detail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
