<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	// myReq라는 name으로 page 영역에 request 객체 넣어두기
	// get + blahblah
	// blahblah를 property로 사용하기
	pageContext.setAttribute("myReq", request);
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
		expression : <%= request.getContextPath() %>
		<br>
		el : ${myReq.contextPath }
		
		<%-- 위 두개의 코드는 동일한 출력 결과를 갖는다. --%>
		
		<br>
		method : ${myReq.method }
		
		<br>
		requestedSessionId : ${myReq.requestedSessionId }
		
	</div>
</body>
</html>