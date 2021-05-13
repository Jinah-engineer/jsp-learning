<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<% 
	response.sendRedirect("24-sendRedirect2.jsp"); 
	// 302 status code와 함께 location이라는 header와 같이 묶인다.
	// 처음 요청이 왔을 때 >> response '302' with location header
	// 그리고 다시 location header 위치로 request를 보낸다.
%> 