<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="ch07.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	
		<%
			User user = new User("jinah", 27, "kr");
			request.setAttribute("member", user);
		%>
		
		<h1>유저 정보</h1>
		
		<jsp:include page="request-attribute-sub2.jsp"></jsp:include>
	
	</div>
</body>
</html>