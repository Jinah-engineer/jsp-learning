<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		
		<h1>Session 2</h1>
		
		<%
			Object o = session.getAttribute("jinah");
			String s = (String) o;
			
			Object a = request.getAttribute("eunwoo");
			String b = (String) a;
			
		%>
		
		jinah : <%= s %> <br>
		eunwoo : <%= b %>
		
	</div>
</body>
</html>