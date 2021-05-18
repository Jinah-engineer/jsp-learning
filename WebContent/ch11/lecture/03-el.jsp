<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	// 동일한 name의 다른 값들
	pageContext.setAttribute("attr1", "pageVal1");
	request.setAttribute("attr1", "reqVal1");
	session.setAttribute("attr1", "sesVal1");
	application.setAttribute("attr1", "appVal1");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%-- pageVal1부터 출력하게 된다. (접근 우선순위에 따라서) --%>
		${attr1 } 
	</div>
</body>
</html>