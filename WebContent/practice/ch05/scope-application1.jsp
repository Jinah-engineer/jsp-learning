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
		<h1>Application에 attribute 추가</h1>
		<%
			request.setAttribute("reqAttr1", "reqVal1");
			session.setAttribute("session-attr1", "session-val1");
			application.setAttribute("app-attr1", "app-value1");
		 %>
	</div>
</body>           
</html>