<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	// response.sendRedirect("25-redirect-path2.jsp"); // relative path
	response.sendRedirect(request.getContextPath() + "/ch03/lecture/25-redirect-path2.jsp"); // absolute path
%>

