<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- sendRedirect에 attribute를 설정해서 넘겨주기 --%>
<%
	Calendar cal = Calendar.getInstance();

	request.setAttribute("date", cal);
	response.sendRedirect("redirect-attribute2.jsp");
%>