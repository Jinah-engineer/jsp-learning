<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" class="ch08.Book">
	<jsp:setProperty name="book1" property="title" value="java" />
	<jsp:setProperty name="book1" property="writer" value="Kim" />
</jsp:useBean>

<%
	pageContext.setAttribute("title", "writer");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>EL - JavaBean</title>
</head>
<body>
	<div class="container">
		
		book : ${book1 } <br>
		title : ${book1.title } <br>
		writer : ${book1.writer } <br>
		
		<hr>
		
		title : ${book1["title"] } <br>
		writer : ${book1["writer"] } <br>
		
		<hr>
		
		writer : ${book1[title]} 
		
		
	</div>
</body>
</html>