<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%-- page --%>
<jsp:useBean id="book1" scope="page" class="ch08.Book" />
<jsp:setProperty name="book1" property="title" value="Spring" />

<%-- request --%>
<jsp:useBean id="book2" scope="request" class="ch08.Book" />
<jsp:setProperty name="book2" property="title" value="WEB" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Scope1</title>
</head>
<body>
	<div class="container">
		
		책 1 제목 : <jsp:getProperty property="title" name="book1" /> <br>
		책 2 제목 : <jsp:getProperty property="title" name="book2" />
		
	</div>
	
	<jsp:include page="scope2.jsp" />
</body>
</html>