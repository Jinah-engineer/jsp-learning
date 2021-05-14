<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	//session.setAttribute("a", "b");
	HttpSession session = request.getSession(); // 자동으로 생성되지 않는 session은 request로 부터 생성이 가능하다. 
	session.setAttribute("a", "b");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
</div>
</body>
</html>