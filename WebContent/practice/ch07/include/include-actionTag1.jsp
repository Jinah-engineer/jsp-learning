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
		<h1>이 파일은 actionTag 1번 파일입니다.</h1>
		
		<jsp:include page="include-actionTag2.jsp" />
		
		<h1>이 파일은 actionTag 1번 파일입니다.</h1>
	</div>
</body>
</html>