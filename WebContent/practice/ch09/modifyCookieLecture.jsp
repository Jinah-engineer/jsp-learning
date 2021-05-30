<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie[] cookies = request.getCookies();

	for (Cookie c : cookies) {
		if(c.getName().equals("jinah-cookie")) {
			Cookie cookie = new Cookie("jinah-cookie", "jinah-is-amy");
			response.addCookie(cookie);
		}
	}
	
	Cookie cookie = new Cookie("jinah-cookie", "jinah-is-amy");
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>modify cookie!</title>
</head>
<body>
	<div class="container">
		<h1>쿠키 값을 변경하기</h1>
	</div>
</body>
</html>