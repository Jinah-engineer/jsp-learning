<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scriptlet 부가설명</title>
</head>
<body>
<%
	for (int i = 0; i < 5; i++) {
%>

<%--
		out.print(i);
		out.print("<br>");
--%>
<!-- 위의 주석 코드와 동일한 결과를 출력하는 expression -->
<%= i %>
<%= "<br>" %>

<%
	}
%>
</body>
</html>