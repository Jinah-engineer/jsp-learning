<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%-- attribute를 통해 tag file에 값 전달하기 --%>
	<%
		// page 영역에 있는 pageAttr1을 tag file을 통해 출력할 수 없다.
		// 서로 다른 page이기 때문
		pageContext.setAttribute("pageAttr1", "pageVal1");
		
		request.setAttribute("startPage", "10");
		request.setAttribute("endPage", "19");
	%>
	
	<my:pagination01 />
</div>
</body>
</html>