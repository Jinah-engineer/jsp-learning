<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" scope="page" class="ch08.Book" />
<jsp:useBean id="book2" scope="request" class="ch08.Book" />
<jsp:useBean id="book3" scope="session" class="ch08.Book" />
<jsp:useBean id="book4" scope="application" class="ch08.Book" />



<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h3>scope3.jsp</h3>
 	책 1 제목 : <jsp:getProperty property="title" name="book1" /> <br>
 	책 2 제목 : <jsp:getProperty property="title" name="book2" /> <br>
 	책 3 제목 : <jsp:getProperty property="title" name="book3" /> <br>
 	책 4 제목 : <jsp:getProperty property="title" name="book4" />
 	
</div>


</body>
</html>