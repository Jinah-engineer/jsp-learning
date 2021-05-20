<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Forwarding Date Info</title>
</head>
<body>
<div class="container">
	
	<%-- jsp:param 태그를 이용한 parameter 전달 --%>
	
	<jsp:forward page="forward-parameter2.jsp">
		<jsp:param value="jinah" name="name"/>
		<jsp:param value="27" name="age"/>
	</jsp:forward>
	
</div>
</body>
</html>