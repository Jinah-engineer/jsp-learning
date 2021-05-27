package ch19.lecture;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/filter04")
public class Filter04 implements Filter {

    public Filter04() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("filter 04 is working :-)");
		
		String name = request.getParameter("name");
		
		if (name != null) {
			chain.doFilter(request, response);
		} else {
			response.getWriter().print("have no name");
		}
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
