<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>date와 함께 Forwarding하기</title>
</head>
<body>
<div class="container">
	
	<jsp:forward page="10-forward-parameter-b.jsp">
		<jsp:param value="b" name="code" />
		<jsp:param value="30" name="age" />
	</jsp:forward>	
</div>
</body>
</html>