package sample2.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// @WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

    public LoginFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		
		// parameter = false? >>> session이 존재하면, 만들지 않아도 된다 
		HttpSession session = req.getSession(false);
		
		if (session != null) {
			// session이 존재하고, 로그인된 상태
			Object obj = session.getAttribute("userLogined");
			
			if (obj == null) {
				// 더 이상 진행할 필요 x 
				String path = req.getContextPath() + "/sample2/member/login";
				
				HttpServletResponse res = (HttpServletResponse) response;
				res.sendRedirect(path);
				
				// 메소드 종료 or 값 반환
				return;
			}
		}
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
