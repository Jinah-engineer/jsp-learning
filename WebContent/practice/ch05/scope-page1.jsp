<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>여기는 scope-page1 JSP 파일입니다.</h1>
		
		<%
			pageContext.setAttribute("page-attr3", "page-value3"); // 서로 다른 page
			request.setAttribute("req-attr3", "req-value3"); // 서로 동일한 request 객체
		%>
		
		<jsp:include page="scope-page2.jsp" />
		
		<hr>
		
		<%= pageContext.getAttribute("page-attr3") %>
	</div>
</body>
</html>