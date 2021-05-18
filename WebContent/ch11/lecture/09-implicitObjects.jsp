<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
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
		<h1>EL의 기본 객체</h1>
		<h3>11개의 객체 : pageContext + 10개의 Map 객체</h3>
		<ul>
			<li>pageContext : JSP의 page 객체와 동일하다</li>
			<li>pageScope : pageContext 기본 객체에 저장된 속성의 속성 + 값 매핑을 저장한 Map 객체</li>
			<li>requestScope</li>
			<li>sessionScope</li>
			<li>applicationScope</li>
			<li>param</li>
			<li>paramValues : (String, String[])</li>
			<li>header</li>
			<li>headerValues</li>
			<li>cookie</li>
			<li>initParam</li>
		</ul>
	</div>
</body>
</html>