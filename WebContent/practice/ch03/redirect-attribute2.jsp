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
		<h1>여기는 redirect-attribute2 JSP 파일입니다.</h1>
		<%
			Calendar date = (Calendar) request.getAttribute("date");
			out.print(date);
		%>
	</div>
</body>
</html>