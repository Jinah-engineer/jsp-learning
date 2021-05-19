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
		<h1>구구단 3단을 출력해보자.</h1>
		<h2>include-directive</h2>
		
		<%
			int dan = 3;
		%>
		
		<%@ include file="include-directive.jsp" %>
	</div>
	
	<div class="container mt-3">
		<h1>구구단 3단을 출력해보자.</h1>
		<h2>jsp:include action tag</h2>
		
		<jsp:include page="include-actionTag.jsp">
			<jsp:param value="3" name="dan"/>
		</jsp:include>
	</div>	
	
	<div class="container mt-3">
		<h1>구구단 4단을 출력해보자.</h1>
		<h2>jsp:include action tag</h2>
		
		<jsp:include page="include-actionTag.jsp">
			<jsp:param value="4" name="dan"/>
		</jsp:include>
	</div>	
</body>
</html>