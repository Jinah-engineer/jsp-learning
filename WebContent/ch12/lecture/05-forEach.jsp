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

	<h1>forEach Tag</h1>	
	
	<c:forEach begin="1" end="3">
		<h3>반복해서 실행</h3>
	</c:forEach>	

	<hr>
	
	<%-- 'i'는 page scope에 있는 attribute로 저장이 된다. --%>
	<c:forEach var="i" begin="1" end="3">
		<h3>page scope에 있는 attribute 'i' ${i }</h3>
	</c:forEach>
		
	<hr>
	
	<%-- 'step'의 default value = 1  --%>
	<%-- 몇번을 건너 뛸 것인지 결정 --%>
	<c:forEach var="i" begin="1" end="10" step="2">
		<h3>step을 통해 2씩 더해서 건너뛰기</h3>
	</c:forEach>
	
</div>
</body>
</html>