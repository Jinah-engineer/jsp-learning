<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	Cookie cookie = new Cookie("my-cookie", "my-value");
	cookie.setMaxAge(0); // parameter를 0으로 넣으면 쿠키가 지워진다.
	// response의 setCookieHeader에 넣어줘야 한다.
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>쿠키 삭제</h1>
</div>
</body>
</html>