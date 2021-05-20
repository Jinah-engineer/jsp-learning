<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	for (int i = 1; i <= 9; i++) {
		out.print(dan + " x " + i + " = " + (i * dan));
		out.print("<br>");
	}
%>
