<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie[] cookies = request.getCookies();
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>쿠키의 값을 읽어오기</title>
</head>
<body>
	<div class="container">
	
		<h3>Cookies Size : <%= cookies.length %></h3>
		<%
			// 앞의 쿠키는 뭘 뜻하지?
			// JSESSION ID는 뭐였지..
			for (Cookie cookie : cookies) {
				out.print("<p>");
				out.print(cookie.getName());
				out.print(" : ");
				out.print(cookie.getValue());
				out.print("</p>");
			}
		%>
		
	</div>
</body>
</html>