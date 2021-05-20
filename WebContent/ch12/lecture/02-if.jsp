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

	<%-- if 태그는 test라는 attribute를 가지고 있다. --%>
	<%-- test 속성이 true일 대만 출력이 가능하다.  --%>
	
	<c:if test="true">
		<h1>test가 true일 때만 출력</h1>
	</c:if>
	<c:if test="false">
		<h1>test가 false일 때는 출력 불가</h1>
	</c:if>
	
	<%-- scriptlet을 사용해서 복잡한 코드를 구현할 필요가 없어진다. --%>
	<% 
		if (true) {
	%>	
	 	<h1>scriptlet 사용</h1>
	<%
		}
	%>
</div>
</body>
</html>