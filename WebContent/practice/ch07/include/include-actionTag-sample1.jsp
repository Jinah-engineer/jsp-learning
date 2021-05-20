<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Bootstrap Pagination 활용</title>
</head>
<body>
	<div class="container">
	
		<h1>Main Content</h1>
		
		<jsp:include page="include-actionTag-sample2.jsp">
			<jsp:param value="5" name="start"/>
			<jsp:param value="10" name="end"/>
		</jsp:include>
	
	</div>
</body>
</html>