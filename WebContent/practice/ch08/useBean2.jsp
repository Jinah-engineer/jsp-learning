<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Book book = new Book();
	book.setTitle("자바책");
	book.setWriter("신용권");
	
	request.setAttribute("book1", book);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%
			Book book1 = (Book) request.getAttribute("book1");
		%>
		
		제목 : <%= book1.getTitle() %> <br>
		저자 : <%= book1.getWriter() %> <br>
		
	</div>
</body>
</html>