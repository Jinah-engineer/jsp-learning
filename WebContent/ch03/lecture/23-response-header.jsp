<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	response.setHeader("my-header", "my-value"); // header 생성
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>header를 생성해보기</title>
</head>
<body>
<div class="container">
	<h1>response header</h1>
</div>
</body>
</html>