<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>pageContext 기본 객체</title>
</head>
<body>
	<div class="container">
		
		<%
			// request 객체 얻기
			HttpServletRequest httpRequest = (HttpServletRequest) pageContext.getRequest();
		%>
		
		request 기본 객체와 pageContext.getRequest()의 동일 여부 :
		
		<%= request == httpRequest %>	
		
		<br>
		
		pageContext.getOut() 메소드를 사용한 데이터 출력 : 
		
		<% pageContext.getOut().println("안녕하세요"); %>
	</div>
</body>
</html>