<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Map<String, String> map = new HashMap<>();
	map.put("java", "spring");
	map.put("css", "bootstrap");
	map.put("js", "jquery");
	map.put("python", "django");
	map.put("h-t-m-l", "html");
	map.put("hello world", "h1");
	//map.put("jquery", "abc");
	
	pageContext.setAttribute("map", map);
	pageContext.setAttribute("python", "js");
	pageContext.setAttribute("js", "python");
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
		java : ${map.java } <br>
		css : ${map.css } <br>
		js : ${map["js"] } <br>
		js : ${map[js] } <br>
		python : ${map[python] } <br>
		
		<hr>
		<%-- Syntax Error : 중간에 '특수문자'를 삽입하거나, 공백이 있거나--%>
		<%-- 연산할 수 없는 상태 --> 0을 출력한다. --%>
		h-t-m-l : ${map.h-t-m-l } <br>
		<%--hello world : ${map.hello world } --%>
		
		h-t-m-l : ${map["h-t-m-l"] } <br>
		hello world : ${map["hello world"] } <br>
	</div>
</body>
</html>