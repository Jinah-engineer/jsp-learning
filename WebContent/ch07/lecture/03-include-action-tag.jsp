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
		<h1>03 include 파일</h1>
		
		<jsp:include page="04-include-action-tag.jsp"></jsp:include>
		
		<h1>03 include 파일</h1>
	</div>
</body>
</html>