<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	// query string으로 date 입력하기 (name, age parameter)
	response.sendRedirect("26-redirect-parameter2.jsp?name=donald&age=30");
%>