<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		
		<%
			Calendar cal = (Calendar) request.getAttribute("time");
		%>
		
		현재 시간은 <%= cal.get(Calendar.HOUR) %> 시
					<%= cal.get(Calendar.MINUTE) %> 분
					<%= cal.get(Calendar.SECOND) %> 초 입니다.
		
	</div>
</body>
</html>