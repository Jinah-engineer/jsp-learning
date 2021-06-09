package sample2.controller.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Comment;
import sample2.comment.CommentService;

@WebServlet("/sample2/comment/modify")
public class Sample2CommentModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Service Field
	private CommentService service;
	
    public Sample2CommentModifyServlet() {
        super();
    }
    
    // Initialization
    @Override
    public void init() throws ServletException {
    	super.init();
    	
    	service = new CommentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idStr = request.getParameter("commentId");
		String commentStr = request.getParameter("comment");
		String boardId = request.getParameter("boardId");
		
		int id = Integer.parseInt(idStr);
		
		Comment comment = new Comment();
		
		comment.setId(id);
		comment.setComment(commentStr);
		
		// Service Logic
		service.modify(comment);
		
		String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
	}

}
