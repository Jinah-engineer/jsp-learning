<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	request.setAttribute("name", "박진아");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>ELObject</title>
</head>
<body>
	<div class="container">
		요청 URI : ${pageContext.request.requestURI } <br>
		request의 name 속성 : ${requestScope.name } <br>
		code 파라미터 : ${param.code }
	</div>
</body>
</html>