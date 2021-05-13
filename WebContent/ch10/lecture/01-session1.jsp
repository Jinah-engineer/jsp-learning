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
	<%--
	session: 여러 request가 공유하는 객체
	 --%>
	 
	 <h1>session 1</h1>
	 
	 <%
	 	//HttpServletRequest r = new Request();
	 	//HttpSession session = s;
	 	request.setAttribute("reqattr1", "reqval1");
	 	session.setAttribute("myattr1", "myval1");
	 	
	 %>
</div>
</body>
</html>