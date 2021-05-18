<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	response.addCookie(new Cookie("my-cookie", "my-value"));
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
		Connection : ${header.connection } <br>
		Cache-Control : ${header["cache-control"] } <br>
		cookie : ${header.cookie }
		
		
	</div>
</body>
</html>