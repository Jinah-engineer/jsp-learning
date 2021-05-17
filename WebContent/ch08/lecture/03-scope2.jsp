<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" scope="page" class="ch08.Book"></jsp:useBean>
<jsp:useBean id="book2" scope="request" class="ch08.Book"></jsp:useBean>

<div class="container mt-5">
	<h3>scope2.jsp</h3>
	책 1 제목 : <jsp:getProperty property="title" name="book1"/> <br>
	책 2 제목 : <jsp:getProperty property="title" name="book2"/>
</div>

