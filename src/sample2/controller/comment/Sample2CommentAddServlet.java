package sample2.controller.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Comment;
import sample2.service.comment.CommentService;

@WebServlet("/sample2/comment/add")
public class Sample2CommentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	// Service Field
	private CommentService service;
	
    public Sample2CommentAddServlet() {
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
		
		// parameter 수집
		String comment = request.getParameter("comment");
		String memberId = request.getParameter("memberId");
		String boardId = request.getParameter("boardId");
		
		// Bean 생성 + Property 세팅
		Comment commentBean = new Comment();
		
		commentBean.setComment(comment);
		commentBean.setMemberId(memberId);
		commentBean.setBoardId(Integer.parseInt(boardId));
		
		// Service Logic
		service.add(commentBean);
		
		
		// Forwarding or Redirecting to View
		String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
	}

}
