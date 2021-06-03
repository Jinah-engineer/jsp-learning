<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Main JSP File</title>
</head>
<body>
	<div class="container">
		
		<s2:navbar />
		
		<h1>Welcome!</h1>
		<a href="<%= request.getContextPath() %>/sample2/signup">회원가입 링크</a>
		
	</div>
</body>
</html>