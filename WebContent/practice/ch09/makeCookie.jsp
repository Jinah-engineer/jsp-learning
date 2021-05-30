<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("박진아쿠키", "utf-8"));
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>MAKE COOKIE</title>
</head>
<body>
	<div class="container">
		
		<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
		
	</div>
</body>
</html>