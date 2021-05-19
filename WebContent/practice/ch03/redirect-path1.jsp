<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	response.sendRedirect(request.getContextPath() + "/practice/ch03/redirect-path2.jsp");
%>
