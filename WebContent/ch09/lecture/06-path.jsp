<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie cookie = new Cookie("my-cookie9", "my-value9");
	cookie.setPath(request.getContextPath()); // context root (= jsp)) 상위 경로 결정해주기 
	response.addCookie(cookie); // 쿠키가 위 상위 경로의 하위 경로로 연결되도록 한다.
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>cookie path</h1>
</div>
</body>
</html>