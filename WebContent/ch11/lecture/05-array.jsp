<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String[] arr1 = {"html", "css", "js", "jquery", "bootstrap"};
	pageContext.setAttribute("list", arr1);
	pageContext.setAttribute("i", 3);
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
		0번 인덱스 : ${list[0] } <br>
		1번 인덱스 : ${list[1] } <br>
		2번 인덱스 : ${list["2"] } <br>
		3번 인덱스 : ${list[i] } <br>
		<%-- 없는 인덱스는 출력하지 않는다. --%>
		5번 인덱스 : ${list[5] }
		
	</div>
</body>
</html>