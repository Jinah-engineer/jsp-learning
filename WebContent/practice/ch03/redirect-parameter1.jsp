<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	response.sendRedirect("redirect-parameter2.jsp?name=jinah&age=27");
%>