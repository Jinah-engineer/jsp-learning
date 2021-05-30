<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" scope="page" class="ch08.Book" />
<jsp:useBean id="book2" scope="request" class="ch08.Book" />

<div class="container mt-5">
	
	<h2>Scope2 JSP File</h2>
	
	책 1 제목 : <jsp:getProperty property="title" name="book1" /><br>
	책 2 제목 : <jsp:getProperty property="title" name="book2"/>
	
</div>

