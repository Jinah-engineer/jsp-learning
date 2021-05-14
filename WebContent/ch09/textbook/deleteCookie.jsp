<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("my-cookie")) {
				Cookie cookie = new Cookie("my-cookie", "");
				cookie.setPath("/jsp/ch09");
				cookie.setMaxAge(0); // 쿠키 삭제하기
				response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키 삭제</title>
</head>
<body>
<div class="container">
	name 쿠키를 삭제합니다.
</div>
</body>
</html>