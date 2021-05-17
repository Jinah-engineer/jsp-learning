<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%--
	Book book = new Book();

	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String priceStr = request.getParameter("price");
	
	book.setTitle(title);
	book.setWriter(name);
	book.setPrice(Integer.parseInt(priceStr);
	
	pageContext.setAttribute("book", book);
--%>

<jsp:useBean id="book" class="ch08.Book" scope="page">
	<jsp:setProperty name="book" property="title" param="title" />
	<jsp:setProperty name="book" property="writer" param="name" />
	<jsp:setProperty name="book" property="price" param="price" />
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="05-setProperty2.jsp" method="post">
		제목 : <input type="text" name="title" /> <br>
		저자 : <input type="text" name="name" /> <br>
		가격 : <input type="number" name="price" /> <br>
		<input type="submit" value="등록" />
		
		
	</form>
</div>
</body>
</html>