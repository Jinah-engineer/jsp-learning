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
		<h1>param 기본 객체</h1>		
		${param }
		<br>
		${param.name }
		<br>
		${param.age }
		<br>
		
		<hr>
		
		<%-- 만약 같은 parameter에 다른 값을 query string으로 넣는다면 --%>
		<%
			String[] names = request.getParameterValues("name");
		%>
		<%= names[0] %>
		<br>
		<%= names[1] %>
		
		<hr>
		${paramValues.name[0] }
		${paramValues.name[1] }
	</div>
</body>
</html>