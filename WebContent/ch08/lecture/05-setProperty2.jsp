<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<jsp:useBean id="book" class="ch08.Book" scope="page">
	<jsp:setProperty name="book" property="title" param="title" />
	<jsp:setProperty name="book" property="writer" param="name" />
	<jsp:setProperty name="book" property="price" param="price" />
</jsp:useBean>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	제목 : <jsp:getProperty property="title" name="book"/> <br>
	저자 : <jsp:getProperty property="writer" name="book"/> <br>
	가격 : <jsp:getProperty property="price" name="book" />
</div>
</body>
</html>