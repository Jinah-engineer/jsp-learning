package sample2.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Member;
import sample2.dao.BoardDao;
import sample2.dao.MemberDao;
import sample2.service.member.MemberRemoveService;

@WebServlet("/sample2/member/remove")
public class Sample2RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// service를 field에서 선언
	private MemberRemoveService service = null;
       
    public Sample2RemoveServlet() {
        super();
    }
    
    // init method - service는 application에서 1개만 만들면 된다 
    @Override
    public void init() throws ServletException {
    	super.init();
    	this.service = new MemberRemoveService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("userLogined");
		
		// service class에서 처리할 로직 - service를 초반에 사용하기 위해서 init 메소드에 overriding 하기
		this.service.remove(member.getId());
		
		session.invalidate();
		
		String path = request.getContextPath() + "/sample2/main";
		response.sendRedirect(path);
		
		doGet(request, response);
	}

}
