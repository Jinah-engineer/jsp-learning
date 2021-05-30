<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie[] cookies = request.getCookies();

	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name", 
						URLEncoder.encode("JSP Programming", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		name 쿠키의 값을 변경합니다.
	</div>
</body>
</html>