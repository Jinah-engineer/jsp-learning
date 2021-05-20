<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="ch07.Page" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Request Attribute</title>
</head>
<body>
<div class="container">
	
	<%
		Page p = new Page(3, 10);
		request.setAttribute("page", p);
		
		Object o = request.getAttribute("page");
		
		Page p2 = (Page) o;
		
		int s = p2.getStart();
		int e = p2.getEnd();
		
		System.out.println(s);
		System.out.println(e);
	%>
	
	<div class="container">
		<jsp:include page="request-attribute-sub1.jsp"></jsp:include>
	</div>
</div>
</body>
</html>