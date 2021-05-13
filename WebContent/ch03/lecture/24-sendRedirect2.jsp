<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>redirect2.jsp</h1>
	<%--
		redirect1 >> status code : 302 (첫번째 요청)
		redirect2 >> statuc code : 200 (두번째 요청)
	 --%>
</div>
</body>
</html>