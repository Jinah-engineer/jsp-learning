<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
	<%-- get/setAttribute를 통한 attribute 설정 및 parameter 전달 --%>
	<%
		String[] str = {"java", "jsp", "spring", "servlet", "css"};
		request.setAttribute("list", str);
	%>
	
	<jsp:forward page="forward-attribute2.jsp"></jsp:forward>
	
</div>
</body>
</html>